PROCESSOR 16F887 
    #include <xc.inc> 
    
    CONFIG FOSC= INTRC_NOCLKOUT
    CONFIG WDTE=OFF
    CONFIG PWRTE=ON
    CONFIG MCLRE=OFF
    CONFIG CP=OFF
    CONFIG CPD=OFF
    CONFIG BOREN=OFF
    CONFIG IESO=OFF
    CONFIG FCMEN=OFF
    CONFIG LVP=OFF
    CONFIG DEBUG=ON
    
    CONFIG BOR4V=BOR40V
    CONFIG WRT=OFF
    
    PSECT udata_bank0
valor1:
	DS 1

valor2:
        DS 1
	
    PSECT resetVec,class=CODE,delta=2
	PAGESEL main
	goto main
	PSECT code
    main:
         bcf 0x03,6
	 bcf 0x03,5
         movlw 0b10010010
	 andlw 0b10111001
	 movwf valor1  
	 nop
	 END
	 