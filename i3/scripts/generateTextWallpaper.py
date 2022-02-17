#! /usr/bin/python

import os
import random
from PIL import Image, ImageDraw, ImageFont, ImageChops

offset = random.randrange(0,40)
backgroundLightness = [offset+random.randrange(0,20),offset+random.randrange(0,20),offset+random.randrange(0,20)]
fontSize = random.randrange(8,20)
imageSize = [1920, 1080]
wordlist = ["nonwibb", "arch", "linux", "nora", "girl"]
fnt = ImageFont.truetype("/usr/share/fonts/ubuntu/Ubuntu-B.ttf", fontSize)

shape = Image.open("/home/nonwibb/Pictures/randomImages/"+random.choice(os.listdir("/home/nonwibb/Pictures/randomImages/")))
word = random.choice(wordlist)

img = Image.new('RGBA', (1920, 1080), color = (0,0,0,0))
d = ImageDraw.Draw(img)

textX=""
while fnt.getsize(textX)[0] < imageSize[0]:
    textX+=word+" "

textString=""
for i in range(int(imageSize[1]/fontSize)):
    textString+=textX+"\n"

d.multiline_text((0,0), textString, font=fnt, fill=(255, 255, 255))
comb = ImageChops.multiply(img.convert("RGBA"),shape.convert("RGBA"))
out = Image.new('RGB', (1920, 1080), color = (backgroundLightness[0],backgroundLightness[1],backgroundLightness[2]))
out.paste(comb, (0, 0), comb)
out.save('/home/nonwibb/Pictures/Wallpapers/randomWallpaper.png')