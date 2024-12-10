library(hexSticker)
library(magick)

# Check and set the working directory if necessary
setwd("/Users/nicolesanchezflores/Documents/chchchanges") # Adjust this path as needed

# Read the uploaded image
cham.img <- magick::image_read("chameleon.png")

# Generate the hex sticker
sticker(cham.img, 
        package = "chchchanges", 
        p_size = 18, 
        p_color = "#0B6623",  # Package name color
        h_fill = "#FDF4CB",   # Hex background color
        h_color = "#000000",  # Hex border color
        s_x = 1, 
        s_y = 0.75, 
        s_width = 0.999,
        s_height = 0.999,
        filename = "chchchanges_hex_sticker.png") # Saves in the working directory
