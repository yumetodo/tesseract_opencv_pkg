#!/bin/bash
git describe --tags --abbrev=0 --exact-match > tag.txt
echo $? > on_tag.txt

