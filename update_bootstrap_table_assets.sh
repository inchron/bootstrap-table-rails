#!/bin/bash

# You need to install jq to use this script :)

latest_release_url="https://api.github.com/repos/wenzhixin/bootstrap-table/releases/latest"
intermediate_folder_path="bootstrap-table-latest"
intermediate_file_path="$intermediate_folder_path.tar.gz"
asset_path="vendor/assets/javascripts/bootstrap-table"

latest_info=`curl -s -k $latest_release_url`
version=`echo $latest_info | jq -r '.tag_name'`
file_url=`echo $latest_info | jq -r '.tarball_url'`

wget -O $intermediate_file_path ${file_url}
mkdir $intermediate_folder_path
tar -xf $intermediate_file_path -C $intermediate_folder_path
dist_path="$intermediate_folder_path/`ls $intermediate_folder_path`/dist"

# remove min.css and min.js files
find $dist_path -name "*.min.css" -type f -delete
find $dist_path -name "*.min.js" -type f -delete

rm -r $asset_path
mv $dist_path $asset_path

rm $intermediate_file_path
rm -r $intermediate_folder_path

echo "PLEASE CHANGE '\`\`\`tree' text in README.md with following content:"
tree vendor
echo "PLEASE CHANGE '\`\`\`tree' text in README.md with the above printed content."

echo "PLEASE CHANGE version in lib/bootstrap-table-rails/version.rb and Gemfile.lock to $version"