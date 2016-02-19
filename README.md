* Update the folder location
```
docker-machine ssh default
sudo mount -t vboxsf d/Minecraft /d/Minecraft
```

* Forward virtual box ports to VM
```
 ./VBoxManage.exe controlvm default natpf1 "tcp-port25565,tcp,,25565,,25565";
```

* Run from docker
```
docker-machine ssh default "sudo mkdir -p /d/Minecraft; sudo mount -t vboxsf d/Minecraft /d/Minecraft"
docker run -v /d/Minecraft:/minecraft --net="host" -P minecraftdocker_minecraft
```
