@ECHO OFF
FOR /f "tokens=*" %%i IN ('docker ps -q') DO docker kill %%i
FOR /f "tokens=*" %%i IN ('docker ps -a -q') DO docker rm %%i
rmdir server\SimpleServer\bin /s /q
rmdir server\SimpleServer\obj /s /q
docker build . -t alpine
docker build ./server -t server
start call docker run -p 80:80 --name server server
PAUSE
./czytniki.bat