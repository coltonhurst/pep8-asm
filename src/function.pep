         BR main
myAge:   .BLOCK 2            ;global variable #2d

; *** void ShowVal(int age)
age:     .EQUATE 2           ;formal parameter #2d
showVal: STRO ageO, d        ;cout << "Age: "
         DECO age, s         ;<< age
         CHARO '\n', i       ;<< endl
         RET0                ;pop return address
ageO:    .ASCII "Age: \x00"

; *** int main()
main:    STRO ageQ, d        ;cout << "Enter age: "
         DECI myAge, d       ;cin >> myAge
         LDa myAge, d        ;call by value
         STa -2, s
         SUBSP 2, i          ;push #age
         CALL showVal        ;showVal(myAge)
         ADDSP 2, i          ;pop #age
         STOP
ageQ:    .ASCII "Enter age: \x00"
         .END

;The above code is equivalent to this C++ code... (for the most part)
;This code is from comp architecture class
;
;#include <iostream>
;using namespace std;
;
;int myAge;
;
;void ShowVal(int age){
;  cout << "Age:" << age << endl;
;}
;
;int main() {
;  cout << "Enter age: ";
;  cin >> myAge;
;  ShowVal(myAge);
;  return 0;
;}
