my_dic = {
    "aarch64-linux-musl":"aarch64",
    "aarch64_be-linux-musl":"aarch64_be",
    "arm-linux-musleabi":"arm",
    "arm-linux-musleabihf":"arm",
    "armeb-linux-musleabi":"armeb",
    "armeb-linux-musleabihf":"armeb",
    "armel-linux-musleabi":"armel",
    "armel-linux-musleabihf":"armel",
    "armv5l-linux-musleabihf":"armv5l",
    "armv7l-linux-musleabihf":"armv7l",
    "armv7m-linux-musleabi":"armv7m",
    "armv7r-linux-musleabihf":"armv7r",
    "i486-linux-musl":"i486",
    "i686-linux-musl":"i686",
    "i686-w64-mingw32":"i686",
    "m68k-linux-musl":"m68k",
    "microblaze-linux-musl":"microblaze",
    "microblazeel-linux-musl":"microblazeel",
    "mips-linux-musl":"mips",
    "mips-linux-musln32sf":"mips",
    "mips-linux-muslsf":"mips",
    "mips64-linux-musl":"mips64",
    "mips64-linux-musln32":"mips64",
    "mips64-linux-musln32sf":"mips64",
    "mips64el-linux-musl":"mips64el",
    "mips64el-linux-musln32":"mips64el",
    "mips64el-linux-musln32sf":"mips64el",
    "mipsel-linux-musl":"mipsel",
    "mipsel-linux-musln32":"mipsel",
    "mipsel-linux-musln32sf":"mipsel",
    "mipsel-linux-muslsf":"mipsel",
    "or1k-linux-musl":"or1k",
    "powerpc-linux-musl":"powerpc",
    "powerpc-linux-muslsf":"powerpc",
    "powerpc64-linux-musl":"powerpc64",
    "powerpc64le-linux-musl":"powerpc64le",
    "powerpcle-linux-musl":"powerpcle",
    "powerpcle-linux-muslsf":"powerpcle",
    "riscv64-linux-musl":"riscv64",
    "s390x-linux-musl":"s390x",
    "sh2-linux-musl":"sh2",
    "sh2-linux-muslfdpic":"sh2",
    "sh2eb-linux-musl":"sh2eb",
    "sh2eb-linux-muslfdpic":"sh2eb",
    "sh4-linux-musl":"sh4",
    "sh4eb-linux-musl":"sh4eb",
    "x86_64-linux-musl":"x86_64",
    "x86_64-linux-muslx32":"x86_64",
    "x86_64-w64-mingw32":"x86_64",
}


import os
for key in my_dic:
    content = "set(CMAKE_SYSTEM_NAME Linux)\nset(CMAKE_SYSTEM_PROCESSOR " + my_dic[key] + ")"
    fi = "../" + key + ".cmake"
    with open(fi,"w") as f:
        f.write(content)

    