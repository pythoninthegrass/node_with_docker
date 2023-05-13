#!/usr/bin/env bash

# workdir
script_dir=$(cd "$(dirname "$0")" && pwd)

# Run the server
exec npx nodemon "${script_dir}/src/index.ts"
