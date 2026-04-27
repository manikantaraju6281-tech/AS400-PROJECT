0001.00 FSUBF3     CF   E             WORKSTN SFILE(SFLRCD:RRN)
0002.00 FEMPMASTER IF   E           K DISK                     
0003.00 DRRN              S              4S 0                  
0004.00 C                   exsr      clear                    
0005.00 C                   exsr      load                     
0006.00 C                   exsr      process                  
0007.00 C                   eval      *inlr=*on                
0008.00 C*CLEAR SUBROUTINE                                     
0008.01 C     clear         begsr                              
0009.00 C                   eval      RRN=0                    
0010.00 C                   eval      *IN27=*ON                
0011.00 C                   write     SFLCTL                   
0012.00 C                   eval      *IN27=*OFF               
0012.01 C                   endsr                              
0013.00 C*LOAD SUBROUTINE                                      
0014.00 C     load          begsr                              
0014.01 C     *LOVAL        SETLL     EMPMASTER            
0014.02 C                   read      EMPMASTER            
0014.03 C                   dow       not %eof(EMPMASTER)  
0014.04 C                   eval      $EMPID=EMPID         
0014.05 C                   eval      $EMPNAME=EMPNAME     
0014.06 C                   eval      $TEAM=TEAM           
0014.07 C                   eval      $DESIG=DESIG         
0014.08 C                   eval      RRN=RRN+1            
0014.09 C                   write     SFLRCD               
0014.10 C                   read      EMPMASTER    
0014.11 C                   enddo                  
0015.00 C                   endsr                  
0015.01 C*PROCESS SUBROUTINE                       
0015.02 C     process       begsr                  
0015.03 C                   dow       *in03=*off   
0015.04 C                   exsr      dsply        
0015.05 C                   if        RRN>0        
0015.06 C                   readc     SFLRCD       
0015.07 C                   dow       not %eof(SUBF3)   
0015.08 C                   select                      
0015.09 C                   when      $OPT=5            
0015.10 C                   exsr      viewempdet        
0015.11 C                   clear                   $OPT
0015.12 C                   update    SFLRCD            
0015.13 C                   endsl                       
0015.14 C                   readc     SFLRCD            
0015.15 C                   enddo                       
0015.16 C                   endif                  
0015.17 C                   enddo                  
0015.18 C                   endsr                  
0016.00 C*DISPLAY SUBROUTINE                       
0017.00 C     dsply         begsr                  
0017.02 C                   eval      *in26=*on    
0017.03 C                   if        RRN>0        
0017.04 C                   eval      *in25=*on    
0017.05 C                   else                   
0017.06 C                   eval      *in25=*off   
0017.07 C                   endif                  
0017.08 C                   write     FOOTER       
0017.09 C                   exfmt     SFLCTL       
0018.00 C                   endsr                  
0019.00 C*VIEW EMP DETAILS                         
0020.00 C     viewempdet    begsr                  
0020.01 C                   dow       *in03=*off   
0020.02 C                   eval      EMPID=$EMPID 
0020.03 C     EMPID         chain     EMPMASTER        
0020.04 C                   if        %found(EMPMASTER)
0020.06 C                   eval      $EMPID1=EMPID    
0020.07 C                   eval      $EMPNAME1=EMPNAME
0020.08 C                   eval      $CITY1=CITY      
0020.09 C                   eval      $ROLE1=ROLE      
0020.10 C                   endif                      
0020.12 C                   exfmt     VIEWEMP          
0020.13 C                   enddo                      
0021.00 C                   endsr                                                           
                                                               
