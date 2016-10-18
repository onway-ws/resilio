if not exist .drv md .drv
copy /Y .scr\sync.tpl .drv\sync.conf
if not exist .drv\sync.exe .scr\download
if not exist .drv\.sync md .drv\.sync
if not exist inst  md inst
.scr\rep .drv\sync.conf __F1__ "%CD%\inst"
.scr\rep .drv\sync.conf __F1__ "%CD%\inst" 

.scr\rep .drv\sync.conf \ / 
cd .drv
start sync.exe /config sync.conf
