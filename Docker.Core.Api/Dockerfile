#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY ["Docker.Core.Api/Docker.Core.Api.csproj", "Docker.Core.Api/"]
RUN dotnet restore "Docker.Core.Api/Docker.Core.Api.csproj"
COPY . .
WORKDIR "/src/Docker.Core.Api"
RUN dotnet build "Docker.Core.Api.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Docker.Core.Api.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY . . 
EXPOSE 8081
ENTRYPOINT ["dotnet", "Docker.Core.Api.dll","-b","0.0.0.0"]