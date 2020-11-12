    ORG 8000    *SE Q == 4 ALLORA X = 5 ; ALTRIMENTI X = Y
Q DC  $4
X DS  1   *STO ALLOCANDO UN BYTE
Y DC  $3
  
    ORG    $1000
START:  MOVE Q,D0   *SALVATAGGIO DI Q IN D0
        CMPI  #4,D0  *VERIFICA SE D0 E' 4
        BNE ELSE   *SALTO A ELSE SE D0 != DA 4 
        MOVE #5,D1  *SALVATAGGIO DI 5 IN D1
        MOVE D1,X   *SALVATAGGIO DI D1 IN X
        JMP END


ELSE:   MOVE Y,D1  *SALVATAGGIO DI Y IN D1
        MOVE D1,X  *SALVATAGGIO DI D1 IN X


    SIMHALT            
END
    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
