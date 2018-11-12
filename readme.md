# Blink Application

Example of a minimal blink application using the WiringPi library depending on the architecture of the device.
It outputs a ``HIGH``/``LOW`` message and uses a delay and a blinking LED if compiled for Raspberry Pi (Tested with RPi 3 ``armv7hf``).

This example is used to show how cross-building can be achieved using [Conan](https://conan.io) to manage C/C++ dependencies in your
projects.

## Jenkins

This repository provides a *Jenkinsfile* that can be used to configure a Jenkins Multibranch job that will build the application inside a
Docker container configured with the cross-building toolchain for Raspberry Pi (``gcc 6``, ``armv7hf``).

## LICENSE

[MIT](LICENSE)