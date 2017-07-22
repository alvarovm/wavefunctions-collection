obabel $1.xyz -omopcrt -O $1.dat -xk "PM7 threads=4  graphf allvec 1scf"
obabel $2.xyz -omopcrt -O $2.dat -xk "PM7 threads=4  graphf allvec 1scf charge=+1"
obabel $1.xyz $2.xyz -omopcrt -O $3.dat -j -xk "PM7 threads=4  graphf allvec 1scf charge=+1" 
/opt/mopac/MOPAC2016.exe $1
/opt/mopac/MOPAC2016.exe $2
/opt/mopac/MOPAC2016.exe $3
