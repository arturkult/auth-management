FROM microsoft/dotnet:2.1-sdk
WORKDIR /SimpleServer/

# kopiujemy plik .csproj oraz używamy polecenia dotnet restore
COPY ./SimpleServer/*.csproj ./ 
RUN dotnet restore

# kopiujemy i dokonujemy build'a całej reszty
COPY . ./
RUN dotnet build -c Release
ENTRYPOINT ["dotnet", "run", "-c", "Release"]
