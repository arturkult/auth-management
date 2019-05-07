@ECHO OFF
for /f "tokens=* delims=" %%a in ('type inputs.txt') do (
    docker stop czytnik%%a
)
docker stop server