# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tfevrier <tfevrier@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/15 20:29:36 by tfevrier          #+#    #+#              #
#    Updated: 2020/02/16 22:36:06 by tfevrier         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global	ft_write

			section	.text
ft_write:	cmp		rsi, 0
			je		error			; if buffer is null, error
			mov		rax, 1			; 1 = syscall code for write
			syscall
			cmp		rax, 0
			jl		error			; if syscall returns a neg number, error
			ret

error:		mov		rax, -1			; returns -1 if error
			ret

