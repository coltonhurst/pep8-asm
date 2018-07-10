; Colton Hurst
; This pep8 asm uses the stack pointer for local variables

         BR main
limit:   .EQUATE 5
number:  .EQUATE 0
main:    SUBSP 2, i
         DECI number, s
while:   LDa number, s
         CPa limit, i
         BRGE endWhile  ; if the number is 5 or greater, then branch (N = 0)
         LDa number, s
         ADDa 1, i      ; number++
         STa number, s
         DECO number, s ; cout << number
         CHARO ' ', i   ; cout << ' '
         BR while       ; keep looping
endWhile:ADDSP 2, i
         STOP
         .END

; The above pep8 asm is roughly 'equivalent' to this C++ code:
; #include <iostream>
; using namespace std;
;
; const int limit = 5;
;
; int main() {
;   int number;
;
;   cin >> number;
;
;   while (number < limit) {
;     number++;
;     cout << number << ' ';
;   }
;
;   return 0;
; }
; note- my pep8 asm won't accept negative ints
