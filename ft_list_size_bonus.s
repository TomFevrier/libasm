# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_list_size_bonus.s                               :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tfevrier <tfevrier@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/15 20:29:36 by tfevrier          #+#    #+#              #
#    Updated: 2020/02/16 22:55:52 by tfevrier         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

				global	ft_list_size

				section	.text
ft_list_size:	xor		rax, rax			; initialize counter
loop:			cmp		rdi, 0
				je		return				; if list element is null, return
				mov		rdi, [rdi + 8]		; list = list->next (list + 8 bytes)
				inc		rax					; counter++
				jmp		loop
return:			ret
