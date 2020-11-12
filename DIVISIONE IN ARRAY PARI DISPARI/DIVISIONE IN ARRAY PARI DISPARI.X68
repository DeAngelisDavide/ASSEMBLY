*-----------------------------------------------------------
* Title      : DIVISIONE DEGLI ELEMENTI DI UN ARRAY IN ELEMENTI PARI E DISPARI
* Written by : DAVIDE DE ANGELIS
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:   LEA ARRAY , A0     *SALVATAGGIO DELL'INDIRIZZO DEGLI ARRAY NEI REGISTRI D'INDIRIZZO 
         LEA ARRAYP , A1
         LEA ARRAYD , A2
         MOVE #LEN , D0    *D0 = LUNGHEZZA ARRAY
LOOP:
         MOVE (A0)+ , D1     *ELEMENTO DELL'ARRAY SALVATO IN D1 E SUCCESSIVO INCREMENTO DELL'INDIRIZZO
         BTST #0 , D1      *BITTEST : 1 = DISPARI , 0 = PARI
         BNE DISPARI       *SALTO A DISPARI SE FLAG Z = 1
         ADD #1 , LENP     
         MOVE D1 , (A1)+   *SALVATAGGIO DDEL VALORE NELL'ARRAY PARI
         JMP TEST      *SALTO ALL'ETICHETTA TEST
         
DISPARI: ADD #1 , LEND   
         MOVE D1 , (A2)+   *SALVATAGGIO DDEL VALORE NELL'ARRAY PARI

TEST:    DBRA D0 , LOOP    *SALTO A LOOP SE D0 (LEN) != -1 E DECREMENTO DI D0

END    SIMHALT             ; halt simulator

ARRAY DC.W 1,2,3,4,5,6,7,8,9,10
ARRAYP DS.W 10
ARRAYD DS.W 10
LEN EQU 9   *LUNGHEZZA
LENP DS.W 1
LEND DS.W 1

    END    START        ; last line of source




*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
