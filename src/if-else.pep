         BR main
number:  .EQUATE 0
main:    SUBSP 2, i          ; Allocate room on the stack
         DECI number, d
         LDa number, d
         ANDa 0x0001, i      ; do % 2 (mod)
         STa number, d
         BRNE isOdd          ; if Z != 1, go to isOdd 
         STRO eOut, d        ; Z = 0, so print even 
         BR done       
isOdd:   STRO oOut, d 
done:    ADDSP 2, i          ; Deallocate room from the stack
         STOP
eOut:    .ASCII "Even\x00"
oOut:    .ASCII "Odd\x00"
         .END

; The above Pep8 ASM is equivalent to the following C++ code:

;#include <iostream>
;using namespace std;
;int main() {
;  int number;
;  cin >> number;
;  if (number % 2 == 0)
;    cout << "Even";
;  else
;    cout << "Odd";
;  return 0;
;}
