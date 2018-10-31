cp -p _fs_contents.stock _fs_contents
mkdir mnt
mount -o loop _fs_contents mnt/
cp -R ../Base/* mnt/
cp ../Userland/sh mnt/bin/sh
cp ../Userland/id mnt/bin/id
cp ../Userland/ps mnt/bin/ps
cp ../Userland/ls mnt/bin/ls
cp ../Userland/pwd mnt/bin/pwd
cp ../Userland/sleep mnt/bin/sleep
cp ../Userland/date mnt/bin/date
cp ../Userland/true mnt/bin/true
cp ../Userland/false mnt/bin/false
cp ../Userland/hostname mnt/bin/hostname
cp ../Userland/cat mnt/bin/cat
cp ../Userland/uname mnt/bin/uname
cp ../Userland/clear mnt/bin/clear
cp ../Userland/tst mnt/bin/tst
cp ../Userland/mm mnt/bin/mm
cp ../Userland/kill mnt/bin/kill
cp ../Userland/tty mnt/bin/tty
sh sync-local.sh
cp kernel.map mnt/
umount mnt
sync