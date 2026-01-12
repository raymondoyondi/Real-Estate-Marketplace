#!/usr/bin/env bash
# Exit on error
set -o errexit

bundle install
bin/rails assets:precompile
bin/rails assets:clean
# If using a Free instance type, include migrations here:
# bin/rails db:migrate
