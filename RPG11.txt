0001.00 FSUBF6     CF   E             WORKSTN SFILE(SFLRCD:RRN)
0002.00 FHOLIDAYS  IF   E           K DISK                     
0002.01 DRRN              S              4S 0                  
0003.00 C                   exsr      clear                    
0004.00 C                   exsr      load                     
0005.00 C                   exsr      dsply                    
0006.00 C                   eval      *inlr=*on                
0007.00 C*CLEAR SUBROUTINE                                     
0008.00 C     clear         begsr                              
0009.00 C                   eval      RRN=0                    
0010.00 C                   eval      *in27=*on                
0010.01 C                   WRITE     SFLCTL                   
0012.00 C                   eval      *in27=*off               
0013.00 C                   endsr                              
0014.00 C*LOAD SUBROUTINE                                      
0015.00 C     load          begsr                              
0016.00 C     *loval        setll     HOLIDAYS            
0017.00 C                   read      HOLIDAYS            
0018.00 C                   dow       not %eof(HOLIDAYS)  
0018.01 C                   clear                   SFLRCD
0019.00 C                   eval      $DATE=DATE          
0020.00 C                   eval      $DAY=DAY            
0021.00 C                   eval      $REMARKS=REMARKS    
0021.01 C                   eval      RRN=RRN+1           
0023.00 C                   write     SFLRCD              
0023.01 C                   read      HOLIDAYS    
0025.00 C                   enddo                 
0026.00 C                   endsr                 
0027.00 C*DISPLAY SUBROUTINE                      
0028.00 C     dsply         begsr                 
0028.01 C                   dow       *in03=*off  
0029.00 C                   eval      *in26=*on   
0030.00 C                   if        RRN>0       
0031.00 C                   eval      *in25=*on   
0032.00 C                   else                 
0033.00 C                   eval      *in25=*off 
0034.00 C                   endif                
0035.00 C                   write     FOOTER     
0036.00 C                   exfmt     SFLCTL     
0036.01 C*F12 KEY                                
0036.02 C                   if        *in12=*on  
0036.04 C                   leave                
0036.05 C                   endif                
0036.06 C*F12 KEY                               
0036.07 C                   if        *in05=*on 
0036.08 C                   exsr      clear     
0036.09 C                   exsr      load      
0036.10 C                   eval      *in05=*off
0036.11 C                   iter                
0036.12 C                   endif               
0037.00 C                   enddo               
0038.00 C                   endsr               
