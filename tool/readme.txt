Warning! This is not working properly, we need ota_tool from TR6260, but the one we have is from ECR6600.
And while it recognizes TR6260, the algorithm it uses is too 'new' for any available bootloaders for TR6260.

./ota_tool partition.bin current.bin new.bin OpenTR6260_ota.img

To bypass bootloader error, manually patch at addr 0x07 from 0x03 to 0x01. This byte is algorithm version.
Now bootloader check will be successful and it says that OTA is done, but that is false.
Log:
patch checking ...
patch check pass
update begin ...
OTA Update Done
