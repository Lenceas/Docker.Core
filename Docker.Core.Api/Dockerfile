FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 8081
COPY . .
ENTRYPOINT ["dotnet", "Docker.Core.Api.dll"]