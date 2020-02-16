# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tfevrier <tfevrier@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/15 20:29:36 by tfevrier          #+#    #+#              #
#    Updated: 2020/02/15 23:01:37 by tfevrier         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global	ft_read

			section .text
ft_read:	cmp		rsi, 0
			je		error
			mov		rax, 0
			syscall
			cmp		rax, 0
			jl		error
			ret

error:		mov		rax, -1
			ret

