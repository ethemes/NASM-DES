Section .data

	num:	DD	`%d`, 10, 0
	addr:	DD	'%x', 10, 0
	nl:		DD	`\n`, 10, 0
	
	rs:		DD	'Right side:', 10, 0
	
	key:	DB	0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1 
	msg:	DB	0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1
	
	FOURB:	DB	0,0,0,0,0,0,0,1,0,0,1,0,0,0,1,1,0,1,0,0,0,1,0,1,0,1,1,0,0,1,1,1,1,0,0,0,1,0,0,1,1,0,1,0,1,0,1,1,1,1,0,0,1,1,0,1,1,1,1,0,1,1,1,1
	
	;; Permutation tables
	PC1:	DB 	56, 48, 40, 32, 24, 16, 8, 0, 57, 49, 41, 33, 25, 17, 9, 1, 58, 50, 42, 34, 26, 18, 10, 2, 59, 51, 43, 35, 62, 54, 46, 38, 30, 22, 14, 6, 61, 53, 45, 37, 29, 21, 13, 5, 60, 52, 44, 36, 28, 20, 12, 4, 27, 19, 11, 3
	PC2:	DB	13, 16, 10, 23, 0, 4, 2, 27, 14, 5, 20, 9, 22, 18, 11, 3, 25, 7, 15, 6, 26, 19, 12, 1, 40, 51, 30, 36, 46, 54, 29, 39, 50, 44, 32, 47, 43, 48, 38, 55, 33, 52, 45, 41, 49, 35, 28, 31
	CB:		DB	1, 1, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 1
	IP:		DB	57, 49, 41, 33, 25, 17, 9, 1, 59, 51, 43, 35, 27, 19, 11, 3, 61, 53, 45, 37, 29, 21, 13, 5, 63, 55, 47, 39, 31, 23, 15, 7, 56, 48, 40, 32, 24, 16, 8, 0, 58, 50, 42, 34, 26, 18, 10, 2, 60, 52, 44, 36, 28, 20, 12, 4, 62, 54, 46, 38, 30, 22, 14, 6
	EST:	DB	31, 0, 1, 2, 3, 4, 3, 4, 5, 6, 7, 8, 7, 8, 9, 10, 11, 12, 11, 12, 13, 14, 15, 16, 15, 16, 17, 18, 19, 20, 19, 20, 21, 22, 23, 24, 23, 24, 25, 26, 27, 28, 27, 28, 29, 30, 31, 0
	P:		DB	15, 6, 19, 20, 28, 11, 27, 16, 0, 14, 22, 25, 4, 17, 30, 9, 1, 7, 23, 13, 31, 26, 2, 8, 18, 12, 29, 5, 21, 10, 3, 24
	PINV:	DB	39, 7, 47, 15, 55, 23, 63, 31, 38, 6, 46, 14, 54, 22, 62, 30, 37, 5, 45, 13, 53, 21, 61, 29, 36, 4, 44, 12, 52, 20, 60, 28, 35, 3, 43, 11, 51, 19, 59, 27, 34, 2, 42, 10, 50, 18, 58, 26, 33, 1, 41, 9, 49, 17, 57, 25, 32, 0, 40, 8, 48, 16, 56, 24
	
	;; S-Boxes
	SB:		DB	14, 4, 13, 1, 2, 15, 11, 8, 3, 10, 6, 12, 5, 9, 0, 7, 0, 15, 7, 4, 14, 2, 13, 1, 10, 6, 12, 11, 9, 5, 3, 8, 4, 1, 14, 8, 13, 6, 2, 11, 15, 12, 9, 7, 3, 10, 5, 0, 15, 12, 8, 2, 4, 9, 1, 7, 5, 11, 3, 14, 10, 0, 6, 13, 15, 1, 8, 14, 6, 11, 3, 4, 9, 7, 2, 13, 12, 0, 5, 10, 3, 13, 4, 7, 15, 2, 8, 14, 12, 0, 1, 10, 6, 9, 11, 5, 0, 14, 7, 11, 10, 4, 13, 1, 5, 8, 12, 6, 9, 3, 2, 15, 13, 8, 10, 1, 3, 15, 4, 2, 11, 6, 7, 12, 0, 5, 14, 9, 10, 0, 9, 14, 6, 3, 15, 5, 1, 13, 12, 7, 11, 4, 2, 8, 13, 7, 0, 9, 3, 4, 6, 10, 2, 8, 5, 14, 12, 11, 15, 1, 13, 6, 4, 9, 8, 15, 3, 0, 11, 1, 2, 12, 5, 10, 14, 7, 1, 10, 13, 0, 6, 9, 8, 7, 4, 15, 14, 3, 11, 5, 2, 12, 7, 13, 14, 3, 0, 6, 9, 10, 1, 2, 8, 5, 11, 12, 4, 15, 13, 8, 11, 5, 6, 15, 0, 3, 4, 7, 2, 12, 1, 10, 14, 9, 10, 6, 9, 0, 12, 11, 7, 13, 15, 1, 3, 14, 5, 2, 8, 4, 3, 15, 0, 6, 10, 1, 13, 8, 9, 4, 5, 11, 12, 7, 2, 14, 2, 12, 4, 1, 7, 10, 11, 6, 8, 5, 3, 15, 13, 0, 14, 9, 14, 11, 2, 12, 4, 7, 13, 1, 5, 0, 15, 10, 3, 9, 8, 6, 4, 2, 1, 11, 10, 13, 7, 8, 15, 9, 12, 5, 6, 3, 0, 14, 11, 8, 12, 7, 1, 14, 2, 13, 6, 15, 0, 9, 10, 4, 5, 3, 12, 1, 10, 15, 9, 2, 6, 8, 0, 13, 3, 4, 14, 7, 5, 11, 10, 15, 4, 2, 7, 12, 9, 5, 6, 1, 13, 14, 0, 11, 3, 8, 9, 14, 15, 5, 2, 8, 12, 3, 7, 0, 4, 10, 1, 13, 11, 6, 4, 3, 2, 12, 9, 5, 15, 10, 11, 14, 1, 7, 6, 0, 8, 13, 4, 11, 2, 14, 15, 0, 8, 13, 3, 12, 9, 7, 5, 10, 6, 1, 13, 0, 11, 7, 4, 9, 1, 10, 14, 3, 5, 12, 2, 15, 8, 6, 1, 4, 11, 13, 12, 3, 7, 14, 10, 15, 6, 8, 0, 5, 9, 2, 6, 11, 13, 8, 1, 4, 10, 7, 9, 5, 0, 15, 14, 2, 3, 12, 13, 2, 8, 4, 6, 15, 11, 1, 10, 9, 3, 14, 5, 0, 12, 7, 1, 15, 13, 8, 10, 3, 7, 4, 12, 5, 6, 11, 0, 14, 9, 2, 7, 11, 4, 1, 9, 12, 14, 2, 0, 6, 10, 13, 15, 3, 5, 8, 2, 1, 14, 7, 4, 10, 8, 13, 15, 12, 9, 0, 3, 5, 6, 11

	
	Section .text

	extern	printf
	global	main
	
	;; MAIN PROGRAM
main:
	push	ebp
	mov		ebp, esp
	
	sub		esp, 2056			; Setup stack frame
	
	xor		eax, eax			; Zero the register
	xor		ebx, ebx			; Zero the ebx register
	
	lea		esi, [ebp - 56]		; Load the start of the keyPlus loop
	mov		edx, [ebp + 8]		; Retrieve the key
	
DES_generateKeyPlus:
	
	mov		al, BYTE [ PC1 + ebx ]	; Get the PC1 value
	mov		al, BYTE [ key + eax ]	; Get the key value based off of the PC1 value
	
	mov		[esi + ebx], eax		; Move the value into the correct keyplus location
	
	inc		bl
	cmp		bl, 56
	JNE		DES_generateKeyPlus
	
	;;
	;; end generateKeyPlus
	;;
	
	lea		edi, [ebp - 56]		;; C0
	lea		esi, [ebp - 28]		;; D0
	
	;; First, we will left shift each block as many times as required by the loop count
	xor		ebx, ebx
	xor		eax, eax
	
DES_singleShift:

	push	esi
	call	rotateArrayLeft
	add		esp, 4
	
	push	edi
	call	rotateArrayLeft
	add		esp, 4
	
	inc		al							;; Increase the shift count
	cmp		al, BYTE [CB + ebx]
	jne		DES_singleShift
	
	push	esi
	push	eax
	push	ebx
	
	xor		eax, eax
	imul	eax, ebx, 48
	lea		esi, [ebp - 824 + eax]		;; Calculate the current key value
	xor		ebx, ebx					;; Temporarily reset the counter
	
DES_generateSubkeys:
	xor		eax, eax
	mov		al, BYTE [PC2 + ebx]		;; Retrieve the correct PC2 value
	mov		al, BYTE [edi + eax]		;; Retrieve the correct PC2 bit from the CnDn key
	mov		[esi + ebx], al				;; Now store the new bit into the Kn key
	
	inc		bl
	cmp		bl, 48
	jne		DES_generateSubkeys				;; Do this another 47 times
	
	;; Done with this iteration, restore the values
	pop		ebx
	pop		eax
	pop		esi
	
	xor		eax, eax
	inc		bl							;; Increment the total loop count
	cmp		bl, 16
	jne		DES_singleShift
	
	;; Reset our base registers
	xor		ebx, ebx
	xor		eax, eax
	
	lea		esi, [ebp - 888]			;; Retrieve the message location
	
DES_initialPermuation:
	
	xor		eax, eax
	mov		al, BYTE [IP + ebx]			;; Retrieve the permutation bit
	mov		al, BYTE [msg + eax]		;; Retrieve the message bit
	mov		[esi + ebx], eax			;; Store the new byte in the new permutation key
	
	;; Increment the loop
	inc		bl
	cmp		bl, 64
	jne		DES_initialPermuation
	
	;; Devide the permutation into two parts
	lea		edi, [ebp - 888]	;; L0
	lea		esi, [ebp - 856]	;; R0
	lea		eax, [ebp - 1400]
	
	xor		edx, edx
	xor		ecx, ecx
DES_cacheFirstLN:
	mov		dl, BYTE [edi + ecx]
	mov		[eax + ecx], edx
	
	inc		cl
	cmp		cl, 32
	jne		DES_cacheFirstLN
	
	xor		ecx, ecx
	xor		edx, edx
	xor		ebx, ebx			;; Outer loop counter	

	push	esi
	push	ebx
	
DES_mainLoop:
	pop		ebx						;; Restore the main loop count
	pop		esi						;; Retrieve the previous right side
	
	imul	eax, ebx, 32			;; Calculate offset of Ln-1
	lea		edi, [ebp - 1400 + eax] ;; Retrieve the previous left side

	inc		ebx						;; Calulate new offset
	imul	eax, ebx, 32			;; Calculate the index for the loop
	dec		ebx

	xor		ecx, ecx
	xor		edx, edx
	lea		eax, [ebp - 1400 + eax]
DES_cacheLN:
	mov		dl, BYTE [esi + ecx]
	mov		[eax + ecx], edx
	
	inc		cl
	cmp		cl, 32
	jne		DES_cacheLN
	
	imul	eax, ebx, 48
	inc		ebx
	push	ebx					;; Cache the main loop count
	
	lea		edi, [ebp - 1960]	;; Address of the temporary storage location
	push	edi					;; Push the temporary storage location
	push	esi					;; Push the array we wish to expand
	call	expand				;; Begin expanding the array
	add 	esp, 8				;; Restore the esp
	
	lea		edx, [ebp - 824 + eax]		;; Calculate the current key values
	lea		eax, [ebp - 2008]			;; Another temporary storage slot
	
	xor		ebx, ebx
DES_xKey:
	xor		ecx, ecx
	mov		ch, BYTE [edx + ebx]		;; Get the corresponding key bit value
	mov		cl, BYTE [edi + ebx]		;; Get the corresponding expanded bit value
	xor		cl, ch						;; XOR the key and expanded bit
	mov		ch, 0						;; Ignore the left side
	mov		[eax + ebx], ecx			;; Move the XOR'd bit to the new spot
	
	inc		bl							;; Do this 48 times
	cmp		bl, 48
	JNE		DES_xKey
	
	mov		edi, eax					;; Discard the old storage spot
	
	;; Now we calculate the 32 bit key from the S-Boxes
	xor		eax, eax
	xor		ebx, ebx
	xor		ecx, ecx
DES_sBoxes:
	imul	ebx, ecx, 6
	xor		eax, eax
	
	mov		al, BYTE [edi + ebx + 0]		;; Stash the column
	mov		ah, BYTE [edi + ebx + 5]		;; The second part
	shl		al, 1
	or		al, ah
	mov		ah, 0							;; Clear the left part, so now eax contains the row
	
	push	ecx								;; Cache the count
	xor		ecx, ecx						;; Clear the register
	mov		cl, BYTE [edi + ebx + 1]		;; Now we will calculate the corresponding column value
	shl		cl, 3
	mov		ch, BYTE [edi + ebx + 2]
	shl		ch, 2
	or		cl, ch
	mov		ch, BYTE [edi + ebx + 3]
	shl		ch, 1
	or		cl, ch
	mov		ch, BYTE [edi + ebx + 4]
	or		cl, ch
	mov		ch, 0
	mov		esi, ecx						;; Place column in the esi register, ESI:COLUMN, EAX:ROW
	pop		ecx								;; Restore the count
	
	imul	eax, 16
	add		esi, eax						;; Find the correct sbox offset
	imul	eax, ecx, 64
	add		esi, eax						;; The final sbox offset
	xor		eax, eax
	mov		al, BYTE [SB + esi]				;; Now, we retrieve the correct number

	xor		edx, edx
	lea		eax, [FOURB + eax*4]			;; Convert the 4-bit number into binary

	imul	ebx, ecx, 4						;; Recalculate the offset value
	
	mov		dl, BYTE [eax]					;; Now store the new binary in the edx and continue to do so 3 times
	mov		[ebp - 1960 + ebx], edx
	
	mov		dl, BYTE [eax + 1]
	mov		[ebp - 1960 + ebx + 1], edx
	
	mov		dl, BYTE [eax + 2]
	mov		[ebp - 1960 + ebx + 2], edx
	
	mov		dl, BYTE [eax + 3]
	mov		[ebp - 1960 + ebx + 3], edx
	
	inc		cl
	cmp		cl, 8
	jne		DES_sBoxes
	
	
	;; Now we calculate the permutation for the current R value
	xor		eax, eax
	xor		ebx, ebx
	xor		ecx, ecx
	lea		edx, [ebp - 1960]				;; Cache the SBOX'd location
DES_P32:
	mov		al, BYTE [P + ecx]				;; Retrieve the correct P value
	mov		al, BYTE [edx + eax]			;; Retrieve the desired SBOX'd offset
	mov		[edi + ecx], eax
	
	inc		cl
	cmp		cl, 32
	jne		DES_P32

	pop		ebx
	push	ebx
	sub		ebx, 1
	imul	eax, ebx, 32						;; Caclulate the offset
	lea		edx, [ebp - 1400 + eax]
	
	lea		esi, [ebp - 2056]				;; Second temporary storage spot, we will xor the Ln-1 with the f()'d Rn
											;; which is stored in edi
	xor		eax, eax
	xor		ecx, ecx
DES_XPLUS:
	xor		eax, eax
	mov		ah, BYTE [edx + ecx]		;; Get the corresponding left value
	mov		al, BYTE [edi + ecx]		;; Get the corresponding right vlaue
	xor		al, ah						;; XOR the key and expanded bit
	mov		ah, 0						;; Ignore the left side
	mov		[esi + ecx], eax			;; Move the XOR'd bit to the new spot
	
	inc		cl
	cmp		cl, 32
	jne		DES_XPLUS
	
	pop		ebx							;; Retrieve the loop counter again
	
	push	esi
	push	ebx
	cmp		ebx, 16
	jne		DES_mainLoop
	
	pop		eax
	pop		eax
	
	
	;; Done with the main loop, put the key together
	xor		eax, eax
	xor		ecx, ecx
	lea		edi, [ebp - 888]
DES_combineKey:
	mov		al, BYTE [edi + ecx]			;; Retrieve the bit from the edi (L16) register
	mov		[esi + 32 + ecx], eax			;; Store in esi (R16) register
	
	inc		cl
	cmp		cl, 32
	jne		DES_combineKey
	
	push	esi								;; Print the encrypted key
	push	64
	call	printChars
	add		esp, 8

	mov		esp, ebp
	pop		ebp
	ret							;; END OF MAIN
	
	
;; UTILITY FUNCTIONS ;;
	
;; Prints out an array of characters
;; 
;; @param size - size of the array
;; @param start - The starting index of the array
printChars:
	push	ebp
	mov		ebp, esp
	push	esi					; Save the esi register
	push	edi					; Save the edi register
	push	ebx					; Save the ebx register
	push	eax
	push	ecx
	
	mov		edi, [ebp + 8]		; Store the size in edi
	mov		esi, [ebp + 12]		; Store the array in esi (the start)
	
	xor		eax, eax			; Zero out the eax register
	xor		ebx, ebx			; Zero out the ebx register
	
printChars_loop:
	mov		al, BYTE[ esi + ebx ]
	
	push	eax
	push	num
	call	printf
	add		esp, 8
	
	inc		ebx
	cmp		ebx, edi
	JNE		printChars_loop		; we aren't done looping, jumb back to loopPrint
	
	call	printNewline		; Print a new line before we are done
	
	pop		ecx					; Restore the ecx register
	pop		eax					; Restore the eax register
	pop		ebx					; Restore the ebx register
	pop		edi					; Restore the edi register
	pop		esi					; Restore the esi register
	mov		esp, ebp			; Delete the stack frame
	pop		ebp
	ret
	

;; Function
;;
;; Expands the bits
expand:
	push	ebp
	mov		ebp, esp
	push	eax
	push	ecx
	push	ebx
	push	esi
	
	xor		eax, eax
	xor		ecx, ecx
	
	mov		ebx, [ebp + 8]			;; The address of the 32-bit key we wish to expand and temporarily store
	mov		esi, [ebp + 12]			;; The address of the location to store the expanded key
	
expand_loop:
	mov		al, BYTE [EST + ecx]	;; Retrieve the correct expansion bit
	mov		al, BYTE [ebx + eax]	;; Retreive the desired bit from the Rn
	mov		[esi + ecx], eax		;; Store the desired bit in the temporary storage location

	inc		cl						;; Increment the counter and then compare
	cmp		cl, 48
	jne		expand_loop

	pop		esi
	pop		ebx
	pop		ecx
	pop		eax
	mov		esp, ebp
	pop		ebp
	ret						;; End of expand
	
	
;; Function
;;
;; Rotates an array to the left once, and rotates the previous starting bit to the
;; front of the array.
;;
;; @param *array - The value of the array. Will be changed. Expects input size to
;;					be 28-bits long
rotateArrayLeft:
	push	ebp
	mov		ebp, esp
	push	esi				;; Store the value of esi
	push	ebx				;; Store the value of ebx
	push	edi				;; Store the value of edi
	push	eax				;; Store the eax, no return value for this function
	
	xor		ebx, ebx
	xor		eax, eax
	
	mov		esi, [ebp + 8]	;; @param *array
	
	mov		ah, BYTE [esi]	;; Cache the first bit
	
shiftKey:
	mov		al, BYTE [esi + ebx + 1]
	mov		[esi + ebx], al
	
	;; Increment the loop count and stop loop if loop reaches 28
	inc		bl
	cmp		bl, 27
	JNE		shiftKey
	
	mov		[esi + 27], ah	;; Move rotated bit to the right
	
	;; Restore the state of the stack frame
	pop		eax
	pop		edi
	pop		ebx
	pop		esi
	mov		esp, ebp
	pop		ebp
	ret						;; End of rotateArrayLeft
	

;; This function simply prints out a new line character
printNewline:
	push	ebp
	mov		ebp, esp
	push	eax
	
	push	nl
	call	printf
	add		esp, 4
	
	pop		eax
	mov		esp, ebp
	pop		ebp
	ret