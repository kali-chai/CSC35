.intel_syntax noprefix

.section .data


.section .text

	Begin:
		0:
			call	GameStart
			call	GameLoop
			call	GameEnd
			call	ExitProgram

	GameStart:
		0:
			lea		rsi,
					GameInfo
			call	PrintString
			mov		DayCount,
					0

	GameLoop:
		0:
			call	DailyMorning
			bt		Booleans,
					0
			jc		2f
		1:
			call	RandomAct
			call	PlayerAction
			call	DailyNight
			jmp		0b
		2:
			ret

	DailyMorning:
		0:
			mov		rsi,
					11
			call	ApplyHealthBuff
			call	GetRandom
			sub		rdi,
					rsi
			mov		qword ptr [Health],
					rdi
			mov		rsi,
					21
			call	ApplyFoodBuff
			call	GetRandom
			sub		rdi,
					rsi
			mov		qword ptr [Food],
					rdi
			mov		rsi,
					51
			call	ApplyDistBuff
			sub		rdi,
					rsi
			mov		qword ptr [Dist],
					rdi
			call	PrintDaily
			ret

	RandomAct:
		0:
			mov		rsi,
					6
			inc		rsi
			cmp		rsi,
					1
			jz		1f
			cmp		rsi,
					2
			jz		2f
			cmp		rsi,
					3
			jz		3f
			cmp		rsi,
					4
			jz		4f
			cmp		rsi,
					5
			jz		5f
		1:
			lea		rsi,
					HealthBuff
			call	PrintString
			bts		Booleans,
					2
			ret
		2:
			lea		rsi,
					FoodBuff
			call	PrintString
			bts		Booleans,
					3
			ret
		3:
			lea		rsi,
					DistBuff
			call	PrintString
			bts		Booleans,
					4
			ret
		4:
			lea		rsi,
					Looted
			call	PrintString
			bts		Booleans,
					5
			ret
		5:
			lea		rsi,
					Breakdown
			call	PrintString
			bts		Booleans,
					6
			ret
		6:
			lea		rsi,
					Raided
			call	PrintString
			bts		Booleans,
					7
			ret

	PlayerAction:
		0:
			lea		rsi,
					ActionOptions
			call	PrintString
			call	ReadInteger
			cmp		rsi,
			1
			jz 		1f
			cmp		rsi,
			2
			jz 		2f
			cmp		rsi,
			3
			jz 		3f
			cmp		rsi,
			4
			jz		5f
			jmp		0b

	GameEnd:
		0:
			bt		Booleans,
					0
			jc		1f
			jnc		2f
		1:
			call	WinScreen
		2:
			call	LoseScreen
		3:
			call	SaveName
			ret

	BadExit:
		0:
			push 	rax
			push 	rdi
		1:
			mov 	rax		60
			mov		rdi,	1
			sycall
		2:
			pop 	rax
			pop 	rdi
			call 	ExitFail
