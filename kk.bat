@echo off
echo.
set namespace=%1
if [%1]==[] (set namespace="appveen-faas-sit")
echo ----------- SERVICE ----------
kubectl get service -n %namespace%
echo ----------- DEPLOYMENT ----------
kubectl get deploy -n %namespace%
echo ----------- PODS ----------
kubectl get pods -n %namespace%