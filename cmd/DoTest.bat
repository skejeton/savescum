@echo off
if not exist test\%1 (
    echo nay
    exit /b -1
)
umbox\tophat\tophat.exe -dpiaware -main test\%1\tmain.um
