# reference: https://github.com/dotnet/dotnet-docker/blob/master/samples/dotnetapp/Dockerfile
FROM microsoft/dotnet:2.1-sdk AS build

WORKDIR /app

# copy csproj and restore as distinct layers
COPY AspWebapi/*.csproj ./AspWebapi/
WORKDIR /app/AspWebapi
RUN dotnet restore

# copy and publish app and libraries
WORKDIR /app/
COPY AspWebapi/. ./AspWebapi
WORKDIR /app/AspWebapi
RUN dotnet publish -c Release -o dist


# # test application
# FROM build AS testrunner
# WORKDIR /app/AspWebapi.Test
# COPY AspWebapi.Test/. .
# ENTRYPOINT ["dotnet", "test", "--logger:trx"]


# publish
FROM microsoft/dotnet:2.1-aspnetcore-runtime-alpine AS runtime
WORKDIR /app
COPY --from=build /app/AspWebapi/dist ./
EXPOSE 80 443
ENTRYPOINT ["dotnet", "asp_webapi.dll"]