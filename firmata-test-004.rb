# Author       : Yoshihiko Hara <goronyanko.h@gmail.com>
# last updated : 2018/12/5
# Overview     : Control Passive Infrared Ray(HC-SR501) with Ruby on the PC.
# License      : MIT License

require "arduino_firmata"

PIN_NUMBER_OF_A0 = 2
ALERT_MESSAGE    = "There are intruders !"
DELAY_TIME       = 1

# Prepare to control Arduino from PC.
arduino = ArduinoFirmata.connect "/dev/tty.usb-device-name"

while true

  # Search for something emitting infrared rays.
  if true == arduino.digital_read PIN_NUMBER_OF_A0
    puts ALERT_MESSAGE
  end

  # Stop operation for 1 S.
  sleep DELAY_TIME

end
