@echo off

cd\
cd E:\QuakeClassStuff\quake-leveldesign-starterkit-master


echo Copying Files...
copy E:\QuakeClassStuff\quake-leveldesign-starterkit-master\Id1\maps\ZombieMap.map E:\QuakeClassStuff\quake-leveldesign-starterkit-master


echo Converting map...


echo --------------QBSP--------------
E:\QuakeClassStuff\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\qbsp.exe ZombieMap

echo --------------VIS---------------
E:\QuakeClassStuff\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\vis.exe ZombieMap

echo -------------LIGHT--------------
E:\QuakeClassStuff\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\light.exe ZombieMap

copy ZombieMap.bsp E:\QuakeClassStuff\quake-leveldesign-starterkit-master\Id1\maps
copy ZombieMap.pts E:\QuakeClassStuff\quake-leveldesign-starterkit-master\Id1\maps
copy ZombieMap.lit E:\QuakeClassStuff\quake-leveldesign-starterkit-master\Id1\maps
pause
cd\
cd E:\QuakeClassStuff\quake-leveldesign-starterkit-master
quakespasm  +map ZombieMap
