; Colton Hurst
; Pep8 do while loop example
; This prints 0-9
; This uses the stack pointer for local variables

                 BR main
numLoops:        .EQUATE 10
x:               .EQUATE 0
main:            SUBSP 2, i
do:              DECO x, s
                 CHARO '\n', i
                 LDa x, s
                 ADDa 1, i
                 STa x, s
while:           LDa x, s
                 CPa numLoops, d
                 BRLT do
endFor:          ADDSP 2, i
                 STOP
                 .END

; The above pep9 asm is roughly 'equivalent' to
; the following C++ code
;
; #include <iostream>
; using namespace std;

; const numLoops = 10;
; int main(){
;   int x = 0;
;   do {  
;     cout << x << endl;
;     ++x;
;   } while (x < numLoops);
;
;   return 0;
; }
