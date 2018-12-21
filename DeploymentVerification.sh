#!/bin/bash

cd WebContent 
jspLocation="LastDeployed.jsp" 
 
echo "DeploymentVerification.sh starting" 
echo "$jspLocation created" 
echo "Please execute this JSP to verify deployment!" 
 
echo "<html>" > $jspLocation 
echo "<head>" >> $jspLocation 
echo "<style type=text/css>" >> $jspLocation 
echo ".f2 {font-size:11px;font-family:Verdana,Arial,Geneva;text-decoration:none;}" >> $jspLocation 
echo "</style>" >> $jspLocation 
echo "</head>" >> $jspLocation 
echo "<body>" >> $jspLocation 
echo "<span class=f2>Last deployed at $(date)</span>" >> $jspLocation 
echo "</body>" >> $jspLocation 
echo "</html>">> $jspLocation 
 
echo "DeploymentVerification.sh finished" 
