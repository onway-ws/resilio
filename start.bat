if not exist .drv md .drv
copy /Y .scr\sync.tpl .drv\sync.conf
if not exist .drv\sync.exe .scr\download
if not exist .drv\.sync md .drv\.sync
if not exist inst  md inst
.scr\rep .drv\sync.conf __F1__ "%CD%\inst"
REM RW KEY
.scr\rep .drv\sync.conf __SECRET_KEY_F1__ "A4PKCWUJWF6RUUA4PS3OVSA5JBINHE3K5" 
REM R KEY
REM .scr\rep .drv\sync.conf __SECRET_KEY_F1__ "BSTZWUMOB63ZASZLUB6QCJBNIMJUY7BJ2"
.scr\rep .drv\sync.conf \ / 
cd .drv
start sync.exe /config sync.conf
