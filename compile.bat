@echo off

cd\
cd E:\QuakeClassStuff\quake-leveldesign-starterkit-master


echo Copying Files...
copy E:\QuakeClassStuff\quake-leveldesign-starterkit-master\Id1\maps\DevilsLab.map E:\QuakeClassStuff\quake-leveldesign-starterkit-master


echo Converting map...


echo --------------QBSP--------------
E:\QuakeClassStuff\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\qbsp.exe DevilsLab

echo --------------VIS---------------
E:\QuakeClassStuff\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\vis.exe DevilsLab

echo -------------LIGHT--------------
E:\QuakeClassStuff\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\light.exe DevilsLab

copy DevilsLab.bsp E:\QuakeClassStuff\quake-leveldesign-starterkit-master\Id1\maps
copy DevilsLab.pts E:\QuakeClassStuff\quake-leveldesign-starterkit-master\Id1\maps
copy DevilsLab.lit E:\QuakeClassStuff\quake-leveldesign-starterkit-master\Id1\maps
pause
cd\
cd E:\QuakeClassStuff\quake-leveldesign-starterkit-master
quakespasm  +map DevilsLab
