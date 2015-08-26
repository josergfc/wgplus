#!/bin/bash
cd ~/wgplus
mono WebGrab+Plus.exe  "$(pwd)" && perl /home/pi/wgplus/cambia_categorias < /home/pi/wgplus/epg/guiatv_categorias_originales.xml > /home/pi/wgplus/epg/guiatv.xml
