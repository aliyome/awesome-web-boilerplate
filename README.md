# Awesome-web-boilerplate

[![CircleCI](https://circleci.com/gh/aliyome/awesome-web-boilerplate.svg?style=svg)](https://circleci.com/gh/aliyome/awesome-web-boilerplate)

{{Awesome-web-boilerplate}} is a boilerplate for web service.

[Demo](#)

## Stack

- Server
  - C#
  - ASP.NET Core 2.1
  - ASP.NET Core WebAPI
  - Kestrel
  - NSwag
- Client
  - TypeScript
  - Angular 6
  - ngrx

## Features

- https
- REST api
- auto api documentation (swagger v2)
- ~~client code generation~~
  - I recommend you to use NSwagStudio
- docker support

## Requirement

- .NET Core 2.1 SDK
- Windows?
  - My develop environment is Windows 10, so I don't know that this boilerplate is valid for other environment.
- Docker(optional)
- [NSwag Studio](https://github.com/RSuter/NSwag/wiki/NSwagStudio)(optional)

## Usage

1.  clone this repo.
2.  rename solution `asp_webapi.sln` to `$solutionName`.
3.  rename project `AspWebapi` to `$projectName`.
4.  rename test project `AspWebapi.Test` to `$testProjectName`.

command

```sh
git clone git@github.com:aliyome/awesome-web-boilerplate.git
cd awesome-web-boilerplate

# remove default projects from solution
dotnet sln remove AspWebapi
dotnet sln remove AspWebapi.Test

# rename projects
mv AspWebapi $projectName
mv AspWebapi.Test $testProjectName
mv $projectName/AspWebapi.csproj $projectName/$projectName.csproj
mv $testProjectName/AspWebapi.Test.csproj $testProjectName/$testProjectName.csproj

# rename solution
mv asp_webapi.sln $solutionName.sln

# add your projects to solution
dotnet sln add $projectName
dotnet sln add $testProjectName
```

## Author

[aliyome](https://twitter.com/aliyome)

## Licence

MIT License
