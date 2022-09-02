#!/usr/bin/env bash

data='
[
    {
        "displayName": "First Name",
        "rank": 1,
        "value": "VALUE"
    },
    {
        "displayName": "Second Name",
        "rank": 2,
        "value": "VAL"
    }]'

echo $data | jq '(.[0] | keys_unsorted as $keys | $keys),  .[] | keys_unsorted as $keys | [.[$keys[]]]'

