; Colton Hurst
; This pep8 asm uses the stack pointer for local variables

         BR main
cop:     .EQUATE 2
driver:  .EQUATE 0
main:    SUBSP 4, i
         LDa driver, s
         ADDa 40, i
         STa driver, s
while:   LDa cop, s
         CPa driver, s
         BRGT endWhile
         LDa cop, s
         ADDa 25, i
         STa cop, s
         LDa driver, s
         ADDa 20, i
         STa driver, s
         BR while       ; keep looping
endWhile:DECO cop, s
         ADDSP 4, i
         STOP
         .END

; The above pep8 asm is roughly 'equivalent' to this C++ code:
; #include <iostream>
; using namespace std;
;
; const int limit = 5;
;
; int main(){
;         int cop;
;    int driver; 
;
;    cop = 0;
;    driver = 40;
;
;    while (cop <= driver) {
;        cop += 25;
;        driver += 20;
;    }
;
;    cout << cop;
;
;    return 0;
;}
