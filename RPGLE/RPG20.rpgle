0001.00 FSCREEN7   CF   E             WORKSTN              
0002.00 FLOGIN     UF   E           K DISK                 
0002.01 D$MSG             S             40A                
0003.00 C                   DOW       *IN03=*OFF           
0004.00 C                   EXFMT     SCR7                 
0004.01 C                   EVAL      USERNAME=$USERNAME   
0005.00 C     USERNAME      CHAIN     LOGIN                
0006.00 C                   IF        NOT %FOUND(LOGIN)    
0007.00 C                   EVAL      $MSG='USER NOT FOUND'
0008.00 C                   ITER                           
0009.00 C                   ENDIF                          
0010.00 C                   IF        $CURPWD<>PASSWORD    
0011.00 C                   EVAL      $MSG='PASSWORD WRONG'
0012.00 C                   ITER                           
0013.00 C                   ENDIF                          
0014.00 C                   IF        $NEWPWD=PASSWORD     
0015.00 C                   EVAL      $MSG='OLD PASSWORD NOT ALLOWED'  
0016.00 C                   ITER                                       
0017.00 C                   ENDIF                                      
0018.00 C                   IF        $NEWPWD<>$VERPWD                 
0019.00 C                   EVAL      $MSG='NEW AND VER PWD MUST MATCH'
0020.00 C                   ITER                                       
0021.00 C                   ENDIF                                      
0022.00 C                   EVAL      PASSWORD=$NEWPWD                 
0023.00 C                   UPDATE    LOGREC                           
0024.00 C                   EVAL      $MSG='UPDATED SUCCESSFULLY'
0025.00 C                   IF        *IN12=*ON                  
0026.00 C                   LEAVE                                
0027.00 C                   ENDIF                                
0028.00 C                   ENDDO                                
0029.00 C                   EVAL      *INLR=*ON                  
