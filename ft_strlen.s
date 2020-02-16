# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tfevrier <tfevrier@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/15 20:29:36 by tfevrier          #+#    #+#              #
#    Updated: 2020/02/16 22:33:25 by tfevrier         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global	ft_strlen

			section	.text
ft_strlen:	xor		rax, rax			; initialize counter
			jmp		loop
loop:		cmp		byte [rdi], 0
			je		return				; if str is finished: return
			inc		rdi					; str++
			inc		rax					; counter++
			jmp		loop
return:		ret
