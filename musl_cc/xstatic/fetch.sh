set +e
set +x

function fetch_lib(){
    mkdir $1
    cd $1
    curl -s https://pkg.musl.cc/$1/aarch64-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/aarch64_be-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/arm-linux-musleabi.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/arm-linux-musleabihf.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/armeb-linux-musleabi.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/armeb-linux-musleabihf.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/armel-linux-musleabi.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/armel-linux-musleabihf.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/armv5l-linux-musleabihf.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/armv7l-linux-musleabihf.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/armv7m-linux-musleabi.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/armv7r-linux-musleabihf.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/i486-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/i686-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/i686-w64-mingw32.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/m68k-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/microblaze-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/microblazeel-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/mips-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/mips-linux-musln32sf.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/mips-linux-muslsf.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/mips64-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/mips64-linux-musln32.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/mips64-linux-musln32sf.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/mips64el-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/mips64el-linux-musln32.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/mips64el-linux-musln32sf.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/mipsel-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/mipsel-linux-musln32.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/mipsel-linux-musln32sf.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/mipsel-linux-muslsf.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/or1k-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/powerpc-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/powerpc-linux-muslsf.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/powerpc64-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/powerpc64le-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/powerpcle-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/powerpcle-linux-muslsf.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/riscv32-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/riscv64-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/s390x-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/sh2-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/sh2-linux-muslfdpic.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/sh2eb-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/sh2eb-linux-muslfdpic.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/sh4-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/sh4eb-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/x86_64-linux-musl.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/x86_64-linux-muslx32.tgz| tar xvz 
    curl -s https://pkg.musl.cc/$1/x86_64-w64-mingw32.tgz| tar xvz 
    cd ..
}



# fetch_lib $1

fetch_lib boost-1.70.0
fetch_lib zeromq-4.2.5
#eg: fetch_lib libpcap-1.9.0