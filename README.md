Nginx Angular Docker Image
====================

This repository contains `Dockerfile` definitions for [lambda3/nginx-angular](https://github.com/lambda3/docker-nginx-angular) Docker images.

[![Downloads from Docker Hub](https://img.shields.io/docker/pulls/lambda3/nginx-angular.svg)](https://registry.hub.docker.com/u/lambda3/nginx-angular)
[![Stars on Docker Hub](https://img.shields.io/docker/stars/lambda3/nginx-angular.svg)](https://registry.hub.docker.com/u/lambda3/nginx-angular) [![](https://images.microbadger.com/badges/image/lambda3/nginx-angular.svg)](https://microbadger.com/images/lambda3/nginx-angular)

## Supported tags

- [`latest`, `alpine`, `1.19`, `1.19-alpine` (*agent/Dockerfile*)](https://github.com/lambda3/docker-nginx-angular/blob/master/Dockerfile)

## Building

Simply add the built files to the `/usr/share/nginx/html` directory, as specified on the
[Nginx](https://hub.docker.com/_/nginx/) image.

A good example, assuming the `Dockerfile` is in the Angular project root, would be:

````dockerfile
FROM lambda3/nginx-angular:1.19-alpine
COPY dist/<yourprojectname>/ /usr/share/nginx/html
````

## Running

Simply run the built image:

````powershell
docker run -p 4200:80 -ti <yourimagename>
````

Or if you are mounting the Angular built directory, do:

````powershell
docker run --volume="$(pwd)/dist/<yourprojectname>:/usr/share/nginx/html" -p 4200:80 -ti lambda3/nginx-angular
````

## Maintainers

- [Giovanni Bassi](http://blog.lambda3.com.br/L3/giovannibassi/), aka Giggio, [Lambda3](http://www.lambda3.com.br), [@giovannibassi](https://twitter.com/giovannibassi)

## License

This software is open source, licensed under the Apache License, Version 2.0.
See [LICENSE.txt](https://github.com/lambda3/docker-nginx-angular/blob/master/LICENSE.txt) for details.
Check out the terms of the license before you contribute, fork, copy or do anything
with the code. If you decide to contribute you agree to grant copyright of all your contribution to this project, and agree to
mention clearly if do not agree to these terms. Your work will be licensed with the project at Apache V2, along the rest of the code.
