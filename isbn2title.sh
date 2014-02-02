#!/bin/sh

wget -qO - http://www.lookupbyisbn.com/Search/Book/$1/1 | grep -Po '(?<=title="Details for )[^"]+' | sed 's/\&[^\;]*./ /g' 
