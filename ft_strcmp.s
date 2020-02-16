# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tfevrier <tfevrier@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/15 20:29:36 by tfevrier          #+#    #+#              #
#    Updated: 2020/02/16 22:32:00 by tfevrier         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global	ft_strcmp

			section	.text
ft_strcmp:
loop:		cmp		byte [rdi], 0
			je		equal				; if str1 is finished, then strings are equal
			mov		al, byte [rdi]
			sub		al, byte [rsi]
			cmp		al, 0				; comparing *str1 and *str2
			jl		less
			jg		greater
			inc		rdi					; str1++
			inc		rsi					; str2++
			jmp		loop
equal:		mov		rax, 0				; str1 == str2
			ret
less:		mov		rax, -1				; str1 < str2
			ret
greater:	mov		rax, 1				; str1 > str2
			ret
