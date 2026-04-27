0001.00 FSUBF4     CF   E             WORKSTN SFILE(SFLRCD:RRN) 
0002.00 FLEAVES    UF A E           K DISK                      
0002.01 FEMPMASTER IF   E           K DISK                      
0003.00 DRRN              S              4S 0                   
0003.01 DMSG              S             30A                     
0004.00 C                   exsr      clear                     
0005.00 C                   exsr      load                      
0006.00 C                   exsr      process                   
0007.00 C                   eval      *inlr=*on                 
0008.00 C*CLEAR SUBROUTINE                                      
0009.00 C     clear         begsr                               
0009.01 C                   eval      RRN=0                     
0009.02 C                   eval      *in27=*on                 
0009.03 C                   write     SFLCTL                    
0009.04 C                   eval      *in27=*off                
0010.00 C                   endsr                               
0011.00 C*LOAD SUBROUTINE                                
0011.01 C     load          begsr                        
0011.02 C     *loval        setll     LEAVES             
0011.03 C                   read      LEAVES             
0011.04 C                   dow       not %eof(LEAVES)   
0011.06 C                   eval      $EMPID=EMPID       
0011.07 C                   eval      $FROMDATE=FROMDATE 
0011.08 C                   eval      $TODATE=TODATE     
0011.09 C                   eval      $TOTALDAYS=TOTALDAY
0011.10 C                   eval      $STATUS=STATUS    
0011.17 C     EMPID         CHAIN     EMPMASTER         
0011.18 C                   IF        %FOUND(EMPMASTER) 
0011.19 C                   eval      $EMPNAME=EMPNAME  
0011.20 C                   endif                       
0011.21 C                   eval      RRN=RRN+1         
0011.22 C                   write     SFLRCD            
0011.23 C                   read      LEAVES            
0011.24 C                   enddo                       
0040.00 C                   ENDSR               
0040.01 C*PROCESS SUBROUTINE                    
0040.02 C     process       begsr               
0040.03 C                   dow       *in03=*off
0040.04 C                   exsr      dsply     
0040.05 C                   IF        *IN12=*ON 
0040.06 C                   LEAVE               
0040.07 C                   ENDIF               
0040.08 C                   if        *in05=*on 
0040.09 C                   exsr      clear            
0040.10 C                   exsr      load             
0040.11 C                   eval      *in05=*off       
0040.12 C                   ITER                       
0040.13 C                   ENDIF                      
0040.14 C                   IF        RRN>0            
0040.15 C                   READC     SFLRCD           
0040.16 C                   DOW       NOT %EOF         
0040.17 C                   if        $OPT1=1OR $OPT1=2
0040.18 C                   exsr      load1        
0040.19 C                   endif                  
0040.20 C                   IF        $OPT1=5      
0040.22 C                   exsr      viewdesc     
0040.23 C                   endif                  
0040.24 C                   eval      $OPT1=*zeros 
0040.25 C                   UPDATE    SFLRCD       
0040.26 C                   READC     SFLRCD       
0040.27 C                   enddo                  
0040.18 C                   exsr      load1        
0040.19 C                   endif                  
0040.20 C                   IF        $OPT1=5      
0040.22 C                   exsr      viewdesc     
0040.23 C                   endif                  
0040.24 C                   eval      $OPT1=*zeros 
0040.25 C                   UPDATE    SFLRCD       
0040.26 C                   READC     SFLRCD       
0040.27 C                   enddo                  
0040.28 C                   endif              
0040.29 C                   exsr      clear    
0040.30 C                   exsr      load     
0040.31 C                   enddo              
0040.32 C                   endsr              
0040.33 C*DISPLAY                              
0040.34 C     dsply         begsr              
0040.35 C                   eval      *in26=*on
0040.36 C                   if        RRN>0    
0040.37 C                   eval      *in25=*on    
0040.38 C                   else                   
0040.39 C                   eval      *in25=*off   
0040.40 C                   endif                  
0040.41 C                   write     FOOTER       
0040.42 C                   exfmt     SFLCTL       
0040.43 C                   endsr                  
0041.00 C     load1         begsr                  
0041.01 C                   eval      EMPID=$EMPID 
0041.02 C     EMPID         CHAIN     LEAVES        
0043.00 C                   if        %found(LEAVES)
0044.00 C                   if        $OPT1=1       
0045.00 C                   eval      STATUS='A'    
0046.00 C                   elseif    $OPT1=2       
0047.00 C                   eval      STATUS='D'    
0047.01 C                   else                    
0047.02 C                   return                  
0048.00 C                   endif                   
0049.00 C                   UPDATE    PFREC         
0050.00 C                   endif                   
0051.00 C                   endsr                   
0052.00 C*VIEW DESC                                 
0053.00 C     viewdesc      begsr                   
0053.02 C                   EVAL      EMPID=$EMPID  
0053.03 C     EMPID         CHAIN     LEAVES        
0054.00 C                   IF        %FOUND(LEAVES)
0055.00 C                   EVAL      $EMPID1=EMPID 
0055.01 C                   EVAL      $FROMDATE1=FROMDATE 
0055.02 C                   EVAL      $FRDTYPE1=FROMDAYTYP
0055.03 C                   EVAL      $TODATE1=TODATE     
0055.04 C                   EVAL      $TOTDAYS1=TOTALDAY  
0055.05 C                   EVAL      $STATUS1=STATUS     
0055.06 C                   EVAL      $LTYPE1=LEAVETYPE   
0055.07 C                   EVAL      $REASON1=REASON     
0055.08 C     EMPID         CHAIN     EMPMASTER           
0055.09 C                   IF        %FOUND(EMPMASTER)   
0056.00 C                   EVAL      $EMPNAME1=EMPNAME 
0056.01 C                   EVAL      $BALANCE1=BALANCE 
0056.02 C                   ENDIF                       
0061.00 C                   ENDIF                       
0061.01 C                   DOW       *IN03=*OFF        
0062.00 C                   EXFMT     LEAVEDESC         
0062.01 C                   if        $OPT1=1           
0062.02 C                   eval      $STATUS1='A'      
0062.03 C                   elseif    $OPT1=2           
0062.04 C                   eval      $STATUS1='D'   
0062.05 C                   endif                    
0062.06 C     EMPID         CHAIN     LEAVES         
0062.07 C                   IF        %FOUND(LEAVES) 
0062.08 C                   UPDATE    PFREC          
0062.09 C                   ENDIF                    
0062.10 C                   ENDDO                    
0064.00 C                   ENDSR                                                                       
