#!/bin/bash
var="Global Variable"
function bash{
local var="Local"
echo $var
}

echo $var

bash

echo $var

