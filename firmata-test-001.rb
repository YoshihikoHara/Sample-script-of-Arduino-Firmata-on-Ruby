# Author       : Yoshihiko Hara <goronyanko.h@gmail.com>
# last updated : 2018/11/29
# Overview     : Flash the light emitting diode from PC via Arduino Uno.
# License      : MIT License

require "arduino_firmata"
arduino = ArduinoFirmata.connect "/dev/tty.usb-device-name"
loop do
  arduino.digital_write 11, true
  sleep 1
  arduino.digital_write 11, false
  sleep 1
end
