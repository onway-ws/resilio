#!/bin/bash

BTDIR=$PWD/.drv
STOREPATH=$BTDIR/.sync
FOLDER1=$PWD/inst
KEY1="A4PKCWUJWF6RUUA4PS3OVSA5JBINHE3K5"

if [ ! -d $BTDIR ]
then

  mkdir $BTDIR
  mkdir $STOREPATH
  wget -O syncdir.tar.gz https://download-cdn.resilio.com/stable/linux-x64/resi$
  tar xvzf syncdir.tar.gz -C $BTDIR rslsynk
  rm syncdir.tar.*
  mv  $BTDIR/rslsynk  $BTDIR/syncdir

cat <<EOF >$BTDIR/syncdir.conf
{ fi
  "device_name": "stalker",
  "listening_port" : 0,
  "storage_path" : "$STOREPATH",
  "pid_file" : "$BTDIR/syncdir.pid",
  "use_upnp" : true,
  "download_limit" : 0,
  "upload_limit" : 0,
  "shared_folders" :
  [
    {
      "secret" : "$INSTALLKEY",
      "dir" : "$INSTALLFOLDER",
      "use_relay_server" : true,
      "use_tracker" : true,
      "use_dht" : false,
      "search_lan" : true,
      "use_sync_trash" : true,
      "overwrite_changes" : true,
      "known_hosts" : [ ]
    }
  ]
}
EOF
fi

[ -d $FOLDER1 ] || mkdir $FOLDER1

$BTDIR/syncdir --config $BTDIR/syncdir.conf

#pkill btsync #stop
