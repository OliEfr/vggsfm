cd examples

rm -rf dog_cop3d_565_81664_160332_custom
mkdir dog_cop3d_565_81664_160332_custom

####### images
# Download the ZIP file
curl -L https://nextcloud.in.tum.de/index.php/s/XAxFcXryrBYMJQM/download/dog_cop3d_565_81664_160332_images_custom.zip -o dog_cop3d_565_81664_160332_custom/images.zip

# Create the target directory if it doesn't exist
mkdir -p dog_cop3d_565_81664_160332_custom/images

# Unzip the contents into the target directory, avoiding nested directories
unzip dog_cop3d_565_81664_160332_custom/images.zip -d dog_cop3d_565_81664_160332_custom/images

# Clean up by removing the ZIP file
rm dog_cop3d_565_81664_160332_custom/images.zip

# Move all contents of the nested directory to the correct location
mv dog_cop3d_565_81664_160332_custom/images/dog_cop3d_565_81664_160332_custom/* dog_cop3d_565_81664_160332_custom/images/

# Remove the now-empty nested directory
rmdir dog_cop3d_565_81664_160332_custom/images/dog_cop3d_565_81664_160332_custom

####### masks
# Download the ZIP file
curl -L https://nextcloud.in.tum.de/index.php/s/ESEKgByHb6mn7Ns/download/dog_cop3d_565_81664_160332_masks_custom_animal_avatar.zip -o dog_cop3d_565_81664_160332_custom/masks.zip

# Create the target directory if it doesn't exist
mkdir -p dog_cop3d_565_81664_160332_custom/masks

# Unzip the contents into the target directory, avoiding nested directories
unzip dog_cop3d_565_81664_160332_custom/masks.zip -d dog_cop3d_565_81664_160332_custom/masks

# Clean up by removing the ZIP file
rm dog_cop3d_565_81664_160332_custom/masks.zip

# Move all contents of the nested directory to the correct location
mv dog_cop3d_565_81664_160332_custom/masks/dog_cop3d_565_81664_160332_custom_animal_avatar/* dog_cop3d_565_81664_160332_custom/masks/

# Remove the now-empty nested directory
rmdir dog_cop3d_565_81664_160332_custom/masks/dog_cop3d_565_81664_160332_custom_animal_avatar
