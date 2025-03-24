#!/bin/bash

# Change this to the directory where you want to download the data
target_dir="Thursday, March 20, 2025 5:55:21.359 PM - Walking, Running, Outside"

remote_rgb_img_dir="https://nextcloud.in.tum.de/index.php/s/MHABYwaRNQityLi/download/color"
remote_masks_dir="https://nextcloud.in.tum.de/index.php/s/Pd9CaS8doJGw4Ra/download/masks"

####### remove any exising data
rm -rf "$target_dir"
mkdir "$target_dir"

####### images
curl -L "$remote_rgb_img_dir" -o "$target_dir/images.zip"
mkdir -p "$target_dir/images"
unzip "$target_dir/images.zip" -d "$target_dir/images"
rm "$target_dir/images.zip"
mv "./$target_dir/images/color/"* "$target_dir/images/"
rmdir "$target_dir/images/color"

######## masks
curl -L "$remote_masks_dir" -o "$target_dir/masks.zip"
mkdir -p "$target_dir/masks"
unzip "$target_dir/masks.zip" -d "$target_dir/masks"
rm "$target_dir/masks.zip"
mv "./$target_dir/masks/masks/"* "$target_dir/masks/"
rmdir "$target_dir/masks/masks"
