# Author       : Yoshihiko Hara <goronyanko.h@gmail.com>
# last updated : 2018/12/3
# Overview     : Control the servomotor with Ruby on the PC.
# License      : MIT License

require "arduino_firmata"

# Minimum value and maximum value of data that each device can return
PIN_NUMBER_OF_A0               = 9
DELAY_TIME                     = 1

# Prepare to control Arduino from PC.
arduino = ArduinoFirmata.connect "/dev/tty.usb-device-name"

while true

  # Generate rotation angle randomly
  angle = rand 180
  puts "servo angle #{angle}"

  # Rotate the servomotor by the generated rotation angle.
  arduino.servo_write PIN_NUMBER_OF_A0, angle

  # Stop operation for 1 S.
  sleep DELAY_TIME

end
