#!/bin/bash

###### Get Paths ##############################################################
og_path=$PWD
cd "$(dirname "$0")"
cd ..
root_path=$PWD
build_path=$root_path/build
examps=$root_path/examples

echo ~~~ Running Expression Intro ~~~
$build_path/expr_intro.exe $examps/expr/expr_intro.mdesk
echo

exit

echo ~~~ Running Type Metadata Generator Example ~~~
cd $examps/type_metadata/generated
$build_path/type_metadata.exe $examps/type_metadata/types.mdesk
echo

echo ~~~ Running Error Generation Example ~~~
$build_path/user_errors.exe $examps/user_errors/user_errors.mdesk

###### Restore Path ###########################################################
cd $og_path
