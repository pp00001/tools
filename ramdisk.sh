if [ "$1" = "rm" ]
then
  hdiutil detach /dev/disk1
else
  hdid -nomount ram://52428800
  newfs_hfs /dev/disk1
  mkdir /tmp/ramdisk1
  mount -t hfs /dev/disk1 /tmp/ramdisk1
fi
