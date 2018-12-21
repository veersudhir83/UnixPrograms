#!/bin/bash +x 
buildsToKeep=30 
 
echo "Builds to Keep: "$buildsToKeep 
#buildsToKeep=$(grep -oPm1 "(?<=<numToKeep>)[^<]+" <<< cat $JENKINS_HOME/jobs/$jobName/config.xml) 
 
## declare the array variables to hold application names and components 
declare -a appNameArray=("XXXX" "YYYY" "AAAA" "ZZZZ" "BBBB" "CCCC") 
declare -a componentArray=("web" "database") 
 
# get length of an array 
appNameLength=${#appNameArray[@]} 
componentLength=${#componentArray[@]} 
 
# For loop to read through all applications and components; then perform cleanup 
for (( i=1; i<${appNameLength}+1; i++ )); 
do 
for (( j=1; j<${componentLength}+1; j++ )); 
do	 
appName=${appNameArray[$i-1]} 
component=${componentArray[$j-1]} 
        sleep 2 
        echo "******************************************************************************" 
        echo "************************ Cleaning up "$appName"-"$component "*****************************" 
        if [ ! -z $buildsToKeep ] 
        then 
          destination_Artifactory=https://localhost:8081/artifactory 
           
          echo "Fetching Builds details" 
          Builds=(`curl -k -u ${Artifactory_user}:${Artifactory_API_Password} -X GET $destination_Artifactory/api/storage/<REPO>/Applications/$appName/$component/ | jq -r .children[].uri`) 
 
          >buildlist 
          >builddellist 
 
          for BuildNumber in "${Builds[@]}" 
          do  
 
            buildPath=$appName/$component$BuildNumber 
            index=`echo $buildPath | grep -o -b .sh` 
            if [ -z $index ]; then 
                echo $buildPath >> buildlist 
            fi 
 
          done 
 
          totalBuilds=`wc -l buildlist | cut -d" " -f1` 
 
          buildsToDelete=$((totalBuilds - buildsToKeep)) 
 
          sort -t '/' -k3n buildlist | head -$buildsToDelete > builddellist 2>/dev/null 
 
 
          while read path 
          do 
            echo "Deleting Artifact: "$path 
            curl -k -X DELETE -u $Artifactory_user:$Artifactory_API_Password $destination_Artifactory/<REPO>/Applications/$path 
          done < builddellist 
 
        fi 
done 
done 
