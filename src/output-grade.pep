; Colton Hurst
; This pep8 asm uses the stack pointer for local variables

         BR main
grade:   .EQUATE 0
main:    SUBSP 2, i
         DECI grade, s
         LDa grade, s
         CPa 90, i
         BRLT elseIf1
         CHARO 'A', i        ; if grade >= 90
         BR endIf
elseIf1: LDa grade, s
         CPa 80, i
         BRLT elseIf2
         CHARO 'B', i        ; if grade >= 80
         BR endIf
elseIf2: LDa grade, s
         CPa 70, i
         BRLT elseIf3
         CHARO 'C', i        ; if grade >= 70
         BR endIf
elseIf3: LDa grade, s
         CPa 60, i
         BRLT else
         CHARO 'D', i        ; if grade >= 60
         BR endIf
else:    CHARO 'F', i
endIf:   CHARO '\n', i
         ADDSP 2, i
         STOP
         .END
; The above pep8 asm is roughly 'equivalent' to this C++ code:
; #include <iostream>
; using namespace std;
;
; int main() {
;   int grade;
;   cin >> grade;
;   if (grade >= 90)
;     cout << 'A';
;   else if (grade >= 80)
;     cout << 'B';
;   else if (grade >= 70)
;     cout << 'C';
;   else if (grade >= 60)
;     cout << 'D';
;   else
;     cout << 'F';
;   cout << endl;
;   return 0;
