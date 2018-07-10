; Colton Hurst
; Pep8 For loop example
; This prints 0-9
; This uses the stack pointer for local variables

                 BR main
numLoops:        .EQUATE 10
x:               .EQUATE 0
main:            SUBSP 2, i
for:             LDa x, s
                 CPa numLoops, d
                 BRGE endFor
                 DECO x, s
                 CHARO '\n', i
                 LDa x, s
                 ADDa 1, i
                 STa x, s
                 BR for
endFor:          ADDSP 2, i
                 STOP
                 .END

; The above pep8 asm is roughly 'equivalent' to 
; the following C++ code
;
; #include <iostream>
; using namespace std;
;
; const numLoops = 10;
; int main(){
;   int x;
;   for (x = 0; x < numLoops; x++)
;     cout << x << endl;
;
;   return 0;
; }
