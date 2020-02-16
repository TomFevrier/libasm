/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tfevrier <tfevrier@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/16 22:45:20 by tfevrier          #+#    #+#             */
/*   Updated: 2020/02/16 22:52:32 by tfevrier         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef TEST_H
# define TEST_H

# include <unistd.h>
# include <stdio.h>
# include <string.h>
# include <stdlib.h>

typedef struct		s_list
{
	void			*data;
	struct s_list	*next;
}					t_list;

ssize_t				ft_write(int fd, const void *buf, size_t count);
ssize_t				ft_read(int fd, void *buf, size_t count);
ssize_t				ft_strlen(const char *str);
int					ft_strcmp(const char *s1, const char *s2);
int					ft_list_size(t_list *list);

#endif
