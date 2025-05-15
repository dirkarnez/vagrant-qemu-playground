@echo off

set PATH=^
C:\Windows\System32;^
%USERPROFILE%\Downloads\qemu-w64-portable-20240822;

@REM vagrant.exe init
vagrant plugin install vagrant-qemu
vagrant up --provider qemu
vagrant init ppggff/centos-7-aarch64-2009-4K
vagrant up --provider qemu
pause