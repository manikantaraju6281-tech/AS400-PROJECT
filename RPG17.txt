0001.00 FSUBF9     CF   E             WORKSTN SFILE(SFLRCD:RRN)
0002.00 FCOMPOFF   UF A E           K DISK                     
0002.01 DRRN              S              4S 0                  
0003.00 C                   exsr      clear                    
0004.00 C                   exsr      load                     
0005.00 C                   exsr      dsply                    
0006.00 C                   eval      *inlr=*on                
0007.00 C*CLEAR SUBROUTINE                                     
0007.01 C     clear         begsr                              
0008.00 C                   eval      RRN=0                    
0009.00 C                   eval      *in27=*on                
0010.00 C                   write     sflctl                   
0011.00 C                   eval      *in27=*off               
0012.00 C                   endsr                              
0013.00 C*LOAD SUBROUTINE                                      
0014.00 C     load          begsr                              
0015.00 C     *LOVAL        SETLL     COMPOFF          
0016.00 C                   read      COMPOFF          
0017.00 C                   dow       not %eof(COMPOFF)
0017.01 C                   EVAL      RRN=RRN+1        
0018.00 C                   eval      $DATE=WRKDATE    
0019.00 C                   eval      $ADJUNIT=TOTALDAY
0020.00 C                   eval      $REASON=REASON   
0021.00 C                   eval      $STATUS=STATUS   
0024.00 C                   WRITE     SFLRCD           
0024.01 C                   READ      COMPOFF    
0027.00 C                   enddo                
0028.00 C                   endsr                
0029.00 C*DSPLY SUBROUTINE                       
0030.00 C     dsply         begsr                
0030.01 C                   DOW       *IN03=*OFF 
0031.00 C                   eval      *in26=*on  
0032.00 C                   if        RRN>0      
0033.00 C                   eval      *in25=*on  
0034.00 C                   else                     
0035.00 C                   eval      *in25=*off     
0036.00 C                   endif                    
0037.00 C                   write     FOOTER         
0038.00 C                   EXFMT     SFLCTL         
0039.00 C                   READC     SFLRCD         
0040.00 C                   DOW       NOT %EOF(SUBF9)
0041.00 C                   IF        $OPT=1         
0042.00 C     EMPID         SETLL     COMPOFF        
0043.00 C     EMPID         READE     COMPOFF      
0044.00 C                   DOW       NOT %EOF     
0044.01 C                   IF        $DATE=WRKDATE
0045.00 C                   IF        STATUS='P'   
0046.00 C                   EVAL      STATUS='C'   
0047.00 C                   UPDATE    PFREC        
0048.00 C                   ENDIF                  
0049.00 C                   LEAVE                  
0050.00 C                   ENDIF                  
0050.01 C                   READE     COMPOFF  
0050.02 C                   ENDDO              
0050.03 C                   ENDIF              
0051.00 C                   READC     SFLRCD   
0052.00 C                   ENDDO              
0053.00 C                   EXSR      clear    
0054.00 C                   EXSR      load     
0055.00 C                   ENDDO              
0056.00 C                   ENDSR              
                                                       
