*-----------------------------------------------------------
* Title      : SUM = 0; FOR J = 5 TO 19 ; SUM = SUM + X[J]*Y[J]; END FOR 
* Written by : DAVIDE DE ANGELIS
* Date       : 12/11/2020
* Description:
*-----------------------------------------------------------
    ORG    $8000
START:   CLR D3 *D3 = PRODOTTO DEGLI ARRAY
         MOVE LEN , D0   *D0 = LEN
         MOVE SUM , D1   *D1 = SUM
         LEA ARRAYX , A1 *A1 = ARRAYX
         LEA ARRAYY , A2 *A2 = ARRAYY
         
LOOP:   MOVE 10(A1,D2) , D3  *SPIAZZAMENTO CHE FA PARTIRE DALL'ELEMENTO 5 ( WORD = 2 )
        MULU 10(A2,D2) , D3  *MOLTIPLICAZIONE ARRAYX[J]*ARRAYY[J]
        ADD D3 , D1   *SOMMA IL PRODOTTO DEGLI ARRAY A SUM 
        ADD #2 , D2   *INCREMENTO DI UNA POSIZIONE (D2 = INDICE)
        DBRA D0 , LOOP  *SALTO A LOOP SE D0 (LEN) != -1 E DECREMENTO DI D0
   

END
    SIMHALT  
ARRAYX DC 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20     
ARRAYY DC 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20 
SUM DS 1
LEN DC 14    *LUNGHEZZA ARRAY

    END    START        ; last line of source





*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
