#include <iostream>
  2 #include <stdlib.h>
  3 #include <time.h>
  4 using namespace std;
  5 
  6 int main () {
  7         srand(time(0));
  8 
  9         const int size = 5;
 10 
 11         int arr[size][size];
 12 
 13 
 14         for(int i = 0;i < size;i++) {
 15 
 16                 for(int j = 0;j < size;j++) {
 17 
 18 
 19                         arr[i][j] = rand () % 9 + 1;
 20 
 21                         cout  << arr[i][j] << "  ";
 22                 }
 23 
 24                 cout << endl;
 25         }
 26 
 27 
 28         cout << endl<<endl;
 29         int m;
 30 
 31 
 32         for(int i = 0; i < size / 2; i++) {
 33                 
 34                 for(int j = 0; j < size; j++) {
 35         
 36                         m = arr[size - i - 1][size - j - 1];
 37                  
 38                         arr[size - i - 1][size - j - 1] = arr[i][j];
 39                  
 40                         arr[i][j] = m;
 41                 }
 42         
 43         }
 44         
 45         
 46         
 47         for(int i = 0;i < size;i++) {
 48          
 49                 if(size % 2 != 0 && i == size / 2) {
            for(int  k = 0; k < size / 2; k++) {
 52 
 53                                 m = arr[i][k];
 54 
 55                                 arr[i][k] = arr[i][size - k - 1];
 56 
 57                                 arr[i][size - k - 1] = m;
 58                         }
 59 
 60                 }
 61 
 62 
 63                 for(int j = 0;j < size;j++) {
 64 
 65                         cout  << arr[i][j] << "  ";
 66                 }
 67 
 68                 cout << endl;
 69         }
 70 
 71 
 72 return 0;
 73 
 74 }
                                                                                                                                                                     74,1          Bot

