#!/usr/bin/env sh

rm -r lib
swagger-codegen generate -i https://lifestream.reynrick.com/api-docs -l php -c config.json
composer update
