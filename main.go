package main

import (
	"fmt"
	"os"
	"strconv"
	"math"

	"github.com/jgarff/rpi_ws281x/golang/ws2811"
)

const (
	pin        = 18 // See hardware description
	count      = 4 // number of LEDs on the strip
	brightness = 255 // decrease this to run the LEDs at reduced brightness
)

func main(){
	args := os.Args[1:] // Ignore the name of the program, Args[0]
	var mybytes []uint8
	for _, strnum := range args {
		num, err := strconv.Atoi(strnum)
		if nil == err {
			if (num <= 255) && (num >= 0) {
				//fmt.Println(num)
				mybytes = append(mybytes, uint8(num))
			}
		}
	}
	numcolorwords := int(math.Ceil(float64(len(mybytes)) / 3))
	fmt.Print("LEDs:", numcolorwords)
	mywords := make([]uint32, numcolorwords)
	for i, onenum := range mybytes {
		mywords[i/3] = mywords[i/3] + (uint32(onenum) << (8*(i%3)))
	}
	fmt.Println("   ", mywords)
	SetLeds(mywords)
}

// SetLeds sets a string of RGB LEDs to an array of colors in u32 format
func SetLeds(colors []uint32) {
	defer ws2811.Fini()
	err := ws2811.Init(pin, count, brightness)
	if err != nil {
		fmt.Println(err)
		return
	}
	for i := 0; i < len(colors); i++ {
		ws2811.SetLed(i, colors[i])
		err := ws2811.Render()
		if err != nil {
			ws2811.Clear()
			fmt.Println(err)
		}
	}
}

/*
HARDWARE NOTES:
This was tested with a Raspberry Pi 3, Model B+, and also on a Raspberry Pi 4
The LED string (only a few LEDs, to avoid overloading the available power supply current)
is connected to 3 of the GPIO pins.  The GPIO only drive 3.3V logic, and the LEDs are
typically powered by 5.0V, making the 3.3V drive pin "on the edge" and not quite
high enough to drive the LED reliably.  To overcome this issue most easily, run the LED
string from a slightly reduced supply voltage.  The easiest way is to use a basic silicon
diode (forward voltage drop is in the range of 0.6 to 0.7 V) between the 5V power of
the Pi and the 5V input of the LED string.  Anode of the diode connects to 5V power
on the Pi, and the cathode (the direction the arrow points, and the end of the diode
with the polarity marking) is connected to the 5V input of the LED strip.
LED strip 5V power (through the diode) connects to pin 2 or 4 (+5V) of the Pi
LED strip ground connects to pin 6 (or any of the other ground pins)
LED strip control line connects to pin 12 of the Pi (GPIO18, PCM_CLK)
This is why the "pin" constant above is 18 (= GPIO18)
The ws2811 library only supports certain GPIO pins for best performance, see
documentation for that library for details.
*/