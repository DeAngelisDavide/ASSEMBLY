*-----------------------------------------------------------
* Title      : SOMMA DI DUE VALORI
* Written by : DAVIDE DE ANGELIS
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:    MOVE.B VAL1, D0  *SALVATAGGIO DI VAL1 IN D0
          ADD.B VAL2, D0   *SOMMA VAL2 E D0 (VAL1)
          MOVE.B D0, RES   *SALVATAGGIO DI D0 (RISULTATO SOMMA ) IN RES

    SIMHALT             

* Put variables and constants here
VAL1 DC.B $0F
VAL2 DC.B $03
RES DS.B 1

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
