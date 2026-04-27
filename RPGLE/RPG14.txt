0001.00 FSCREEN6   CF   E             WORKSTN                   
0002.00 FCOMPOFF   UF A E           K DISK                      
0003.00 D$MSG             S             30A                     
0004.00 C                   dow       *in03=*off                
0005.00 C                   EVAL      $MSG=*BLANKS              
0006.00 C                   EXFMT     SCR6                      
0007.00 C                   if        $WRKDATE=*zeros           
0008.00 C                   eval      $MSG='ENTER WORKED DATE'  
0008.01 C                   EXFMT     SCR6                      
0009.00 C                   iter                                
0010.00 C                   endif                               
0011.00 C                   if        $NOOFDAYS<=0              
0012.00 C                   eval      $MSG='ENTER NO OF DAYS'   
0012.01 C                   EXFMT     SCR6                      
0013.00 C                   iter                                
0014.00 C                   endif                               
0015.00 C                   if        $REASON=*blanks         
0016.00 C                   eval      $MSG='ENTER REASON'     
0016.01 C                   EXFMT     SCR6                    
0017.00 C                   iter                              
0018.00 C                   endif                             
0019.00 C                   if        $PRJCTID=*zeros         
0020.00 C                   eval      $MSG='ENTER PROJECT ID' 
0020.01 C                   EXFMT     SCR6                    
0021.00 C                   iter                              
0022.00 C                   endif                     
0022.01 C                   EVAL      WRKDATE=$WRKDATE
0022.02 C                   EVAL      REASON=$REASON  
0022.03 C                   EVAL      PRCTID=$PRJCTID 
0022.04 C                   IF        $NOOFDAYS=1     
0022.05 C                   EVAL      DAYTYPE='F'     
0022.06 C                   ELSE                      
0022.07 C                   EVAL      DAYTYPE='H'     
0022.08 C                   ENDIF                     
0022.09 C                   EVAL      STATUS='P'                 
0022.10 C                   EVAL      EMPID=101                  
0023.00 C                   write     PFREC                      
0024.00 C                   EVAL      $MSG='APPLIED SUCCESSFULLY'
0024.01 C                   EXFMT     SCR6                       
0024.02 C                   if        *in05=*on                  
0024.03 C                   eval      $WRKDATE=*zeros            
0024.04 C                   eval      $NOOFDAYS=*zeros           
0024.05 C                   eval      $REASON=*BLANKS            
0024.06 C                   eval      $PRJCTID=*zeros  
0024.07 C                   endif                      
0024.08 C                   if        *in12=*on        
0024.09 C                   leave                      
0025.00 C                   endif                      
0025.01 C                   enddo                      
0026.00 C                   eval      *inlr=*on        
