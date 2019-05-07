for /f "tokens=* delims=" %%a in ('type inputs.txt') do (
    docker run --link server -d --name czytnik%%a alpine sh script.sh %%a
)