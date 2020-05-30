# Cross-complier-musl-cmake
# complie c++ through the musl-cc complie-toolchain

1.   apt install gcc

     apt install build-essential
     
2.   cp -r /musl_cc ~/.musl_cc

     tree:  ~/.musl_cc/    
     
                    env         
                    
                    /toolchain     
                    
                    /xstatic       
                    
                    /triplets
                    
 3.  cd ~/.musl_cc/toolchain && sh fetch.sh
     
 4.  cd ~/.musl_cc/xstatic && sh fetch.sh openssl/../..     #it's lib you need
                    
 5.  echo 'source /home/$USER/.musl_cc/env'>> ~/.profile
 
 6.  cd hello_world && sh build.sh
 
 
 
 
