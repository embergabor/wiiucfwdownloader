#!/bin/bash
extractFiles(){
  mkdir sdcard/
  mkdir sdcard/install/
  unzip -q -o download/wup_installer_gx2.zip -d sdcard
  unzip -q -o download/nanddumper.zip -d sdcard
  unzip -q -o download/wiiu-extracttosd.zip -d sdcard
  unzip -q -o download/homebrew_launcher.v1.4.zip -d sdcard
  unzip -q -o download/savemii_mod.zip -d sdcard
  unzip -q -o download/payload.zip -d sdcard/wiiu
  if [ $cfwtype == 'h' ]
  then
    unzip -q -o download/homebrew_launcher_channel.v2.1_fix.zip -d sdcard/install
    unzip -q -o download/haxchi.zip -d sdcard
  else
    unzip -q -o download/mocha.zip -d sdcard
    cp download/config.ini sdcard/wiiu/apps/mocha/
  fi
}

downloadFiles(){
  if [ $cfwtype == 'h' ]
  then
    wget -i haxchi_dl.txt -c -q -P download/
  else
    wget -i mocha_dl.txt -c -q -P download/
  fi
  extractFiles
}

askCFW(){
  echo 'Choose CFW (h - Haxchi, m - Mocha)'
  read cfwtype
  if [ $cfwtype == 'h' ]
  then
    echo 'Downloading files for Haxchi'
  else
    if [ $cfwtype == 'm' ]
    then
      echo 'Downloading files for Mocha'
    else
      echo 'Please type h or m!'
      askCFW
    fi
  fi
  downloadFiles
}

askCFW
