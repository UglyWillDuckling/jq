#!/usr/bin/env bash

data='{
"data": [
    {
        "displayName": "First Name",
        "rank": 1,
        "value": "VALUE"
    },
    {
        "displayName": "Last Name",
        "rank": 2,
        "value": "VALUE"
    },
    {
        "displayName": "Position",
        "rank": 3,
        "value": "VALUE"
    },
    {
        "displayName": "Company Name",
        "rank": 4,
        "value": "VALUE"
    },
    {
        "displayName": "Country",
        "rank": 5,
        "value": "VALUE"
    }
]
}'

echo $data | jq -r '.data[] | [.displayName, .rank, .value] | @csv' | awk 'BEGIN { print "name,rank,value"}//'

