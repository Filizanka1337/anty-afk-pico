import time
import usb_hid
from adafruit_hid.mouse import Mouse

# Ustawienia myszki
mouse = Mouse(usb_hid.devices)

# Pętla nieskończona
while True:
    # Poruszanie myszką w prawo
    mouse.move(x=5)

    # Poczekaj 0,1 sekundy
    time.sleep(0.1)

    # Poruszanie myszką w lewo
    mouse.move(x=-5)

    # Poczekaj 0,1 sekundy
    time.sleep(0.1)
