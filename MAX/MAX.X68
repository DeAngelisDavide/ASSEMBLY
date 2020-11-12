*-----------------------------------------------------------
* Title      : TROVARE IL MAX TRA DUE ELEMENTI
* Written by : DAVIDE DE ANGELIS
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:     MOVE N1 , D0 *SALVATAGGIO DEL PRIMO VALORE IN D0
           CMP N2 , D0  *CONFRONTO TRA IL SECONDO VALORE E IL PRIMO
           BLT ELSE   *SALTO AD ELSE SE N2 E' MAGGIORE DI D0(N1)
           MOVE D0 , MAX *SALVATAGGIO DI D0 IN MAX
           JMP END   *SALTO ALLA FINE

ELSE:
           MOVE N2 , MAX  *SALVATAGGIO DI D0 IN MAX
           MOVE MAX , D0 *SALVATAGGIO DEL MAX IN D0 (SOLO PER VERIFICARE L'ESECUZIONE)
               
N1 DC $0A  *PRIMO VALORE
N2 DC $0F  *SECONDO VALORE
MAX DS 1 

END
    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
