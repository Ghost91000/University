
_myvect .sect"myvect";�������� ������ ��� �������� ����������
     .include "subr.asm"
_c_int00:
reset .word _c_int00 ;RESET ������
           .space 1;����������� ����� ��� NMI ����������
      ;������� ������� ��������� ����������� ����������
_mytrap .sect"mytrap";������ ��� �������� ����������� ����������
;������� ���� 
_mystack .usect"mystack",100;����������� 100 ����� ��� ����
            .text
stacka      .word _mystack;����� mystrack ������
ivta  .word _myvect;����� myvect ������
tvta  .word _mytrap;����� mytrap ������
ieval .word 1;�������� �������� ���������� ����������
gctrl .word 1EF78000h;�������� �������� ���������� �������
lctrl .word 1EF78000h;�������� �������� ���������� �������
mctrla      .word 100000h;����� �������� ���������� ���������� �������
_c_int00: ;����� ����� � ���������, ��� reset �������� ������
; ������������� �������� DP
           ldp stacka;
;������������� ��������� �� ������� ����������
           ldi@ivta, AR0
           ldpe AR0, IVTP;
;������������� �������� �� ������� ����������� ����������           
           ldi@tvta, AR0
           ldpe AR0,TVTP
;������������ �������� ���������� ���������� �������
           ldi@mctrla, AR0
           ldi @gctrl,R0
           sti R0, *AR0
;�������������� ������� ���������� ��������� �������
           ldi@lctrl, R0
           sti R0, *+AR0(4)
;�������������� ��������� �����
           ldi@stacka, SP
;�������������� ������� ���������� ����������
;������ 1 � IIE ��������� ���������� �������
           ldi @ieval,IIE
;��������� ��������� ����������, ������� � ��������� ���
           or 3800h, ST
           Br begin;������� � ������ ����������
InitAR
      ldi 0,AR0
      ldi 0,AR1
      ldi 0,AR2
      ldi 0,AR3
      ldi 0,AR4
      ldi 0,AR5
      ldi 0,AR6
      ldi 0,AR7
      rets
      nop
      nop
      nop
      ;���������� �������� F(x,y)=ax^2+bx+cy^2
      ;��������� ������
      .data
a            .word 100
             ;��� ��������� ����� � ������ text
             .text  
begin;������ ���������

    ldi @a,AR9
    
    call InitAR      

    ldhi 2FF800h,AR8
    or 0AAAAAAAAh,AR8;AR8=2FF8000AAAAAAAAh
    sti AR11,*AR11
 
   
;<<������� ���� ��� ������ ����������>>
stop br stop;����� ���������
    nop
    nop
    nop
.end

