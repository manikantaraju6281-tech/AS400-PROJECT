0001.00 FEMPMASTER IF A E           K DISK                      
0002.00 FSUBF1     CF   E             WORKSTN SFILE(SFLRCD:RRN) 
0002.01 FHOLIDAYS  IF   E             DISK                      
0002.02 FLF01      UF A E           K DISK                      
0002.03 FLF02      IF A E           K DISK    PREFIX(w_)        
0003.00 Dpgst            sds                                    
0004.00 Dpgmname            *PROC                               
0005.00 DRRN              S              4S 0                   
0005.01 D$MSG             S             30A                     
0007.00 C                   eval      PGMNAME=pgmname           
0008.00 C                   exsr      clear                     
0009.00 C                   exsr      load                      
0010.00 C                   exsr      process                   
0011.00 C                   eval      *inlr=*on                 
0012.00 C     clear         begsr                               
0013.00 C                   eval      RRN=0                     
0014.00 C                   eval      *in27=*on          
0015.00 C                   write     SFLCTL             
0016.00 C                   eval      *in27=*off         
0017.00 C                   endsr                        
0018.00 C     load          begsr                        
0019.00 C     *loval        setll     EMPMASTER          
0020.00 C                   read      EMPMASTER          
0021.00 C                   dow       not %eof(EMPMASTER)
0021.01 C                   eval      RRN=RRN+1          
0022.00 C                   eval      $EMPID=EMPID    
0023.00 C                   eval      $EMPNAME=EMPNAME
0024.00 C                   eval      $ROLE=ROLE      
0025.00 C                   eval      $CITY=CITY      
0027.00 C                   WRITE     SFLRCD          
0028.00 C                   read      EMPMASTER       
0029.00 C                   enddo                     
0030.00 C                   endsr                     
0030.01 C*Process Subroutine                          
0030.02 C     process       begsr                   
0030.03 C                   dow       *in03=*off    
0030.04 C                   exsr      dsply         
0030.05 C                   if        *in06=*on     
0030.06 C                   exsr      addsr         
0030.07 C                   endif                   
0030.08 C*F07 KEY HANDLING                          
0030.09 C                   if        *in07=*on     
0030.10 C                   exsr      viewholidays  
0030.11 C                   endif                    
0030.12 C*F8 KEY                                     
0030.13 C                   if        *in08=*on      
0030.14 C                   exsr      updatholiday   
0030.15 C                   endif                    
0030.16 C*F10 HANDLING                               
0030.17 C                   if        *in10=*on      
0030.18 C                   exsr      addholidaysr   
0030.19 C                   endif                    
0030.20 C*HANDLING OPTIONS                                
0030.21 C                   if        RRN>0               
0030.22 C                   readc     SFLRCD              
0030.23 C                   dow       not %eof(SUBF1)     
0030.24 C                   select                        
0030.25 C                   when      $OPT=2              
0030.26 C                   clear                   $OPT  
0030.27 C                   update    SFLRCD              
0030.28 C                   exsr      updat               
0030.29 C                   when      $OPT=4                
0030.30 C                   clear                   $OPT    
0030.31 C                   update    SFLRCD                
0030.32 C                   exsr      dltsr                 
0030.33 C                   when      $OPT=5                
0030.34 C                   clear                   $OPT    
0030.35 C                   update    SFLRCD                
0030.36 C                   exsr      dsply1                
0030.37 C                   endsl                           
0030.38 C                   readc     SFLRCD        
0030.40 C                   enddo                   
0030.41 C                   endif                   
0030.42 C                   enddo                   
0030.43 C                   endsr                   
0031.00 C     dsply         begsr                   
0033.00 C                   eval      *in26=*on     
0033.01 C                   if        RRN>0         
0035.00 C                   eval      *in25=*on     
0035.01 C                   else                    
0037.00 C                   eval      *in25=*off    
0037.01 C                   endif                   
0039.00 C                   write     FOOTER        
0040.00 C                   exfmt     SFLCTL        
0041.00 C*POSITION KEY                              
0042.00 C                   if        $POS <> *zeros
0043.00 C                   exsr      load1         
0044.00 C                   endif                   
0046.00 C                   endsr                        
0047.00 C*Load1 Subroutine                               
0048.00 C     load1         begsr                        
0049.00 C     $POS          chain     EMPMASTER          
0050.00 C                   if        %found(EMPMASTER)  
0051.00 C                   exsr      clear              
0052.00 C                   read      EMPMASTER          
0053.00 C                   dow       not %eof(EMPMASTER)
0054.00 C                   eval      $EMPID=EMPID       
0055.00 C                   eval      $EMPNAME=EMPNAME 
0056.00 C                   eval      $CITY=CITY       
0057.00 C                   eval      $ROLE=ROLE       
0058.00 C                   eval      RRN=RRN+1        
0059.00 C                   write     SFLRCD           
0060.00 C                   read      EMPMASTER        
0060.01 C                   enddo                      
0062.00 C                   endif                      
0063.00 C                   endsr                      
0064.00 C*ADD SUBROUTINE                                    
0065.00 C     addsr         begsr                           
0065.01 C                   dow       *in03=*off            
0065.02 C                   exfmt     ADD                   
0065.03 C                   eval      EMPID=$EMPID1         
0065.04 C     EMPID         chain     EMPMASTER             
0065.05 C                   if        not %found(EMPMASTER) 
0065.06 C                   eval      EMPID=$EMPID1         
0065.07 C                   eval      EMPNAME=$EMPNAME1     
0065.08 C                   eval      CITY=$CITY1           
0065.09 C                   eval      ROLE=$ROLE1           
0065.10 C                   WRITE     EMPREC                
0065.11 C                   eval      $MSG='Record Added'   
0065.12 C                   else                            
0065.13 C                   eval      $MSG='RECORD EXIST'   
0065.14 C                   endif                           
0065.15 C*F12 FUNCTION KEY                                  
0065.16 C                   if        *in12=*on             
0065.17 C                   leave                       
0065.18 C                   endif                       
0065.19 C*F5 FUNCTION KEY                               
0065.20 C                   if        *in05=*on         
0065.21 C                   eval      $EMPID1=*zeros    
0065.22 C                   eval      $EMPNAME1=*blanks 
0065.23 C                   eval      $CITY1=*blanks    
0065.24 C                   eval      $ROLE1=*blanks    
0065.25 C                   eval      $MSG=*blanks      
0065.26 C                   endif                         
0065.27 C                   enddo                         
0066.00 C                   endsr                         
0067.00 C*VIEW HOLIDAYS SUB ROUTINE                       
0068.00 C     viewholidays  begsr                         
0068.01 C                   dow       *in03=*off          
0068.03 C                   READ      HOLIDAYS            
0068.04 C                   DOW       NOT %EOF(HOLIDAYS)  
0068.05 C                   eval      $DAY=DAY            
0068.06 C                   eval      $DATE=DATE         
0068.07 C                   eval      $REMARKS=REMARKS   
0068.08 C                   EXFMT     HOLIDAY            
0068.09 C                   read      HOLIDAYS           
0068.11 C                   enddo                        
0068.12 C                   enddo                        
0069.00 C                   endsr                        
0070.00 C*F10 adding holidays                            
0071.00 C     addholidaysr  begsr 
0071.01 C                   dow       *in03=*off           
0071.02 C                   exfmt     ADDHOLIDAY           
0071.03 C                   eval      w_DATE=$DATE1        
0071.04 C     w_DATE        chain     LF02                 
0071.05 C                   if        not %found(LF02)     
0071.06 C                   eval      w_DATE=$DATE1        
0071.07 C                   eval      w_DAY=$DAY1          
0071.08 C                   eval      w_REMARKS=$REMARKS1  
0071.09 C                   write     LFREC1               
0071.10 C                   eval      $MSG='HOLIDAY ADDED'        
0071.11 C                   else                                  
0071.12 C                   eval      $MSG='HOLIDAY ALREADY EXIST'
0071.13 C                   endif                                 
0071.14 C*F12 KEY                                                 
0071.15 C                   if        *in12=*on                   
0071.16 C                   leave                                 
0071.17 C                   endif                                 
0071.18 C*F5 KEY                                                  
0071.19 C                   if        *in05=*on         
0071.21 C                   eval      $DATE1=*zeros     
0071.22 C                   eval      $DAY1=*blanks     
0071.23 C                   eval      $REMARKS1=*blanks 
0071.24 C                   endif                       
0071.25 C                   enddo                       
0072.00 C                   endsr                       
0073.00 C*DELETE SUBROUTINE                             
0074.00 C     dltsr         begsr                       
0074.01 C                   eval      EMPID=$EMPID 
0074.02 C     EMPID         CHAIN     LF01         
0074.03 C                   if        %found(LF01) 
0074.04 C                   delete    LFREC        
0074.05 C                   endif                  
0075.00 C                   endsr                  
0076.00 C*OPT 5 SUBROUTINE                         
0077.00 C     dsply1        begsr                  
0077.01 C                   dow       *in03=*off   
0077.02 C                   eval      EMPID=$EMPID        
0077.03 C     EMPID         CHAIN     EMPMASTER           
0077.04 C                   if        %found(EMPMASTER)   
0077.05 C                   eval      $EMPID3=EMPID       
0077.06 C                   eval      $EMPNAME3=EMPNAME   
0077.07 C                   eval      $CITY3=CITY         
0077.08 C                   eval      $ROLE3=ROLE         
0077.09 C                   exfmt     DISPLAY             
0077.10 C                   endif                         
0077.11 C*F12 HANDLING KEY                        
0077.12 C                   if        *in12=*on   
0077.13 C                   leave                 
0077.14 C                   endif                 
0077.15 C                   enddo                 
0078.00 C                   endsr                 
0079.00 C*UPDATE SUBROUTINE                       
0080.00 C     updat         begsr                 
0080.01 C                   dow       *in03=*off  
0080.02 C                   eval      EMPID=$EMPID       
0080.03 C     EMPID         CHAIN     EMPMASTER          
0080.04 C                   if        %found(EMPMASTER)  
0080.05 C                   eval      $EMPID2=EMPID      
0080.06 C                   eval      $EMPNAME2=EMPNAME  
0080.07 C                   eval      $CITY2=CITY        
0080.08 C                   eval      $ROLE2=ROLE        
0080.09 C                   endif                        
0080.10 C                   exfmt     UPDATE             
0080.11 C*UPDATE                                       
0080.12 C                   eval      EMPID=$EMPID2    
0080.13 C     EMPID         CHAIN     LF01             
0080.14 C                   if        %found(LF01)     
0080.15 C                   eval      EMPID=$EMPID2    
0080.16 C                   eval      EMPNAME=$EMPNAME2
0080.17 C                   eval      CITY=$CITY2      
0080.18 C                   eval      ROLE=$ROLE2      
0080.19 C                   update    LFREC            
0080.20 C                   eval      $MSG='UPDATED SUCCSSFULLY'   
0080.21 C                   endif                                  
0080.22 C                   enddo                                  
0081.00 C                   endsr                                  
0082.00 C*UPDATE HOLIDAY                                           
0083.00 C     updatholiday  begsr                                  
0083.01 C                   dow       *in03=*off                   
0083.02 C                   eval      DATE=$DATE                   
0083.03 C     DATE          CHAIN     HOLIDAYS                     
0083.04 C                   if        %found(HOLIDAYS)
0083.05 C                   eval      $DATE=DATE      
0083.06 C                   eval      $DAY=DAY        
0083.07 C                   eval      $REMARKS=REMARKS
0083.08 C                   endif                     
0083.09 C                   exfmt     UPDATHOL        
0083.10 C*HERE DATA UPDATE WILL BE DONE               
0083.11 C                   eval      w_DATE=$DATE2   
0083.12 C     w_DATE        CHAIN     LF02            
0083.13 C                   if        %found(LF02)        
0083.14 C                   eval      w_DATE=$DATE2       
0083.15 C                   eval      w_DAY=$DAY2         
0083.16 C                   eval      w_REMARKS=$REMARKS2 
0083.17 C                   write     LFREC1              
0083.18 C                   endif                         
0083.19 C                   enddo                         
0084.00 C                   endsr                                                
