import time
import usb_hid
from adafruit_hid.keyboard import Keyboard
from adafruit_hid.keycode import Keycode

kbd = Keyboard(usb_hid.devices)

while True:
    kbd.press(Keycode.A)
    time.sleep(0.1)
    kbd.release(Keycode.A)
    time.sleep(0.1)