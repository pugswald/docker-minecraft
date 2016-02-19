#!/bin/bash

# Have to do all work after mounting external directory
if [ ! -f forge-1.8.9-11.15.1.1722-installer.jar ]; then
  curl -L 'https://drive.google.com/uc?export=download&id=0BxTjxIUbR4KrV3V5djZtWGh4OEE' -o forge-1.8.9-11.15.1.1722-installer.jar
  echo "eula=true" > eula.txt
  java -jar forge-1.8.9-11.15.1.1722-installer.jar -installServer
fi
if [ ! -d mods ]; then
  mkdir mods
  curl -L 'https://drive.google.com/uc?export=download&id=0BxTjxIUbR4KrWFRwbVBHS1pFN1k' -o mods/Thaumcraft-1.8.9-5.1.6.jar
fi
java -Xms2G -jar forge-1.8.9-11.15.1.1722-universal.jar -nogui
