# wgplus 

Integrar WebGrab+Plus en Tvheadend para obtener la EPG.

Asignar logos a cada canal.

Probado en Raspbian Debian Wheezy en una Raspberry Pi Modelo B. 100% funcional.

## Instalación

```
cd /home/pi
git clone https://github.com/josergfc/wgplus
```

## Permisos de ejecución y links simbólicos

Dar permisos de ejecución y añadir link simbólico tv_grab_wgplus en PATH

```
cd /home/pi/wgplus
sudo chmod 755 update.sh
sudo chmod +x /home/pi/wgplus/tv_grab_wgplus
sudo ln -s /home/pi/wgplus/tv_grab_wgplus /usr/bin/tv_grab_wgplus
```

## Actualización automática

Añadir un cronjob para que todos los dias a la 1:00 am se ejecute update.sh 

```	
crontab -e
Añadimos el cronjob y guardamos:
0 1 * * * ~/wgplus/update.sh
```

## Logos

En Tvheadend, ir a la pestaña "Configuration"/"Channel / EPG"/"Channels":

En "User Icon" introducimos la url de la imagen del canal correspondiente. Si queremos utilizar los logos que hemos descargado, la url será de la forma: 

```	
file:///home/pi/wgplus/logos/XXX.jpg
```

Donde XXX es el nombre de la imagen correspondiente al canal.

Ejemplos:

```	
Channels		Number	User Icon

La 1			1		file:///home/pi/wgplus/logos/1.jpg
Canal+			7		file:///home/pi/wgplus/logos/2803.jpg
Canal+ Liga		46		file:///home/pi/wgplus/logos/1281.jpg
```