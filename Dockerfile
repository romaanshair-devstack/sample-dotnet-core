FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-nanoserver-1809 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-nanoserver-1809 AS build
WORKDIR /src
COPY ["MyAccess/MyAccess.csproj", "MyAccess/"]
RUN dotnet restore "MyAccess/MyAccess.csproj"
COPY . .
WORKDIR "MyAccess/"
RUN dotnet build "MyAccess.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "MyAccess.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "MyAccess.dll"]