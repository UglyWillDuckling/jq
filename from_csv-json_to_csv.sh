#! /usr/bin/env bash

csv2json | jq '.[] | to_entries | map(.value) | @csv' -r

