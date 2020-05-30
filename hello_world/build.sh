
source /home/odin/.musl_cc/env

set +e
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)

check_exist(){
    dirname=$1
    # echo "the dir name is $dirname"
    if [ ! -d $dirname  ];then
    mkdir $dirname
    # else
    # echo dir exist
    fi
}

build(){
    cd $SHELL_FOLDER
    triplet=$1
    check_exist  ./build && cd ./build
    check_exist  $triplet && cd ./$triplet
    cmake ../.. -DMUSL_CC_ROOT=~/.musl_cc -DCURRENT_MUSL_CC_TARGET=$triplet
    #make install
     make
    cd $SHELL_FOLDER
}





build_all(){
    build  aarch64-linux-musl
    build  aarch64_be-linux-musl
    build  arm-linux-musleabi
    build  arm-linux-musleabihf
    build  armeb-linux-musleabi
    build  armeb-linux-musleabihf
    build  armel-linux-musleabi
    build  armel-linux-musleabihf
    build  armv5l-linux-musleabihf
    build  armv7l-linux-musleabihf
    build  armv7m-linux-musleabi
    build  armv7r-linux-musleabihf
    build  i486-linux-musl
    build  i686-linux-musl
    build  i686-w64-mingw32
    build  m68k-linux-musl
    build  microblaze-linux-musl
    build  microblazeel-linux-musl
    build  mips-linux-musl
    build  mips-linux-musln32sf
    build  mips-linux-muslsf
    build  mips64-linux-musl
    build  mips64-linux-musln32
    build  mips64-linux-musln32sf
    build  mips64el-linux-musl
    build  mips64el-linux-musln32
    build  mips64el-linux-musln32sf
    build  mipsel-linux-musl
    build  mipsel-linux-musln32
    build  mipsel-linux-musln32sf
    build  mipsel-linux-muslsf
    build  or1k-linux-musl
    build  powerpc-linux-musl
    build  powerpc-linux-muslsf
    build  powerpc64-linux-musl
    build  powerpc64le-linux-musl
    build  powerpcle-linux-musl
    build  powerpcle-linux-muslsf
    build  riscv64-linux-musl
    build  s390x-linux-musl
    build  sh2-linux-musl
    build  sh2-linux-muslfdpic
    build  sh2eb-linux-musl
    build  sh2eb-linux-muslfdpic
    build  sh4-linux-musl
    build  sh4eb-linux-musl
    build  x86_64-linux-musl
    build  x86_64-linux-muslx32
    build  x86_64-w64-mingw32
}



build_all2(){
    build  aarch64-linux-musl
    # build  arm-linux-musleabi
    # # build  i686-w64-mingw32
    # build  mipsel-linux-musln32
}





if [ "$1" = "--clean" ];then
    cd $SHELL_FOLDER
    check_exist  ./build && rm -rf ./build
    check_exist  ./targets && rm -rf ./targets
else
    build_all
fi
