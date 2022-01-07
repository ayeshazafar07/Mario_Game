
;--------------------------------------------------------
;------------------MACROS--------------------------------
;--------------------------------------------------------
;--------------------------------------------------------





;-------MONSTER BOI--------------------------------------
;-------macro to draw monster body-----------------------
MonsterBoi MACRO


	;to save values of last cl dl ch dh
	push cx
	push dx
	push di
	push si


	mov si,mx1
	mov di,mx2
	mov enemyx1,si
	mov enemyx2,di

	mov enemyy1,26
	mov enemyy2,28
	mov enemycolor,75
	call DrawRectangle

	sub enemyx1,3
	add enemyx2,2
	add enemyy1,2
	add enemyy2,2

	mov enemycolor,75
	call DrawRectangle

	sub enemyx1,2
	add enemyx2,1
	add enemyy1,2
	add enemyy2,2

	mov enemycolor,75
	call DrawRectangle

	sub enemyx1,3
	add enemyx2,2
	add enemyy1,2
	add enemyy2,3

	call DrawRectangle

	sub enemyx1,2
	add enemyx2,1
	add enemyy1,3
	add enemyy2,3

	mov enemycolor,75
	call DrawRectangle

	add enemyx2,1
	add enemyy1,3
	add enemyy2,2

	mov enemycolor,75
	call DrawRectangle

	add enemyx2,2
	add enemyy1,2
	add enemyy2,1

	mov enemycolor,75
	call DrawRectangle

	add enemyx2,2
	add enemyy1,1
	add enemyy2,5

	mov enemycolor,75
	call DrawRectangle

	add enemyx1,30
	add enemyx2,2
	sub enemyy1,2
	sub enemyy2,3

	mov enemycolor,75
	call DrawRectangle

	add enemyx1,2
	add enemyx2,2
	sub enemyy2,2

	mov enemycolor,75
	call DrawRectangle

	sub enemyx1,32
	sub enemyx2,6
	add enemyy1,6
	add enemyy2,6

	mov enemycolor,75
	call DrawRectangle

	add enemyx1,2
	sub enemyx2,2
	add enemyy1,2
	add enemyy2,2

	mov enemycolor,75
	call DrawRectangle

	add enemyx1,1
	sub enemyx2,1
	add enemyy1,2
	add enemyy2,2

	mov enemycolor,75
	call DrawRectangle

	add enemyx1,2
	sub enemyx2,2
	add enemyy1,2
	add enemyy2,2

	mov enemycolor,75
	call DrawRectangle

	add enemyx1,1
	sub enemyx2,2
	add enemyy1,2
	add enemyy2,2

	mov enemycolor,75
	call DrawRectangle

	sub enemyx2,12
	sub enemyy1,19
	sub enemyy2,14

	mov enemycolor,0
	call DrawRectangle

	add enemyx1,8
	add enemyx2,8

	mov enemycolor,0
	call DrawRectangle

	sub enemyx1,12
	sub enemyx2,9
	sub enemyy1,1
	sub enemyy2,5

	mov enemycolor,0
	call DrawRectangle

	sub enemyx1,4
	sub enemyx2,2
	sub enemyy1,1
	sub enemyy2,3

	mov enemycolor,0
	call DrawRectangle

	add enemyx1,17
	add enemyx2,17
	add enemyy1,1
	add enemyy2,2

	mov enemycolor,0
	call DrawRectangle

	add enemyx1,4
	sub enemyx2,1
	sub enemyy1,3
	sub enemyy2,2

	mov enemycolor,0
	call DrawRectangle

	sub enemyx1,16
	sub enemyx2,5
	add enemyy1,14
	add enemyy2,14

	mov enemycolor,04
	call DrawRectangle

	add enemyx1,2
	add enemyx2,1
	add enemyy1,2
	add enemyy2,2

	mov enemycolor,04
	call DrawRectangle

	add enemyx1,1
	add enemyy1,2
	add enemyy2,2

	mov enemycolor,04
	call DrawRectangle

	add enemyx1,1
	sub enemyx2,1
	add enemyy1,2
	add enemyy2,2

	mov enemycolor,04
	call DrawRectangle

	sub enemyx2,8
	sub enemyy1,6
	sub enemyy2,5

	mov enemycolor,75
	call DrawRectangle

	add enemyx1,5
	add enemyx2,5

	mov enemycolor,75
	call DrawRectangle

	.if mx1 >= 260
		mov monsterrightflag,1
	.endif

	.if mx1 <= 160
		mov monsterrightflag,0
	.endif



	;to save values of last cl dl ch dh
	pop si
	pop di
	pop dx
	pop cx

endm











;---------------------BOMB-------------------------------
;-----------macro to draw bomb thrown by monster---------
Bomb MACRO


	;to save values of last cl dl ch dh
	push cx
	push dx
	push di
	push si


	.if by1 >= 195
		mov bombdownflag,1
	.else
		mov bombdownflag,0
	.endif


	mov si,by1
	mov di,by2
	mov enemyy1,si
	mov enemyy2,di

	mov enemyx1,200
	mov enemyx2,205

	mov enemycolor,04
	call DrawRectangle

	sub enemyx1,2
	add enemyx2,2
	add enemyy1,3
	add enemyy2,3

	mov enemycolor,4
	call DrawRectangle

	sub enemyx1,2
	add enemyx2,2
	add enemyy1,3
	add enemyy2,3

	mov enemycolor,4
	call DrawRectangle

	add enemyx1,2
	sub enemyx2,2
	add enemyy1,3
	add enemyy2,3


	mov enemycolor,4
	call DrawRectangle

	add enemyx1,2
	sub enemyx2,2
	add enemyy1,3
	add enemyy2,3

	mov enemycolor,4
	call DrawRectangle

	sub enemyx1,1
	sub enemyx2,4
	sub enemyy1,6
	sub enemyy2,6

	mov enemycolor,43
	call DrawRectangle


	;to save values of last cl dl ch dh
	pop si
	pop di
	pop dx
	pop cx

endm












;-------------------ENEMY BOIS------------
EnemyBois MACRO

	;to save values of last cl dl ch dh
	push cx
	push dx
	push di
	push si



	
;-----boi 1-----

	mov si,kx1
	mov di,kx2
	mov enemyx1,si
	mov enemyx2,di

	mov enemyy1,168
	mov enemyy2,170
	mov enemycolor,6
	call DrawRectangle

	add enemyx1,2
	sub enemyx2,2
	sub enemyy1,2
	sub enemyy2,2

	call DrawRectangle

	sub enemyx1,4
	add enemyx2,4
	add enemyy1,4
	add enemyy2,4

	mov enemycolor,6
	call DrawRectangle

	sub enemyx1,2
	add enemyx2,2
	add enemyy1,2
	add enemyy2,2

	mov enemycolor,6
	call DrawRectangle

	sub enemyx1,2
	add enemyx2,2
	add enemyy1,2
	add enemyy2,2

	mov enemycolor,6
	call DrawRectangle

	sub enemyx1,2
	add enemyx2,2
	add enemyy1,2
	add enemyy2,5

	mov enemycolor,6
	call DrawRectangle

	add enemyx1,2
	sub enemyx2,2
	add enemyy1,5
	add enemyy2,3

	mov enemycolor,6
	call DrawRectangle

	add enemyx1,3
	sub enemyx2,3
	add enemyy1,3
	add enemyy2,2

	mov enemycolor,6
	call DrawRectangle

	add enemyx1,3
	sub enemyx2,3

	mov enemycolor,67
	call DrawRectangle

	sub enemyx1,2
	add enemyx2,2
	add enemyy1,2
	add enemyy2,2

	mov enemycolor,67
	call DrawRectangle

	sub enemyx2,2
	add enemyy1,2
	add enemyy2,2

	mov enemycolor,67
	call DrawRectangle

	add enemyx1,4
	add enemyy1,2
	add enemyy2,2

	mov enemycolor,67
	call DrawRectangle

	sub enemyx2,2
	add enemyy1,2
	add enemyy2,2

	mov enemycolor,67
	call DrawRectangle

	sub enemyx1,8
	sub enemyx2,10
	sub enemyy1,4
	sub enemyy2,4

	mov enemycolor,8
	call DrawRectangle

	sub enemyx1,1
	add enemyx2,4
	add enemyy1,2
	add enemyy2,4

	mov enemycolor,8
	call DrawRectangle

	add enemyx1,2
	add enemyx2,1
	add enemyy1,4
	add enemyy2,3

	mov enemycolor,8
	call DrawRectangle

	add enemyx1,10
	add enemyx2,7

	mov enemycolor,8
	call DrawRectangle

	add enemyx1,1
	add enemyx2,2
	sub enemyy1,2
	sub enemyy2,3

	mov enemycolor,8
	call DrawRectangle

	add enemyx1,2
	sub enemyy1,2
	sub enemyy2,2

	mov enemycolor,8
	call DrawRectangle

	sub enemyx1,10
	sub enemyx2,9
	sub enemyy1,16
	sub enemyy2,11

	mov enemycolor,67
	call DrawRectangle

	add enemyx1,10
	add enemyx2,10
	mov enemycolor,67
	call DrawRectangle

	sub enemyx1,8
	sub enemyx2,11
	sub enemyy1,2
	sub enemyy2,2

	mov enemycolor,0
	call DrawRectangle

	sub enemyx1,3
	sub enemyx2,2
	sub enemyy2,5

	mov enemycolor,0
	call DrawRectangle

	add enemyx1,3
	add enemyx2,11
	add enemyy1,2
	add enemyy2,2

;	mov enemyx1,60
;	mov enemyx2,71
;	mov enemyy1,36
;	mov enemyy2,38
	mov enemycolor,0
	call DrawRectangle

	add enemyx1,9
	;add enemyx2,4
	sub enemyy1,2
	add enemyy2,3

;	mov enemyx1,69
;	mov enemyx2,71
;	mov enemyy1,34
;	mov enemyy2,41
	mov enemycolor,0
	call DrawRectangle

	;sub enemyx1,4
	add enemyx2,3
	;add enemyy1,4
	sub enemyy2,5

;	mov enemyx1,69
;	mov enemyx2,74
;	mov enemyy1,34
;	mov enemyy2,36
	mov enemycolor,0
	call DrawRectangle



	.if kx1 >= 130
		mov enemyrightflag,1
	.endif

	.if kx1 <= 100
		mov enemyrightflag,0
	.endif


	;to save values of last cl dl ch dh
	pop si
	pop di
	pop dx
	pop cx

endm











;-----------------ENEMY BOI 2------------
EnemyBois2 MACRO


	;to save values of last cl dl ch dh
	push cx
	push dx
	push di
	push si



;-----boi 2-----

add kx1,80
add kx2,80

	mov si,kx1
	mov di,kx2
	mov enemyx1,si
	mov enemyx2,di

	mov enemyy1,168
	mov enemyy2,170
	mov enemycolor,6
	call DrawRectangle

add enemyx1,2
sub enemyx2,2
sub enemyy1,2
sub enemyy2,2

	;mov enemyx1,62
	;mov enemyx2,68
	;mov enemyy1,28
	;mov enemyy2,30
	;mov enemycolor,6
	call DrawRectangle

sub enemyx1,4
add enemyx2,4
add enemyy1,4
add enemyy2,4

	;mov enemyx1,58
	;mov enemyx2,72
	;mov enemyy1,32
	;mov enemyy2,34
	mov enemycolor,6
	call DrawRectangle

sub enemyx1,2
add enemyx2,2
add enemyy1,2
add enemyy2,2

	;mov enemyx1,56
	;mov enemyx2,74
	;mov enemyy1,34
	;mov enemyy2,36
	mov enemycolor,6
	call DrawRectangle

sub enemyx1,2
add enemyx2,2
add enemyy1,2
add enemyy2,2

	;mov enemyx1,54
	;mov enemyx2,76
	;mov enemyy1,36
	;mov enemyy2,38
	mov enemycolor,6
	call DrawRectangle

sub enemyx1,2
add enemyx2,2
add enemyy1,2
add enemyy2,5

	;mov enemyx1,52
	;mov enemyx2,78
	;mov enemyy1,38
	;mov enemyy2,43
	mov enemycolor,6
	call DrawRectangle

add enemyx1,2
sub enemyx2,2
add enemyy1,5
add enemyy2,3

	;mov enemyx1,54
	;mov enemyx2,76
	;mov enemyy1,43
	;mov enemyy2,46
	mov enemycolor,6
	call DrawRectangle

add enemyx1,3
sub enemyx2,3
add enemyy1,3
add enemyy2,2

	;mov enemyx1,57
	;mov enemyx2,73
	;mov enemyy1,46
	;mov enemyy2,48
	mov enemycolor,6
	call DrawRectangle

add enemyx1,3
sub enemyx2,3
;add enemyy1,4
;add enemyy2,4

	;mov enemyx1,60
	;mov enemyx2,70
	;mov enemyy1,46
	;mov enemyy2,48
	mov enemycolor,67
	call DrawRectangle

sub enemyx1,2
add enemyx2,2
add enemyy1,2
add enemyy2,2

;	mov enemyx1,58
;	mov enemyx2,72
;	mov enemyy1,48
;	mov enemyy2,50
	mov enemycolor,67
	call DrawRectangle

;sub enemyx1,4
sub enemyx2,2
add enemyy1,2
add enemyy2,2

;	mov enemyx1,58
;	mov enemyx2,70
;	mov enemyy1,50
;	mov enemyy2,52
	mov enemycolor,67
	call DrawRectangle

add enemyx1,4
;add enemyx2,4
add enemyy1,2
add enemyy2,2

;	mov enemyx1,62
;	mov enemyx2,70
;	mov enemyy1,52
;	mov enemyy2,54
	mov enemycolor,67
	call DrawRectangle

;sub enemyx1,4
sub enemyx2,2
add enemyy1,2
add enemyy2,2

;	mov enemyx1,62
;	mov enemyx2,68
;	mov enemyy1,54
;	mov enemyy2,56
	mov enemycolor,67
	call DrawRectangle

sub enemyx1,8
sub enemyx2,10
sub enemyy1,4
sub enemyy2,4

;	mov enemyx1,54
;	mov enemyx2,58
;	mov enemyy1,50
;	mov enemyy2,52
	mov enemycolor,8
	call DrawRectangle

sub enemyx1,1
add enemyx2,4
add enemyy1,2
add enemyy2,4

;	mov enemyx1,53
;	mov enemyx2,62
;	mov enemyy1,52
;	mov enemyy2,56
	mov enemycolor,8
	call DrawRectangle

add enemyx1,2
add enemyx2,1
add enemyy1,4
add enemyy2,3

;	mov enemyx1,55
;	mov enemyx2,63
;	mov enemyy1,56
;	mov enemyy2,59
	mov enemycolor,8
	call DrawRectangle

add enemyx1,10
add enemyx2,7
;add enemyy1,4
;add enemyy2,4

;	mov enemyx1,65
;	mov enemyx2,70
;	mov enemyy1,56
;	mov enemyy2,59
	mov enemycolor,8
	call DrawRectangle

add enemyx1,1
add enemyx2,2
sub enemyy1,2
sub enemyy2,3

;	mov enemyx1,66
;	mov enemyx2,72
;	mov enemyy1,54
;	mov enemyy2,56
	mov enemycolor,8
	call DrawRectangle

add enemyx1,2
;add enemyx2,4
sub enemyy1,2
sub enemyy2,2

;	mov enemyx1,68
;	mov enemyx2,72
;	mov enemyy1,52
;	mov enemyy2,54
	mov enemycolor,8
	call DrawRectangle

sub enemyx1,10
sub enemyx2,9
sub enemyy1,16
sub enemyy2,11

;	mov enemyx1,58
;	mov enemyx2,63
;	mov enemyy1,36
;	mov enemyy2,43
	mov enemycolor,67
	call DrawRectangle

add enemyx1,10
add enemyx2,10
;add enemyy1,4
;add enemyy2,4

;	mov enemyx1,68
;	mov enemyx2,73
;	mov enemyy1,36
;	mov enemyy2,43
	mov enemycolor,67
	call DrawRectangle

sub enemyx1,8
sub enemyx2,11
sub enemyy1,2
sub enemyy2,2

;	mov enemyx1,60
;	mov enemyx2,62
;	mov enemyy1,34
;	mov enemyy2,41
	mov enemycolor,0
	call DrawRectangle

sub enemyx1,3
sub enemyx2,2
;add enemyy1,4
sub enemyy2,5

;	mov enemyx1,57
;	mov enemyx2,60
;	mov enemyy1,34
;	mov enemyy2,36
	mov enemycolor,0
	call DrawRectangle

add enemyx1,3
add enemyx2,11
add enemyy1,2
add enemyy2,2

;	mov enemyx1,60
;	mov enemyx2,71
;	mov enemyy1,36
;	mov enemyy2,38
	mov enemycolor,0
	call DrawRectangle

add enemyx1,9
;add enemyx2,4
sub enemyy1,2
add enemyy2,3

;	mov enemyx1,69
;	mov enemyx2,71
;	mov enemyy1,34
;	mov enemyy2,41
	mov enemycolor,0
	call DrawRectangle

;sub enemyx1,4
add enemyx2,3
;add enemyy1,4
sub enemyy2,5

;	mov enemyx1,69
;	mov enemyx2,74
;	mov enemyy1,34
;	mov enemyy2,36
	mov enemycolor,0
	call DrawRectangle




sub kx1,80
sub kx2,80



	;mov enemyx1,52
	;mov enemyx2,78
	;mov enemyy1,40
	;mov enemyy2,42
	;mov enemycolor,42
	;call DrawRectangle


	mov enemyx1,74
	mov enemyx2,76
	mov enemyy1,90
	mov enemyy2,110
	;call DrawRectangle


	;to save values of last cl dl ch dh
	pop si
	pop di
	pop dx
	pop cx

endm








;-------kingdom macro---------
kingdom MACRO 

	mov si,@data

	;to save values of last cl dl ch dh
	push cx
	push dx
	push ax
	push bx



	;--------castle-------
	
	;first floor

	mov enemyx1,195
	mov enemyx2,255
	mov enemyy1,110
	mov enemyy2,150
	mov enemycolor,6
	call DrawRectangle


	
	;horizontal walls
	mov enemyx1,195
	mov enemyx2,255
	mov enemyy1,144
	mov enemyy2,145
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,195
	mov enemyx2,255
	mov enemyy1,137
	mov enemyy2,138
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,195
	mov enemyx2,255
	mov enemyy1,130
	mov enemyy2,131
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,195
	mov enemyx2,255
	mov enemyy1,123
	mov enemyy2,124
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,195
	mov enemyx2,255
	mov enemyy1,116
	mov enemyy2,117
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,195
	mov enemyx2,255
	mov enemyy1,109
	mov enemyy2,110
	mov enemycolor,16
	call DrawRectangle



	;door1
	mov enemyx1,205
	mov enemyx2,220
	mov enemyy1,124
	mov enemyy2,150
	mov enemycolor,16
	call DrawRectangle

	;door2
	mov enemyx1,230
	mov enemyx2,245
	mov enemyy1,124
	mov enemyy2,150
	mov enemycolor,16
	call DrawRectangle


	;vertical walls
	mov enemyx1,200
	mov enemyx2,201
	mov enemyy1,110
	mov enemyy2,117
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,200
	mov enemyx2,201
	mov enemyy1,124
	mov enemyy2,131
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,200
	mov enemyx2,201
	mov enemyy1,138
	mov enemyy2,145
	mov enemycolor,16
	call DrawRectangle


	mov enemyx1,214
	mov enemyx2,215
	mov enemyy1,110
	mov enemyy2,117
	mov enemycolor,16
	call DrawRectangle


	mov enemyx1,229
	mov enemyx2,230
	mov enemyy1,110
	mov enemyy2,117
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,243
	mov enemyx2,244
	mov enemyy1,110
	mov enemyy2,117
	mov enemycolor,16
	call DrawRectangle


	mov enemyx1,209
	mov enemyx2,210
	mov enemyy1,117
	mov enemyy2,124
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,224
	mov enemyx2,225
	mov enemyy1,117
	mov enemyy2,124
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,239
	mov enemyx2,240
	mov enemyy1,117
	mov enemyy2,124
	mov enemycolor,16
	call DrawRectangle



	;tumbay
	mov enemyx1,195
	mov enemyx2,205
	mov enemyy1,100
	mov enemyy2,109
	mov enemycolor,6
	call DrawRectangle

	mov enemyx1,220
	mov enemyx2,230
	mov enemyy1,100
	mov enemyy2,109
	mov enemycolor,6
	call DrawRectangle

	mov enemyx1,245
	mov enemyx2,255
	mov enemyy1,100
	mov enemyy2,109
	mov enemycolor,6
	call DrawRectangle

	
	mov enemyx1,195
	mov enemyx2,205
	mov enemyy1,99
	mov enemyy2,100
	mov enemycolor,15
	call DrawRectangle
	
	mov enemyx1,220
	mov enemyx2,230
	mov enemyy1,99
	mov enemyy2,100
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,245
	mov enemyx2,255
	mov enemyy1,99
	mov enemyy2,100
	mov enemycolor,15
	call DrawRectangle


	mov enemyx1,205
	mov enemyx2,220
	mov enemyy1,109
	mov enemyy2,110
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,230
	mov enemyx2,245
	mov enemyy1,109
	mov enemyy2,110
	mov enemycolor,15
	call DrawRectangle


	mov enemyx1,205
	mov enemyx2,206
	mov enemyy1,99
	mov enemyy2,110
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,219
	mov enemyx2,220
	mov enemyy1,99
	mov enemyy2,110
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,230
	mov enemyx2,231
	mov enemyy1,99
	mov enemyy2,110
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,244
	mov enemyx2,245
	mov enemyy1,99
	mov enemyy2,110
	mov enemycolor,15
	call DrawRectangle











	;ground floor

	mov enemyx1,180
	mov enemyx2,270
	mov enemyy1,150
	mov enemyy2,200
	mov enemycolor,6
	call DrawRectangle


	;horizontal walls
	mov enemyx1,180
	mov enemyx2,270
	mov enemyy1,193
	mov enemyy2,194
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,180
	mov enemyx2,270
	mov enemyy1,186
	mov enemyy2,187
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,180
	mov enemyx2,270
	mov enemyy1,179
	mov enemyy2,180
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,180
	mov enemyx2,270
	mov enemyy1,172
	mov enemyy2,173
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,180
	mov enemyx2,270
	mov enemyy1,165
	mov enemyy2,166
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,180
	mov enemyx2,270
	mov enemyy1,158
	mov enemyy2,159
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,180
	mov enemyx2,270
	mov enemyy1,150
	mov enemyy2,151
	mov enemycolor,16
	call DrawRectangle



	;door
	mov enemyx1,210
	mov enemyx2,240
	mov enemyy1,159
	mov enemyy2,200
	mov enemycolor,16
	call DrawRectangle



	;vertical walls
	mov enemyx1,185
	mov enemyx2,186
	mov enemyy1,150
	mov enemyy2,158
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,185
	mov enemyx2,186
	mov enemyy1,165
	mov enemyy2,173
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,185
	mov enemyx2,186
	mov enemyy1,180
	mov enemyy2,187
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,185
	mov enemyx2,186
	mov enemyy1,194
	mov enemyy2,200
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,200
	mov enemyx2,201
	mov enemyy1,150
	mov enemyy2,158
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,200
	mov enemyx2,201
	mov enemyy1,165
	mov enemyy2,173
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,200
	mov enemyx2,201
	mov enemyy1,180
	mov enemyy2,187
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,200
	mov enemyx2,201
	mov enemyy1,194
	mov enemyy2,200
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,215
	mov enemyx2,216
	mov enemyy1,150
	mov enemyy2,158
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,230
	mov enemyx2,231
	mov enemyy1,150
	mov enemyy2,158
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,245
	mov enemyx2,246
	mov enemyy1,150
	mov enemyy2,158
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,245
	mov enemyx2,246
	mov enemyy1,165
	mov enemyy2,173
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,245
	mov enemyx2,246
	mov enemyy1,180
	mov enemyy2,187
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,245
	mov enemyx2,246
	mov enemyy1,194
	mov enemyy2,200
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,260
	mov enemyx2,261
	mov enemyy1,150
	mov enemyy2,158
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,260
	mov enemyx2,261
	mov enemyy1,165
	mov enemyy2,173
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,260
	mov enemyx2,261
	mov enemyy1,180
	mov enemyy2,187
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,260
	mov enemyx2,261
	mov enemyy1,194
	mov enemyy2,200
	mov enemycolor,16
	call DrawRectangle


	mov enemyx1,192
	mov enemyx2,193
	mov enemyy1,158
	mov enemyy2,165
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,192
	mov enemyx2,193
	mov enemyy1,173
	mov enemyy2,180
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,192
	mov enemyx2,193
	mov enemyy1,187
	mov enemyy2,194
	mov enemycolor,16
	call DrawRectangle


	mov enemyx1,207
	mov enemyx2,208
	mov enemyy1,158
	mov enemyy2,165
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,207
	mov enemyx2,208
	mov enemyy1,173
	mov enemyy2,180
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,207
	mov enemyx2,208
	mov enemyy1,187
	mov enemyy2,194
	mov enemycolor,16
	call DrawRectangle


	mov enemyx1,252
	mov enemyx2,253
	mov enemyy1,158
	mov enemyy2,165
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,252
	mov enemyx2,253
	mov enemyy1,173
	mov enemyy2,180
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,252
	mov enemyx2,253
	mov enemyy1,187
	mov enemyy2,194
	mov enemycolor,16
	call DrawRectangle


	mov enemyx1,266
	mov enemyx2,267
	mov enemyy1,158
	mov enemyy2,165
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,266
	mov enemyx2,267
	mov enemyy1,173
	mov enemyy2,180
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,266
	mov enemyx2,267
	mov enemyy1,187
	mov enemyy2,194
	mov enemycolor,16
	call DrawRectangle




	;tumbay
	mov enemyx1,180
	mov enemyx2,190
	mov enemyy1,143
	mov enemyy2,150
	mov enemycolor,6
	call DrawRectangle

	mov enemyx1,180
	mov enemyx2,190
	mov enemyy1,142
	mov enemyy2,143
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,190
	mov enemyx2,191
	mov enemyy1,142
	mov enemyy2,150
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,190
	mov enemyx2,200
	mov enemyy1,150
	mov enemyy2,151
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,199
	mov enemyx2,200
	mov enemyy1,142
	mov enemyy2,150
	mov enemycolor,15
	call DrawRectangle




	mov enemyx1,200
	mov enemyx2,210
	mov enemyy1,143
	mov enemyy2,150
	mov enemycolor,6
	call DrawRectangle

	mov enemyx1,200
	mov enemyx2,210
	mov enemyy1,142
	mov enemyy2,143
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,209
	mov enemyx2,210
	mov enemyy1,142
	mov enemyy2,151
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,210
	mov enemyx2,220
	mov enemyy1,150
	mov enemyy2,151
	mov enemycolor,15
	call DrawRectangle


	
	
	mov enemyx1,220
	mov enemyx2,230
	mov enemyy1,143
	mov enemyy2,150
	mov enemycolor,6
	call DrawRectangle

	mov enemyx1,220
	mov enemyx2,230
	mov enemyy1,142
	mov enemyy2,143
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,219
	mov enemyx2,220
	mov enemyy1,142
	mov enemyy2,150
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,229
	mov enemyx2,230
	mov enemyy1,142
	mov enemyy2,151
	mov enemycolor,15
	call DrawRectangle


	mov enemyx1,230
	mov enemyx2,240
	mov enemyy1,150
	mov enemyy2,151
	mov enemycolor,15
	call DrawRectangle




	mov enemyx1,240
	mov enemyx2,250
	mov enemyy1,143
	mov enemyy2,150
	mov enemycolor,6
	call DrawRectangle

	mov enemyx1,240
	mov enemyx2,250
	mov enemyy1,142
	mov enemyy2,143
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,239
	mov enemyx2,240
	mov enemyy1,142
	mov enemyy2,151
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,249
	mov enemyx2,250
	mov enemyy1,142
	mov enemyy2,151
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,250
	mov enemyx2,260
	mov enemyy1,150
	mov enemyy2,151
	mov enemycolor,15
	call DrawRectangle



	mov enemyx1,260
	mov enemyx2,270
	mov enemyy1,143
	mov enemyy2,150
	mov enemycolor,6
	call DrawRectangle

	mov enemyx1,260
	mov enemyx2,270
	mov enemyy1,142
	mov enemyy2,143
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,259
	mov enemyx2,260
	mov enemyy1,142
	mov enemyy2,150
	mov enemycolor,15
	call DrawRectangle





	;jurwaaa

	;first floor

	mov enemyx1,195-90
	mov enemyx2,255-90
	mov enemyy1,110
	mov enemyy2,150
	mov enemycolor,6
	call DrawRectangle


	
	;horizontal walls
	mov enemyx1,195-90
	mov enemyx2,255-90
	mov enemyy1,144
	mov enemyy2,145
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,195-90
	mov enemyx2,255-90
	mov enemyy1,137
	mov enemyy2,138
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,195-90
	mov enemyx2,255-90
	mov enemyy1,130
	mov enemyy2,131
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,195-90
	mov enemyx2,255-90
	mov enemyy1,123
	mov enemyy2,124
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,195-90
	mov enemyx2,255-90
	mov enemyy1,116
	mov enemyy2,117
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,195-90
	mov enemyx2,255-90
	mov enemyy1,109
	mov enemyy2,110
	mov enemycolor,16
	call DrawRectangle



	;door1
	mov enemyx1,205-90
	mov enemyx2,220-90
	mov enemyy1,124
	mov enemyy2,150
	mov enemycolor,16
	call DrawRectangle

	;door2
	mov enemyx1,230-90
	mov enemyx2,245-90
	mov enemyy1,124
	mov enemyy2,150
	mov enemycolor,16
	call DrawRectangle


	;vertical walls
	mov enemyx1,200-90
	mov enemyx2,201-90
	mov enemyy1,110
	mov enemyy2,117
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,200-90
	mov enemyx2,201-90
	mov enemyy1,124
	mov enemyy2,131
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,200-90
	mov enemyx2,201-90
	mov enemyy1,138
	mov enemyy2,145
	mov enemycolor,16
	call DrawRectangle


	mov enemyx1,214-90
	mov enemyx2,215-90
	mov enemyy1,110
	mov enemyy2,117
	mov enemycolor,16
	call DrawRectangle


	mov enemyx1,229-90
	mov enemyx2,230-90
	mov enemyy1,110
	mov enemyy2,117
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,243-90
	mov enemyx2,244-90
	mov enemyy1,110
	mov enemyy2,117
	mov enemycolor,16
	call DrawRectangle


	mov enemyx1,209-90
	mov enemyx2,210-90
	mov enemyy1,117
	mov enemyy2,124
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,224-90
	mov enemyx2,225-90
	mov enemyy1,117
	mov enemyy2,124
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,239-90
	mov enemyx2,240-90
	mov enemyy1,117
	mov enemyy2,124
	mov enemycolor,16
	call DrawRectangle



	;tumbay
	mov enemyx1,195-90
	mov enemyx2,205-90
	mov enemyy1,100
	mov enemyy2,109
	mov enemycolor,6
	call DrawRectangle

	mov enemyx1,220-90
	mov enemyx2,230-90
	mov enemyy1,100
	mov enemyy2,109
	mov enemycolor,6
	call DrawRectangle

	mov enemyx1,245-90
	mov enemyx2,255-90
	mov enemyy1,100
	mov enemyy2,109
	mov enemycolor,6
	call DrawRectangle

	
	mov enemyx1,195-90
	mov enemyx2,205-90
	mov enemyy1,99
	mov enemyy2,100
	mov enemycolor,15
	call DrawRectangle
	
	mov enemyx1,220-90
	mov enemyx2,230-90
	mov enemyy1,99
	mov enemyy2,100
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,245-90
	mov enemyx2,255-90
	mov enemyy1,99
	mov enemyy2,100
	mov enemycolor,15
	call DrawRectangle


	mov enemyx1,205-90
	mov enemyx2,220-90
	mov enemyy1,109
	mov enemyy2,110
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,230-90
	mov enemyx2,245-90
	mov enemyy1,109
	mov enemyy2,110
	mov enemycolor,15
	call DrawRectangle


	mov enemyx1,205-90
	mov enemyx2,206-90
	mov enemyy1,99
	mov enemyy2,110
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,219-90
	mov enemyx2,220-90
	mov enemyy1,99
	mov enemyy2,110
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,230-90
	mov enemyx2,231-90
	mov enemyy1,99
	mov enemyy2,110
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,244-90
	mov enemyx2,245-90
	mov enemyy1,99
	mov enemyy2,110
	mov enemycolor,15
	call DrawRectangle











	;ground floor

	mov enemyx1,90
	mov enemyx2,180
	mov enemyy1,150
	mov enemyy2,200
	mov enemycolor,6
	call DrawRectangle


	;horizontal walls
	mov enemyx1,90
	mov enemyx2,180
	mov enemyy1,193
	mov enemyy2,194
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,90
	mov enemyx2,180
	mov enemyy1,186
	mov enemyy2,187
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,90
	mov enemyx2,180
	mov enemyy1,179
	mov enemyy2,180
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,90
	mov enemyx2,180
	mov enemyy1,172
	mov enemyy2,173
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,90
	mov enemyx2,180
	mov enemyy1,165
	mov enemyy2,166
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,90
	mov enemyx2,180
	mov enemyy1,158
	mov enemyy2,159
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,90
	mov enemyx2,180
	mov enemyy1,150
	mov enemyy2,151
	mov enemycolor,16
	call DrawRectangle

	 

	;door
	mov enemyx1,210-90
	mov enemyx2,240-90
	mov enemyy1,159
	mov enemyy2,200
	mov enemycolor,16
	call DrawRectangle



	;vertical walls
	mov enemyx1,185-90
	mov enemyx2,186-90
	mov enemyy1,150
	mov enemyy2,158
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,185-90
	mov enemyx2,186-90
	mov enemyy1,165
	mov enemyy2,173
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,185-90
	mov enemyx2,186-90
	mov enemyy1,180
	mov enemyy2,187
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,185-90
	mov enemyx2,186-90
	mov enemyy1,194
	mov enemyy2,200
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,200-90
	mov enemyx2,201-90
	mov enemyy1,150
	mov enemyy2,158
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,200-90
	mov enemyx2,201-90
	mov enemyy1,165
	mov enemyy2,173
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,200-90
	mov enemyx2,201-90
	mov enemyy1,180
	mov enemyy2,187
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,200-90
	mov enemyx2,201-90
	mov enemyy1,194
	mov enemyy2,200
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,215-90
	mov enemyx2,216-90
	mov enemyy1,150
	mov enemyy2,158
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,230-90
	mov enemyx2,231-90
	mov enemyy1,150
	mov enemyy2,158
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,245-90
	mov enemyx2,246-90
	mov enemyy1,150
	mov enemyy2,158
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,245-90
	mov enemyx2,246-90
	mov enemyy1,165
	mov enemyy2,173
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,245-90
	mov enemyx2,246-90
	mov enemyy1,180
	mov enemyy2,187
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,245-90
	mov enemyx2,246-90
	mov enemyy1,194
	mov enemyy2,200
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,260-90
	mov enemyx2,261-90
	mov enemyy1,150
	mov enemyy2,158
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,260-90
	mov enemyx2,261-90
	mov enemyy1,165
	mov enemyy2,173
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,260-90
	mov enemyx2,261-90
	mov enemyy1,180
	mov enemyy2,187
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,260-90
	mov enemyx2,261-90
	mov enemyy1,194
	mov enemyy2,200
	mov enemycolor,16
	call DrawRectangle


	mov enemyx1,192-90
	mov enemyx2,193-90
	mov enemyy1,158
	mov enemyy2,165
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,192-90
	mov enemyx2,193-90
	mov enemyy1,173
	mov enemyy2,180
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,192-90
	mov enemyx2,193-90
	mov enemyy1,187
	mov enemyy2,194
	mov enemycolor,16
	call DrawRectangle


	mov enemyx1,207-90
	mov enemyx2,208-90
	mov enemyy1,158
	mov enemyy2,165
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,207-90
	mov enemyx2,208-90
	mov enemyy1,173
	mov enemyy2,180
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,207-90
	mov enemyx2,208-90
	mov enemyy1,187
	mov enemyy2,194
	mov enemycolor,16
	call DrawRectangle


	mov enemyx1,252-90
	mov enemyx2,253-90
	mov enemyy1,158
	mov enemyy2,165
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,252-90
	mov enemyx2,253-90
	mov enemyy1,173
	mov enemyy2,180
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,252-90
	mov enemyx2,253-90
	mov enemyy1,187
	mov enemyy2,194
	mov enemycolor,16
	call DrawRectangle


	mov enemyx1,266-90
	mov enemyx2,267-90
	mov enemyy1,158
	mov enemyy2,165
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,266-90
	mov enemyx2,267-90
	mov enemyy1,173
	mov enemyy2,180
	mov enemycolor,16
	call DrawRectangle

	mov enemyx1,266-90
	mov enemyx2,267-90
	mov enemyy1,187
	mov enemyy2,194
	mov enemycolor,16
	call DrawRectangle




	;tumbay
	mov enemyx1,180-90
	mov enemyx2,190-90
	mov enemyy1,143
	mov enemyy2,150
	mov enemycolor,6
	call DrawRectangle

	mov enemyx1,180-90
	mov enemyx2,190-90
	mov enemyy1,142
	mov enemyy2,143
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,190-90
	mov enemyx2,191-90
	mov enemyy1,142
	mov enemyy2,150
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,190-90
	mov enemyx2,200-90
	mov enemyy1,150
	mov enemyy2,151
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,199-90
	mov enemyx2,200-90
	mov enemyy1,142
	mov enemyy2,150
	mov enemycolor,15
	call DrawRectangle




	mov enemyx1,200-90
	mov enemyx2,210-90
	mov enemyy1,143
	mov enemyy2,150
	mov enemycolor,6
	call DrawRectangle

	mov enemyx1,200-90
	mov enemyx2,210-90
	mov enemyy1,142
	mov enemyy2,143
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,209-90
	mov enemyx2,210-90
	mov enemyy1,142
	mov enemyy2,151
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,210-90
	mov enemyx2,220-90
	mov enemyy1,150
	mov enemyy2,151
	mov enemycolor,15
	call DrawRectangle


	
	
	mov enemyx1,220-90
	mov enemyx2,230-90
	mov enemyy1,143
	mov enemyy2,150
	mov enemycolor,6
	call DrawRectangle

	mov enemyx1,220-90
	mov enemyx2,230-90
	mov enemyy1,142
	mov enemyy2,143
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,219-90
	mov enemyx2,220-90
	mov enemyy1,142
	mov enemyy2,150
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,229-90
	mov enemyx2,230-90
	mov enemyy1,142
	mov enemyy2,151
	mov enemycolor,15
	call DrawRectangle


	mov enemyx1,230-90
	mov enemyx2,240-90
	mov enemyy1,150
	mov enemyy2,151
	mov enemycolor,15
	call DrawRectangle




	mov enemyx1,240-90
	mov enemyx2,250-90
	mov enemyy1,143
	mov enemyy2,150
	mov enemycolor,6
	call DrawRectangle

	mov enemyx1,240-90
	mov enemyx2,250-90
	mov enemyy1,142
	mov enemyy2,143
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,239-90
	mov enemyx2,240-90
	mov enemyy1,142
	mov enemyy2,151
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,249-90
	mov enemyx2,250-90
	mov enemyy1,142
	mov enemyy2,151
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,250-90
	mov enemyx2,260-90
	mov enemyy1,150
	mov enemyy2,151
	mov enemycolor,15
	call DrawRectangle



	mov enemyx1,260-90
	mov enemyx2,270-90
	mov enemyy1,143
	mov enemyy2,150
	mov enemycolor,6
	call DrawRectangle

	mov enemyx1,260-90
	mov enemyx2,270-90
	mov enemyy1,142
	mov enemyy2,143
	mov enemycolor,15
	call DrawRectangle

	mov enemyx1,259-90
	mov enemyx2,260-90
	mov enemyy1,142
	mov enemyy2,150
	mov enemycolor,15
	call DrawRectangle




	;pole

	mov enemyx1,176
	mov enemyx2,185
	mov enemyy1,138
	mov enemyy2,142
	mov enemycolor,8
	call DrawRectangle

	mov enemyx1,179
	mov enemyx2,182
	mov enemyy1,15
	mov enemyy2,142
	mov enemycolor,8
	call DrawRectangle


	;flag
	mov enemyx1,140
	mov enemyx2,179
	mov enemyy1,15
	mov enemyy2,40
	mov enemycolor,15
	call DrawRectangle


	;gap
	mov enemyx1,178
	mov enemyx2,179
	mov enemyy1,15
	mov enemyy2,40
	mov enemycolor,16
	call DrawRectangle

	

	;to save values of last cl dl ch dh
	pop bx
	pop ax
	pop dx
	pop cx


endm








;---------------
nameScreen MACRO

	mov si,@data

	;to save values of last cl dl ch dh
	push cx
	push dx
	push ax
	push bx


	mov ah,13h
	mov al,01
	;mov bh,00 ;set cursor back at row

	mov bl,07 ;color
	mov cx,17 ;alphabets in string
	mov dh,5  ;row
	mov dl,10 ;column
	mov bp,offset msg1
	mov es,si
	int 10h

	mov cx,16 ;alphabets in string
	mov dh,6  ;row
	mov dl,10 ;column
	mov bp,offset msg
	mov es,si
	int 10h


	mov cx,17 ;alphabets in string
	mov dh,12  ;row
	mov dl,4 ;column
	mov bp,offset msg15
	mov es,si
	int 10h

	mov si,0
	bhhh:
		mov ah,01
		int 21h 
		
		.if al == 13
			jmp endinput
		.else
			mov inputName[si],al
	
			mov cx,1 ;alphabets in string
			mov dh,14  ;row
			mov dl,10 ;column
			mov bp,offset inputName
			mov es,si
			int 10h

			inc si
			inc cx
		.endif

	loop bhhh


endinput:
	mov flag,1

	;to save values of last cl dl ch dh
	pop bx
	pop ax
	pop dx
	pop cx


endm








endScreen MACRO

	mov si,@data

	;to save values of last cl dl ch dh
	push cx
	push dx
	push ax
	push bx


	mov ah,13h
	mov al,01
	;mov bh,00 ;set cursor back at row

	mov bl,07 ;color
	mov cx,17 ;alphabets in string
	mov dh,5  ;row
	mov dl,10 ;column
	mov bp,offset msg1
	mov es,si
	int 10h

	mov cx,16 ;alphabets in string
	mov dh,6  ;row
	mov dl,10 ;column
	mov bp,offset msg
	mov es,si
	int 10h

	.if status == 1
		;mov bl,04 ;color
		mov cx,13 ;alphabets in string
		mov dh,10  ;row
		mov dl,11 ;column
		mov bp,offset msg11
		mov es,si
		int 10h
	.else
		;mov bl,04 ;color
		mov cx,14 ;alphabets in string
		mov dh,10  ;row
		mov dl,11 ;column
		mov bp,offset msg12
		mov es,si
		int 10h
	.endif

	mov cx,6 ;alphabets in string
	mov dh,16  ;row
	mov dl,10 ;column
	mov bp,offset msg13
	mov es,si
	int 10h

	;mov bl,04 ;color
	mov cx,6 ;alphabets in string
	mov dh,19  ;row
	mov dl,10 ;column
	mov bp,offset msg14
	mov es,si
	int 10h

	mov bl,07 ;color
	mov cx,1 ;alphabets in string
	mov dh,19  ;row
	mov dl,18 ;column
	mov bp,offset level
	mov es,si
	int 10h

	mov bl,07 ;color
	mov cx,1 ;alphabets in string
	mov dh,16  ;row
	mov dl,18 ;column
	add score,48
	mov bp,offset score
	mov es,si
	int 10h

	;to save values of last cl dl ch dh
	pop bx
	pop ax
	pop dx
	pop cx


endm











;----high score screen-----
HighScore MACRO

	mov si,@data

	;to save values of last cl dl ch dh
	push cx
	push dx
	push ax
	push bx


	mov ah,13h
	mov al,01
	;mov bh,00 ;set cursor back at row

	mov bl,07 ;color
	mov cx,17 ;alphabets in string
	mov dh,5  ;row
	mov dl,10 ;column
	mov bp,offset msg1
	mov es,si
	int 10h

	mov cx,16 ;alphabets in string
	mov dh,6  ;row
	mov dl,10 ;column
	mov bp,offset msg
	mov es,si
	int 10h

	;mov bl,04 ;color
	mov cx,11 ;alphabets in string
	mov dh,9  ;row
	mov dl,10 ;column
	mov bp,offset msg6
	mov es,si
	int 10h

	;mov bl,04 ;color
	mov cx,6 ;alphabets in string
	mov dh,12  ;row
	mov dl,12 ;column
	mov bp,offset msg7
	mov es,si
	int 10h

	mov cx,6 ;alphabets in string
	mov dh,14  ;row
	mov dl,12 ;column
	mov bp,offset msg8
	mov es,si
	int 10h

	;mov bl,04 ;color
	mov cx,30 ;alphabets in string
	mov dh,19  ;row
	mov dl,5 ;column
	mov bp,offset msg9
	mov es,si
	int 10h

	;mov bl,04 ;color
	mov cx,27 ;alphabets in string
	mov dh,21  ;row
	mov dl,5 ;column
	mov bp,offset msg10
	mov es,si
	int 10h


	;to save values of last cl dl ch dh
	pop bx
	pop ax
	pop dx
	pop cx


endm






;-----start screen---------
startScreen MACRO

	mov si,@data

	;to save values of last cl dl ch dh
	push cx
	push dx
	push ax
	push bx


	mov ah,13h
	mov al,01
	;mov bh,00 ;set cursor back at row

	mov bl,07 ;color
	mov cx,17 ;alphabets in string
	mov dh,6  ;row
	mov dl,10 ;column
	mov bp,offset msg1
	mov es,si
	int 10h

	mov cx,16 ;alphabets in string
	mov dh,7  ;row
	mov dl,10 ;column
	mov bp,offset msg
	mov es,si
	int 10h

	;mov bl,04 ;color
	mov cx,7 ;alphabets in string
	mov dh,10  ;row
	mov dl,10 ;column
	mov bp,offset msg2
	mov es,si
	int 10h

	;mov bl,04 ;color
	mov cx,19 ;alphabets in string
	mov dh,13  ;row
	mov dl,12 ;column
	mov bp,offset msg3
	mov es,si
	int 10h

	;mov bl,04 ;color
	mov cx,20 ;alphabets in string
	mov dh,15  ;row
	mov dl,12 ;column
	mov bp,offset msg4
	mov es,si
	int 10h

	;mov bl,04 ;color
	mov cx,12 ;alphabets in string
	mov dh,17  ;row
	mov dl,12 ;column
	mov bp,offset msg5
	mov es,si
	int 10h


	;to save values of last cl dl ch dh
	pop bx
	pop ax
	pop dx
	pop cx
;jmp A

endm







;------game screen drawing------
Hurdles MACRO
	;mov ah,00h
	;mov al,13h
	;int 10h

	mov si,@data

	;to save values of last cl dl ch dh
	push cx
	push dx
	push ax
	push bx




	mov ah,13h
	mov al,01
	;mov bh,00 ;set cursor back at row

	mov bl,07 ;color
	mov cx,6 ;alphabets in string
	mov dh,1  ;row
	mov dl,1 ;column
	mov bp,offset msg14
	mov es,si
	int 10h

	mov bl,07 ;color
	mov cx,1 ;alphabets in string
	mov dh,1  ;row
	mov dl,8 ;column
	add level,48
	;add score,48
	mov bp,offset level
	mov es,si
	int 10h

	;mov bl,07 ;color
	;mov cx,6 ;alphabets in string
	;mov dh,3  ;row
	;mov dl,1 ;column
	;mov bp,offset msg13
	;mov es,si
	;int 10h

	;mov bl,07 ;color
	;mov cx,1 ;alphabets in string
	;mov dh,3  ;row
	;mov dl,8 ;column
	;mov bp,offset score
	;mov es,si
	;int 10h



	;to save values of last cl dl ch dh
	;push cx
	;push dx


	;hurdle 1 lower part
	mov ah,06
	mov al,0
	mov bh,10	;10=light green color

	mov cl,8	;cl = start column	
	mov ch,21	;ch = start row	
	mov dh,24	;dh = end row	
	mov dl,8	;dl = end column
			;c for start and d for end	
	int 10h

	;hurdle 1 upper part
	mov cl,7	;cl = start column	
	mov ch,19	;ch = start row	
	mov dh,20	;dh = end row	
	mov dl,9	;dl = end column
			;c for start and d for end	
	int 10h

	;hurdle 2 lower part
	mov cl,20	;cl = start column	
	mov ch,21	;ch = start row	
	mov dh,24	;dh = end row	
	mov dl,20	;dl = end column
			;c for start and d for end	
	int 10h

	;hurdle 2 upper part
	mov cl,19	;cl = start column	
	mov ch,19	;ch = start row	
	mov dh,20	;dh = end row	
	mov dl,21	;dl = end column
			;c for start and d for end	
	int 10h

	;hurdle 3 lower part
	mov cl,30	;cl = start column	
	mov ch,21	;ch = start row	
	mov dh,24	;dh = end row	
	mov dl,30	;dl = end column
			;c for start and d for end	
	int 10h

	;hurdle 3 upper part
	mov cl,29	;cl = start column	
	mov ch,19	;ch = start row	
	mov dh,20	;dh = end row	
	mov dl,31	;dl = end column
			;c for start and d for end	
	int 10h

	;flagpole
	mov bh,07	;07=gray color
	mov cl,39	;cl = start column	
	mov ch,1	;ch = start row	
	mov dh,24	;dh = end row	
	mov dl,39	;dl = end column
			;c for start and d for end	
	int 10h

	;flag
	mov bh,2	;2=dark green color
	mov cl,33	;cl = start column	
	mov ch,1	;ch = start row	
	mov dh,5	;dh = end row	
	mov dl,38	;dl = end column
			;c for start and d for end	
	int 10h


	mov enemyx1,54
	mov enemyx2,80
	mov enemyy1,152
	mov enemyy2,154
	mov enemycolor,2
	call DrawRectangle

	mov enemyx1,54
	mov enemyx2,80
	mov enemyy1,168
	mov enemyy2,170
	mov enemycolor,2
	call DrawRectangle

	mov enemyx1,54
	mov enemyx2,56
	mov enemyy1,154
	mov enemyy2,168
	mov enemycolor,2
	call DrawRectangle

	mov enemyx1,58
	mov enemyx2,62
	mov enemyy1,156
	mov enemyy2,162
	mov enemycolor,2
	call DrawRectangle

	mov enemyx1,78
	mov enemyx2,80
	mov enemyy1,154
	mov enemyy2,168
	mov enemycolor,2
	call DrawRectangle

	mov enemyx1,71
	mov enemyx2,75
	mov enemyy1,168
	mov enemyy2,200
	mov enemycolor,2
	call DrawRectangle

	mov enemyx1,60
	mov enemyx2,64
	mov enemyy1,168
	mov enemyy2,200
	mov enemycolor,2
	call DrawRectangle


	mov enemyx1,156
	mov enemyx2,160
	mov enemyy1,168
	mov enemyy2,200
	mov enemycolor,2
	call DrawRectangle

	mov enemyx1,166
	mov enemyx2,170
	mov enemyy1,168
	mov enemyy2,200
	mov enemycolor,2
	call DrawRectangle

	mov enemyx1,236
	mov enemyx2,240
	mov enemyy1,168
	mov enemyy2,200
	mov enemycolor,2
	call DrawRectangle

	mov enemyx1,246
	mov enemyx2,250
	mov enemyy1,168
	mov enemyy2,200
	mov enemycolor,2
	call DrawRectangle



	mov enemyx1,150
	mov enemyx2,176
	mov enemyy1,166
	mov enemyy2,168
	mov enemycolor,2
	call DrawRectangle

	mov enemyx1,150
	mov enemyx2,176
	mov enemyy1,152
	mov enemyy2,154
	mov enemycolor,2
	call DrawRectangle

	mov enemyx1,150
	mov enemyx2,152
	mov enemyy1,152
	mov enemyy2,166
	mov enemycolor,2
	call DrawRectangle

	mov enemyx1,154
	mov enemyx2,158
	mov enemyy1,155
	mov enemyy2,160
	mov enemycolor,2
	call DrawRectangle

	mov enemyx1,174
	mov enemyx2,176
	mov enemyy1,152
	mov enemyy2,166
	mov enemycolor,2
	call DrawRectangle




	mov enemyx1,230
	mov enemyx2,256
	mov enemyy1,166
	mov enemyy2,168
	mov enemycolor,2
	call DrawRectangle

	mov enemyx1,230
	mov enemyx2,256
	mov enemyy1,152
	mov enemyy2,154
	mov enemycolor,2
	call DrawRectangle

	mov enemyx1,230
	mov enemyx2,232
	mov enemyy1,152
	mov enemyy2,166
	mov enemycolor,2
	call DrawRectangle

	mov enemyx1,234
	mov enemyx2,238
	mov enemyy1,155
	mov enemyy2,160
	mov enemycolor,2
	call DrawRectangle

	mov enemyx1,254
	mov enemyx2,256
	mov enemyy1,152
	mov enemyy2,166
	mov enemycolor,2
	call DrawRectangle









	;star in flag

mov enemyx1,287
mov enemyx2,289
mov enemyy1,18
mov enemyy2,20
mov enemycolor,7
call DrawRectangle

mov enemyx1,286
mov enemyx2,290
mov enemyy1,20
mov enemyy2,22
;mov enemycolor,4
call DrawRectangle

mov enemyx1,284
mov enemyx2,292
mov enemyy1,22
mov enemyy2,24
;mov enemycolor,4
call DrawRectangle

mov enemyx1,280
mov enemyx2,296
mov enemyy1,24
mov enemyy2,26
;mov enemycolor,4
call DrawRectangle

mov enemyx1,276
mov enemyx2,300
mov enemyy1,26
mov enemyy2,28
;mov enemycolor,4
call DrawRectangle

mov enemyx1,277
mov enemyx2,299
mov enemyy1,28
mov enemyy2,30
;mov enemycolor,4
call DrawRectangle

mov enemyx1,279
mov enemyx2,296
mov enemyy1,30
mov enemyy2,32
;mov enemycolor,4
call DrawRectangle

mov enemyx1,281
mov enemyx2,287
mov enemyy1,32
mov enemyy2,34
;mov enemycolor,4
call DrawRectangle

mov enemyx1,282
mov enemyx2,286
mov enemyy1,34
mov enemyy2,36
;mov enemycolor,4
call DrawRectangle

mov enemyx1,283
mov enemyx2,285
mov enemyy1,36
mov enemyy2,38
;mov enemycolor,4
call DrawRectangle

mov enemyx1,287
mov enemyx2,295
mov enemyy1,32
mov enemyy2,34
;mov enemycolor,4
call DrawRectangle

mov enemyx1,288
mov enemyx2,293
mov enemyy1,34
mov enemyy2,36
;mov enemycolor,4
call DrawRectangle

mov enemyx1,290
mov enemyx2,292
mov enemyy1,36
mov enemyy2,38
;mov enemycolor,4
call DrawRectangle




	;to save values of last cl dl ch dh
	pop bx
	pop ax
	pop dx
	pop cx

endm









;--------mario body moving--------
MarioBoi MACRO x1,x2,y1,y2

	;to save values of last cl dl ch dh
	push cx
	push dx

	mov xx1,x1
	mov xx2,x2
	mov yy1,y1
	mov yy2,y2


	;face
	mov ah,06
	mov al,0

	mov bh,42

;2 19 19 2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

	mov bh,67
;3 19 19 3
	inc xx1
	inc xx2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;4 20 20 4
	inc xx1
	inc xx2
	inc yy1
	inc yy2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;2 20 20 2
	sub xx1,2
	sub xx2,2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;3 20 20 3
	inc xx1
	inc xx2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

	;eye
	mov bh,3
;4 19 19 4
	inc xx1
	inc xx2
	dec yy1
	dec yy2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

	;hat
	mov bh,40

;1 18 18 1
	sub xx1,3
	sub xx2,3
	dec yy1
	dec yy2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;2 18 18 2
	inc xx1 
	inc xx2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;3 18 18 3
	inc xx1
	inc xx2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;4 18 18 4
	inc xx1
	inc xx2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;5 18 18 5
	inc xx1
	inc xx2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;2 17 17 2
	sub xx1,3
	sub xx2,3
	dec yy1
	dec yy2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;3 17 17 3
	inc xx1
	inc xx2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;4 17 17 4
	inc xx1
	inc xx2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h


	;body
	mov bh,40
;3 21 21 3
;2 21 21 2
	dec xx1
	dec xx2
	add yy1,4
	add yy2,4
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;3 22 22 3
	inc yy1
	inc yy2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

	mov bh,3
;3 23 23 3
	inc yy1
	inc yy2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;4 21 21 4
inc xx1
inc xx2
sub yy1,2
sub yy2,2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;2 21 21 2
	sub xx1,2
	sub xx2,2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;2 22 22 2
	inc yy1
	inc yy2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;2 23 23 2
	inc yy1
	inc yy2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;4 22 22 4
	add xx1,2
	add xx2,2
	dec yy1
	dec yy2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;4 23 23 4
	inc yy1
	inc yy2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

	mov bh,40

;5 21 21 5
	inc xx1
	inc xx2
	sub yy1,2
	sub yy2,2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;1 21 21 1
	sub xx1,4
	sub xx2,4
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

	mov bh,67

;1 22 22 1
	inc yy1
	inc yy2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;5 22 22 5
	add xx1,4
	add xx2,4
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

	mov bh,42

;5 24 24 5
	add yy1,2
	add yy2,2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;4 24 24 4
	dec xx1
	dec xx2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;1 24 24 1
	sub xx1,3
	sub xx2,3
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h

;2 24 24 2
	inc xx1
	inc xx2
	mov cl,xx1	;cl = start column	
	mov ch,yy1	;ch = start row	
	mov dh,yy2	;dh = end row	
	mov dl,xx2	;dl = end column
			;c for start and d for end	
	int 10h




	;to save values of last cl dl ch dh
	pop dx
	pop cx

endm






;---------------slows down the screen display--------------
sleep macro		
	;push cx
	push dx
	push ax

	mov dx,0
	mov ax,0
	mov cx,0
	mov cx,1
	mov dx,000fh
	mov ah,86h
	int 15h

	pop ax
	pop dx
	;pop cx

	
endm		
;-----------------------End Sleep---------------------




;----------------------------------------------------------------------
;----------------------------------------------------------------------
;----------------------------------------------------------------------
;-------------------------MACROS END-----------------------------------
;----------------------------------------------------------------------
;----------------------------------------------------------------------





.model small
.stack 100h
.data
	xx1 db 0	;mario
	xx2 db 0	;mario
	yy1 db 0	;mario
	yy2 db 0	;mario

	ex1 db 0
	ex2 db 0
	ey1 db 0
	ey2 db 0

	kx1 dw 100	;enemy
	kx2 dw 110	;enemy
	ky1 dw 0	;enemy
	ky2 dw 0	;enemy

	mariox1 dw 30
	marioy1 dw 160

	mx1 dw 163	;monster x1 
	mx2 dw 172	;monster x2

	by1 dw 58	;bomb y1
	by2 dw 61	;bomb y2


	enemyx1 dw 0
	enemyx2 dw 0
	enemyy1 dw 0
	enemyy2 dw 0
	enemycolor db 0

	enemyrightflag db 0
	monsterrightflag db 0

	bombdownflag db 0

	status db 0 ;win or lose
	flag db 0
	cont db 1
	contlev db 1
	msg1 db "SUPER MARIO BROS.$"
	msg db "________________$"
	msg2 db "Press: $"
	msg3 db "1.   START NEW GAME$"
	msg4 db "2.   VIEW HIGH SCORE$"
	msg5 db "esc. TO EXIT GAME$"
	msg6 db "High Score:$"
	msg7 db "1. 666$"
	msg8 db "2. 333$"
	msg9 db "-> Press 'b' to return to MAIN$"
	msg10 db "-> Press 'esc' TO EXIT GAME$"
	msg11 db "~~ You Win ~~$"
	msg12 db "~~ You Lose ~~$"
	msg13 db "Score:$"
	msg14 db "Level:$"
	msg15 db "Enter Your Name: $"
	msgwin db "WIN$"
	inputName db 10 dup('$')
	level db 0
	score db 3
	delayvar dw 0
	countmove db 0

.code


;-------------------MAIN PROC START--------------------
main proc

mov ax,@data
mov ds,ax

	mov ah,00h
	mov al,13h
	int 10h

	startScreen
	;add score,48
	jmp A

	mov ch,19
	mov cl,1
	mov dl,1
	mov dh,19
	;MarioBoi cl,dl,ch,dh



start:
	mov ah,00h	;clear screen
	mov al,13h
	int 10h

		.if cont == 1
			jmp Lev1
		.elseif cont == 2
			jmp Lev2
		.else
			jmp Lev3
		.endif


	
b:
	mov ax, cx
	sleep
	sleep
	mov cx,ax


;-------------if level 3 complete then end screen is called---------------
.if contLev == 4
	sleep
	sleep
	sleep
	sleep
	sleep
	sleep
	sleep
	jmp endprog
.endif


;----------------Enemy_Collision_Code-------------------
.if contLev > 1
	mov ax, kx1
	.if ax < mariox1 ;&& mariox1 <=100
	;.if ax <= 100
	mov ax, 105 
		.if  marioy1 >= ax
			mov ax, 250
			;.if  contLev > 2 && ax < mariox1	 
			;	jmp collisionexit
			;.endif 
			docollision:
			mov status, 0
			mov score,3
			mov cont,4
			;call reset
			jmp endScr
		.endif
	;.endif
	.endif
.endif

collisionexit:
	mov ah,01h
	int 16h
	jz start

;-----------this label takes inputs from the key board and jumps to labels-------------
A:
	mov ah,10h ;scan-code input
	int 16h

	cmp ah,02h ;num 1 pressed
	je num1

	cmp ah,03h ;num 2 pressed
	je num2

	cmp ah,30h ;b pressed
	je keyb

	cmp ah,48h ;Up Arrow
	je upkey

	cmp ah,4bh ;Left Arrow
	je leftkey

	cmp ah,4dh ;Right Arrow
	je rightkey

	cmp ah,50h ;Down Arrow
	je downkey

	cmp ah,01h ;endprog if esc
	jne A
	jmp endprog


;-------called when key b is pressed to take back to start screen----------
keyb:
	mov ah,00h	;clear screen
	mov al,13h
	int 10h

	;call level1
	;endScreen
	startScreen
	jmp A





;---------called when key 1 pressed and name input screen is called-----------
num1:
	mov ah,00h	;clear screen
	mov al,13h
	int 10h

	;call level1
	;jmp Lev1
	mov cont,1
	jmp nameScr
	call reset
	jmp b



;----------called when key number 2 pressed and high score screen is called----------
num2:
	mov ah,00h	;clear screen
	mov al,13h
	int 10h

	;call level1
	HighScore
	jmp A





;--------------this label called when up key is pressed---------------
upkey:
	mov ah,00h	;clear screen
	mov al,13h
	int 10h

	
	;------------------------decrements in y axis when up key pressed--------
	.while countmove < 6
		dec ch
		dec dh
		sub marioy1,10

		mov delayvar,20
		call delay
		inc countmove
		;jmp Lev1
		.if ch <= 8
			inc ch
			inc dh
			add marioy1,10
		.endif
	.endw

	mov countmove,0


	;---------------recalls the respective level screen ------------
	.if cont == 1
		jmp Lev1
	.elseif cont == 2
		jmp Lev2
	.else
		jmp Lev3
	.endif


	;--------------jumps back to A to take key board value--------------
	jmp A




;------------this label is called when left key is pressed----------------------
leftkey:
	mov ah,00h	;clear screen
	mov al,13h
	int 10h

	;-----decrements dh ch to move mario left---------------
	sub cl,1
	sub dl,1
	sub mariox1,10

	;---------condition to not pass through hurdle
	;---------if hurdle reached then increments again to keep mario where it was before--------
	.if cl <= 10 && dl >= 8 && ch >= 16 || cl <=22 && dl >= 20 && ch >= 14 || cl <=32 && dl >= 28 && ch >= 14
		add cl,1
		add dl,1
		add mariox1,10
		;jmp Lev1

		;------recalls the respective level screen again-------------
		.if cont == 1
			jmp Lev1
		.elseif cont == 2
			jmp Lev2
		.else
			jmp Lev3
		.endif

	.else

		.if cont == 1
			jmp Lev1
		.elseif cont == 2
			jmp Lev2
		.else
			jmp Lev3
		.endif

		jmp A
	.endif





;------------this label is called when right key pressed and implements functionality---------
rightkey:
	mov ah,00h	;clear screen
	mov al,13h
	int 10h

	;increments ch dh to move mario right
	add cl,1
	add dl,1
	add mariox1,10

	;-------condition to not pass through hurdle
	;-------if hurdle reaches and right pressed then this will decrement the c and dh to keep mario where it was before------------
	.if cl >= 5 && dl <= 6 && ch >= 16 || cl >=17 && dl <= 20 && ch >= 14 || cl >=27 && dl <= 29 && ch >= 14
		sub cl,1
		sub dl,1
		sub mariox1,10
		;jmp Lev1

		;-----------recalls the respevtive lavels screen-----------
		.if cont == 1
			jmp Lev1
		.elseif cont == 2
			jmp Lev2
		.else
			jmp Lev3
		.endif

		;-----------if reaches flag pole then displayes next levels/end screen
	.elseif dl > 36

		.if contlev == 1
			call reset
			mov cont,2
			jmp Lev2
		.elseif contlev == 2
			call reset
			mov cont,3
			jmp Lev3
		.elseif contLev == 3
			mov status,1
			mov score,9
			mov cont,4
			call reset
			jmp endScr
		.endif
	.else

		.if cont == 1
			jmp Lev1
		.elseif cont == 2
			jmp Lev2
		.elseif
			jmp Lev3
		.else
			jmp endScr
		.endif

	.endif





;-----------this label implements functionality when down key is pressed-----------
downkey:
	mov ah,00h	;clear screen
	mov al,13h
	int 10h



	;-------increments in ch dh to move down--------------
	.while ch <= 20

		add dh,2
		add ch,2
		add marioy1,10


		;-----ch >= 20 so that characters stay in limit of dosbox screen ------------
		;-----other restrictions so mario doesnt cross through the hurdles-----------
		.if ch >= 20 || ch>=14 && cl>=5 && dl<=9 || cl >=17 && dl <= 21 && ch >= 14 || cl >=27 && dl <= 31 && ch >= 14
			jmp uo
		.endif

		mov delayvar,20
		call delay
	;	inc countmove
	.endw

	mov countmove,0



uo:
;-----------if the character is below dosbox screen or between hurdles then this will decrements ch dh to move back up again-------
		.if ch >= 20 || ch>=14 && cl>=5 && dl<=9 || cl >=17 && dl <= 21 && ch >= 14 || cl >=27 && dl <= 31 && ch >= 14
			sub dh,2
			sub ch,2
			sub marioy1,10

			.if cont == 1
				jmp Lev1
			.elseif cont == 2
				jmp Lev2
			.else
				jmp Lev3
			.endif

		.else	
			.if cont == 1
				jmp Lev1
			.elseif cont == 2
				jmp Lev2
			.else
				jmp Lev3
			.endif

			jmp A
	
		.endif




;----------- this label draws the name input screen, calls macro and takes input of name----------
nameScr:
	mov ah,00h	;clear screen
	mov al,13h
	int 10h

	nameScreen
	call reset
	.if flag == 1
		mov ah,00h	;clear screen
		mov al,13h
		int 10h
		;jmp Lev1
		.if cont == 1
			jmp Lev1
		.elseif cont == 2
			jmp Lev2
		.else
			jmp Lev3
		.endif

	.endif

	jmp A



;---------this label draws the screen for lavel 1 and mario---------
Lev1:

	mov level,1
	MarioBoi cl,dl,ch,dh
	Hurdles

	jmp b




;--------this label draws the screen for level 2, mario and enemies----------
Lev2:
	mov contlev,2
	mov level,2
	MarioBoi cl,dl,ch,dh
	Hurdles

	mov enemyy1,168
	mov enemyy2,170

	.if enemyrightflag == 1
		sub kx1,6
		sub kx2,6
	.elseif enemyrightflag == 0 
		add kx1,6
		add kx2,6
	.endif
	
	EnemyBois
	EnemyBois2


	jmp b





;--------this label draws the screen for level 3, mario, enemies, and monster-------
Lev3:
	;mov cont,3
	mov contlev,3
	mov level,3
	MarioBoi cl,dl,ch,dh
	Hurdles
	mov enemyy1,168
	mov enemyy2,170

	.if enemyrightflag == 1
		sub kx1,4
		sub kx2,4
	.elseif enemyrightflag == 0 
		add kx1,4
		add kx2,4
	.endif
	
	EnemyBois
	EnemyBois2

	.if monsterrightflag == 1
		sub mx1,2
		sub mx2,2
	.else
		add mx1,2
		add mx2,2
	.endif

	mov enemyy1,26
	mov enemyy2,28
	;mov enemyx1,63
	;mov enemyx2,72
	MonsterBoi

	.if bombdownflag == 0
		add by1,2
		add by2,2
	.endif

	.if by1 <= 190
		Bomb
	.endif


	jmp b






;---------this label draws the end screen of game--------
;------if status = 0, then game lose-------
;------if status = 1, then game win--------

endScr:
	mov contLev,4
	mov ah,00h	;clear screen
	mov al,13h
	int 10h

	.if status == 1 	
		MarioBoi cl,dl,ch,dh
		kingdom
		mov delayvar,4066
		call delay
	.endif


	mov ah,00h	;clear screen
	mov al,13h
	int 10h

	endScreen
	sleep
	sleep
	jmp b





;-----------this label ends the program-----------
endprog:
	mov ah,00	;clear screen
	mov al,03
	int 10h     

	mov ah,4ch
	int 21h






main endp	
;----------main proc ends--------------









;----------------start reset proc----------------
;-----this procedure resets the values of registers everytime called----------

reset proc
	mov ch,19
	mov cl,1
	mov dl,1
	mov dh,19

	mov kx1,90
	mov kx2,100

	mov by1,58	
	mov by2,61	

	mov mariox1,30
	mov marioy1,160

	ret
reset endp
;----------------reset ends--------------------







;-----------start delay proc--------------------
;-------this proc delay the the next call-------------
delay proc

	push ax
	push bx
	push cx
	push dx

	mov cx,1000
	mydelay:
	;mov bx,3366      ;; increase this number if you want to add more delay, and decrease this number if you want to reduce delay.
	mov bx,delayvar
	mydelay1:
		dec bx
		jnz mydelay1
		loop mydelay


	pop dx
	pop cx
	pop bx
	pop ax

ret

delay endp
;---------------------end delay----------------





;----------start DrawRectangle proc-----------
;---------this proc takes the x and y coordinates and draws a rectangle of pixels------
DrawRectangle proc
push di
push si
push cx
push dx
mov cx,0
mov dx,0

mov di,enemyy1
begin:
	;starting column   
	mov si,enemyx1

outer:
	cmp di,enemyy2  
	je away
	mov si,enemyx1

here:
	cmp si,enemyx2 
	je finish
	inc si
	mov ah,0ch; interrupt number
	mov al,enemycolor ; color
	mov cx,si ;column number
	mov dx,di ;row number
	int 10h
	jmp here


finish:
	inc di
	jmp outer


away:	
pop dx
pop cx
pop si
pop di
	ret

DrawRectangle endp



end
;-----------------------------



