
_myvect .sect"myvect";�������� ������ ��� �������� ����������
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
      nop
      nop
      nop
      ;���������� �������� F(x,y)=ax^2+bx+cy^2
      ;��������� ������
      .data
N            .word 5; ����� �������
; ������ �������
M            .word 13h, -8h, 2h, 6h, 10h
a            .word 1; ������� ������������� �����
b            .word 2
             ;��� ��������� ����� � ������ text
             .text  
begin;������ ���������
         ;������������� DP
         ldp a
    ldi N;
    ldi @N, AR1; ��������� ����� �������
    ldi @M, AR0; ��������� ������ ����� � ���������� � �����
    ldi @b, AR2; ����� � ������� ����������
    ldi @a, AR3
    ldi 0, AR2
    rpts 4;�������
    cmpi AR0,AR2
    bgt thenlbl
    br elselbl
thenlbl
    addi 1,AR3
    addi 1, AR1
    sti AR3, @a
    br endiflbl
elselbl
       addi 0,AR3
       addi 1, AR1
       sti AR3, @a
endiflbl
    
    
    ldhi 8000h,AR5
    or 0050h,AR5;AR5=80001000h
    sti AR3,*AR3
;<<������� ���� ��� ������ ����������>>
stop br stop;����� ���������
    nop
    nop
    nop
.end

