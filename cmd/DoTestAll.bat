@echo off

for /d %%D in (test\*) do (
    set "TEST_PFX=%%D\" && umbox\tophat\tophat.exe -dpiaware -main %%D\tmain.um
)
