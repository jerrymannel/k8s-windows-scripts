@echo off
echo.
if [%2]==[] (
	echo No namespace specified
	exit
)
set deploymentName=%1
set namespace=%2
echo kubectl scale deploy %deploymentName% -n %namespace% --replicas=0
kubectl scale deploy %deploymentName% -n %namespace% --replicas=0
echo kubectl scale deploy %deploymentName% -n %namespace% --replicas=1
kubectl scale deploy %deploymentName% -n %namespace% --replicas=1