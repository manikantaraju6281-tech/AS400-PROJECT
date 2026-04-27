0001.00 FLOGIN     IF   E           K DISK                 
0002.00 FSCR1      CF   E             WORKSTN              
0003.00 Dpgst            sds                               
0004.00 Dpgmname            *proc                          
0005.00 DMSG              S             20A                
0006.00 C                   eval      PGMNAME=pgmname      
0007.00 C                   dow       *IN03=*OFF           
0008.00 C                   EXFMT     SCREEEN1             
0009.00 C     $USERNAME     CHAIN     LOGIN                
0010.00 C                   IF        %FOUND(LOGIN)        
0011.00 C                   IF        $PASSWORD=PASSWORD   
0012.00 C                   CALL      'RPG4'               
0013.00 C                   LEAVE                          
0013.01 C                   eval      MSG='LOGIN SUCESS'   
0015.00 C                   else                           
0016.00 C                   eval      MSG='WRONG PASSWORD' 
0017.00 C                   endif                                 
0018.00 C                   else                                  
0019.00 C                   eval      MSG='INVALID CREDENTIALS'   
0020.00 C                   endif                                 
0021.00 C*F12                                                     
0022.00 C                   IF        *IN12=*ON                   
0023.00 C                   LEAVE                                 
0024.00 C                   ENDIF                                 
0025.00 C*F5                                                      
0026.00 C                   IF        *IN05=*ON          
0027.00 C                   EVAL      $USERNAME=*BLANKS  
0028.00 C                   EVAL      $PASSWORD=*BLANKS  
0029.00 C                   EVAL      MSG=*BLANKS        
0030.00 C                   ENDIF                        
0031.00 C                   enddo                        
0032.00 C                   eval      *inlr=*on                                                                            
