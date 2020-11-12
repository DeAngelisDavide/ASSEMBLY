*-----------------------------------------------------------
* Title      : SOMMA DEGLI ELEMENTI DI UN ARRAY
* Written by : DAVIDE DE ANGELIS
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $8000
START:  LEA ARRAY , A0  *SALVATAGGIO DELL'INDIRIZZO DELL'ARRAY IN A0
        MOVE #N , D0  *D0 = LUNGHEZZA ARRAY
        CLR D1     
LOOP:
        ADD (A0)+ , D1 *SOMMA DEL VALORE DELL 'ARRAY CON D0 (SOMMA) E INCREMENTO DELL ' INDIRIZZO
        DBRA D0 , LOOP  *SALTO A LOOP SE D0 (N) != -1 E DECREMENTO DI D0
        MOVE D1 , SOMMA *SALVATAGGIO DI D0 (SOMMA DELL'ARRAY) IN SOMMA
        JMP END

            
ARRAY DC 1,2,3,4,5,6,7,8,9,10
N EQU 9  *LUNGHEZZA
SOMMA DS 1

END
    END    START        


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
