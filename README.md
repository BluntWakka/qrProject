# qrProject
C QR code generator project for fun. Files are compiled in the c++ compiler and are labeled as ".cpp" for convenience sake due to laptop environment.

Important info:
My goal is to allow a user to input a website url and then generate the minimum 25x25 pixel image file based on the qr code that it should represent.

Preliminary research / Notes:
Qr codes for websites are in a 25x25 pixel format, that are then resized to a readable size on larger screens.

For the purpose of this project, I will be generating files in a ".pbm" file format.
This allows a plain text file containing a "P1" header, a row and column length, and subsequent ones and zeroes representing black and white pixels to be used as pixel mapping information. 
For a small image with relatively low storage costs, the plain text format seems appropriate and easy to grasp.

