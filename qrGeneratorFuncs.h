
//Write the passed in matrix to a 25x25 pbm file
void writePBM(char code[25][25]);

//Request a user inputted url and clean it up for later processing
char* requestUrl();

//Convert a provided url into an encoded matrix representing the values of a QR code
void urlToMatrix(char* url);