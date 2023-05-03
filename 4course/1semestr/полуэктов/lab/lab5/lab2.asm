
_myvect .sect"myvect";Созданем секцию для векторов прерываний
     .include "subr.asm"
_c_int00:
reset .word _c_int00 ;RESET вектор
           .space 1;Резервируем место для NMI прерывания
      ;Создаем таблицу векторпов программных прерываний
_mytrap .sect"mytrap";Секция для векторов программных прерываний
;Создаем стек 
_mystack .usect"mystack",100;Резервируем 100 слова под стек
            .text
stacka      .word _mystack;адрес mystrack секции
ivta  .word _myvect;адрес myvect секции
tvta  .word _mytrap;адрес mytrap секции
ieval .word 1;значения регистра разрешения прерываний
gctrl .word 1EF78000h;значение регистра управления памятью
lctrl .word 1EF78000h;значение регистра управления памятью
mctrla      .word 100000h;адрес регистра управления глобольной памятью
_c_int00: ;точка входа в программу, при reset начинаем отсюда
; Инициализация регистра DP
           ldp stacka;
;Устанавливаем указатель на таблицу прерываний
           ldi@ivta, AR0
           ldpe AR0, IVTP;
;Устанавливаем укзатель на таблицу программных прерываний           
           ldi@tvta, AR0
           ldpe AR0,TVTP
;Иницилизирум трегистр управления глобольной паматью
           ldi@mctrla, AR0
           ldi @gctrl,R0
           sti R0, *AR0
;Инициализируем регистр управления локальной памятью
           ldi@lctrl, R0
           sti R0, *+AR0(4)
;Инициализируем указатель стека
           ldi@stacka, SP
;Инициализируем регистр разрешения прерываний
;Запись 1 в IIE разрешает прерывание таймера
           ldi @ieval,IIE
;Глобально разрешаем прерывания, очищаем и размещаем кэш
           or 3800h, ST
           Br begin;переход к началу приложения
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
      ;Вычисление значение F(x,y)=ax^2+bx+cy^2
      ;Размещаем данные
      .data
a            .word 100
             ;Код программы снова в секции text
             .text  
begin;Начало программы

    ldi @a,AR9
    
    call InitAR      

    ldhi 2FF800h,AR8
    or 0AAAAAAAAh,AR8;AR8=2FF8000AAAAAAAAh
    sti AR11,*AR11
 
   
;<<вставте сюда код вашего приложения>>
stop br stop;конец программы
    nop
    nop
    nop
.end

