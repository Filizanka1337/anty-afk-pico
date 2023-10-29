import board
import digitalio

# Inicjalizacja pinów przycisków
przycisk_17 = digitalio.DigitalInOut(board.GP17)
przycisk_17.direction = digitalio.Direction.INPUT
przycisk_17.pull = digitalio.Pull.UP

przycisk_16 = digitalio.DigitalInOut(board.GP16)
przycisk_16.direction = digitalio.Direction.INPUT
przycisk_16.pull = digitalio.Pull.UP

while True:
    # Sprawdzenie stanów przycisków
    if not przycisk_17.value:
        print("Przycisk na pinie 17 - Tak")
    elif not przycisk_16.value:
        print("Przycisk na pinie 16 - Tak")
