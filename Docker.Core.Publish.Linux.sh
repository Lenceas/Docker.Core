git pull;
rm -rf PublishFiles;
dotnet build;
dotnet publish -o /root/Project/Docker.Core/Docker.Core.Api/bin/Debug/net5.0;
cp -r /root/Project/Docker.Core/Docker.Core.Api/bin/Debug/net5.0 PublishFiles;
echo "Successfully!!!! ^ please see the file PublishFiles";