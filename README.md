cd into the directory
run:
go get

The cgo compilation step will fail.  Next important steps:
As listed in the `ws2811.go` file ensure to copy
`ws2811.h`, `rpihw.h`, and `pwm.h` in a GCC include
path (e.g. `/usr/local/include`) and
`libws2811.a` in a GCC library
path (e.g. `/usr/local/lib`).

The header files are in /home/pi/go/pkg/mod/github.com/jgarff/rpi_ws281x......

The library (.a) file is in /home/pi/go/pkg/mod/github.com/jgarff/rpi_ws281x.../

Run go get one more time, and it should succeed, but
if you still have trouble, cd to /home/pi/rpi_ws281x/

run sudo apt-get install scons

after the installation, from the same folder run scons

now you can change to /home/pi/pi-led/ and run go get and go build
