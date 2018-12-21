#!/bin/sh

echo "test12345"

Application="ENERGYPLM"
Environment="QA1"
PublishType="db"
web_Build=245
DB_BUILD=186
Release="Release_6_0_80"

echo "Application="$Application
echo "Environment="$Environment
echo "PublishType="$PublishType
echo "web_Build="$web_Build
echo "DB_BUILD="$DB_BUILD
echo "Release="$Release

########## To record Build duration in the metrics file ##########
dbDurationMs="0"
dbTime=""
dbJobDetails=","

appDuration=$(curl --user 502437115:a37a58315f467e1faa3f773b43ce626c "https://jenkins.pw.ge.com/jenkins/job/PLM-$Application-APP/$web_Build/api/xml?tree=duration")

echo $appDuration > appDuration.xml

for duration in $(cat appDuration.xml | grep -oP '(?<=duration>)[^<]+'); do appDurationMs="$duration"; done

if [ ! ${#appDurationMs} -gt 0 ]; then
 appDurationMs="0"
fi

appTime=$(echo $(($appDurationMs/1000/60)) mins $(($appDurationMs/1000%60)) secs)


if [ ! "$PublishType" == "app" ]; then

dbDuration=$(curl --user 502437115:a37a58315f467e1faa3f773b43ce626c "https://jenkins.pw.ge.com/jenkins/job/PLM-$Application-DB/$DB_BUILD/api/xml?tree=duration")

echo $dbDuration >> dbDuration.xml

for duration in $(cat dbDuration.xml | grep -oP '(?<=duration>)[^<]+'); do dbDurationMs="$duration"; done

if [ ! ${#dbDurationMs} -gt 0 ]; then
 dbDurationMs="0"
fi

dbTime=$(echo $(($dbDurationMs/1000/60)) mins $(($dbDurationMs/1000%60)) secs)

dbJobDetails="PLM-"$Application"-DB",$DB_BUILD

fi

totalDurationMs=$((appDurationMs+dbDurationMs))

totalTime=$(echo $(($totalDurationMs/1000/60)) mins $(($totalDurationMs/1000%60)) secs)

echo "appTime="$appTime
echo "dbTime="$dbTime
echo "totalTime="$totalTime

rm appDuration.xml || true
rm dbDuration.xml || true
