0001.00 FSUBF7     CF   E             WORKSTN SFILE(SFLRCD:RRN)
0002.00 FHOLIDAYS  IF   E           K DISK                     
0002.01 DRRN              S              4S 0                  
0004.00 C                   EXSR      CLEAR                    
0005.00 C                   EXSR      LOAD                     
0006.00 C                   EXSR      DSPLY                    
0008.00 C                   eval      *inlr=*on                
0009.00 C*CLEAR SUBROUTINE                                     
0009.01 C     CLEAR         begsr                              
0010.00 C                   eval      RRN=0                    
0011.00 C                   eval      *in27=*on                
0012.00 C                   write     SFLCTL                   
0013.00 C                   eval      *in27=*off               
0014.00 C                   endsr                              
0015.00 C     LOAD          BEGSR                              
0016.00 C     *LOVAL        SETLL     HOLIDAYS                 
0017.00 C                   READ      HOLIDAYS          
0018.00 C                   dow       not %eof(HOLIDAYS)
0018.01 C                   eval      RRN=RRN+1         
0019.00 C                   eval      $DAY=DAY          
0020.00 C                   eval      $DATE=DATE        
0021.00 C                   eval      $REMARKS=REMARKS  
0022.00 C                   WRITE     SFLRCD            
0023.00 C                   READ      HOLIDAYS          
0025.00 C                   ENDDO                       
0027.00 C                   ENDSR                 
0028.00 C*DSPLY SUBROUTINE                        
0029.00 C     DSPLY         BEGSR                 
0029.01 C                   dow       *in03=*off  
0030.00 C                   eval      *in26=*on   
0031.00 C                   if        RRN>0       
0032.00 C                   eval      *in25=*on   
0033.00 C                   else                  
0034.00 C                   eval      *in25=*off  
0034.01 C                   endif             
0035.00 C                   WRITE     FOOTER  
0036.00 C                   exfmt     SFLCTL  
0036.01 C                   enddo             
0037.00 C                   endsr             
