#!/bin/sh
# Wine instalador en Void Linux

sudo xbps-install wine winetricks wine-gecko wine-mono zenity

# Configurando
wineboot

rm -r ~/.cache/winetricks

winetricks -q -f corefonts allcodecs wmp10 vkd3d msxml4 msxml6 mfc40 mf42 dotnet20sp1 dxvk 
winetricks -q -f vcrun2005 vcrun2008 vcrun2010 vcrun2012 vcrun2013 vcrun2022 vcrun6sp6 vcrun6 
winetricks -q -f d3dx9 d3dx10 d3dx11_43
winetricks -q -f d3dcompiler_47 gmdls
winetricks -q -f allfonts cjkfonts
rm -r ~/.cache/winetricks


# Instalación para poder obtener el proceso de ilustración para exportar en CSP
sudo cp release/x86_64-windows/*.dll /usr/lib/wine/x86_64-windows/
sudo cp release/x86_64-unix/*.so /usr/lib/wine/x86_64-unix/

