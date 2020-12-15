#!/bin/sh

# 复制完deb、修改对应信息后执行，生成最新的bz2
rm ./Packages.bz2
dpkg-scanpackages -m ./debs > Packages
bzip2 Packages