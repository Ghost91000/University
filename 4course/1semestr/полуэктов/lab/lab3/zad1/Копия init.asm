
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
      ;���������� �������� F(x,y,z)=ax^2-by^2+az
      ;��������� ������
      .data
a            .word 2
b            .word 3
z            .word 1
x            .word 5
y            .word 4
             ;��� ��������� ����� � ������ text
             .text  
begin;������ ���������
         ;������������� DP
         ldp a
    ldi 0,R0;R0 ��������� ��� �������� ����������
    ;��������� a*x*x
	ldi @a,AR0 ;AR0=a
	mpyi @x,AR0 ;AR0=a*x
	mpyi @x,AR0 ;AR0=a*x*x
	;��������� b*x*x
	ldi @b,AR1; Ar1=b
	mpyi @y,AR1 ;AR1=b*y
	mpyi @y,AR1 ;AR1=b*y*y
	;��������� a*z
	ldi @a,AR2 ; ar2=a
	mpyi @z,AR2 ;AR2=a*z
	;������ ar0=ax^2 ar1=by^2 ar2=az
	;������ ��� ��������
	subi AR1,AR0 ;ar0=ar0-ar1
	addi AR2,AR0 ;ar0=ar0+ar2
	;ar0 �������� ��������� ������������ ���������
	;�������� ��� �� ������ 80001000h
	ldhi 8000h,AR3
	or 1000h,AR3 ;AR3=80001000h
	sti AR0,*AR3
;<<������� ���� ��� ������ ����������>>
stop br stop;
    nop
    nop
    nop
.end

