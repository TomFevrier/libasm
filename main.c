/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tfevrier <tfevrier@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/15 22:36:08 by tfevrier          #+#    #+#             */
/*   Updated: 2020/02/16 22:54:03 by tfevrier         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test.h"

int		main(void)
{
	// char	buf[256];
	t_list	*list;

	printf("%ld\n",    write(1, "Test\n", -2));
	printf("%ld\n", ft_write(1, "Test\n", -2));
	/*
	printf("%ld\n", ft_read(2, buf, 10));
	printf("%s\n", buf);
	printf("%ld\n",    read(2, buf, 10));
	printf("%s\n", buf);
	*/
	printf("%ld\n",    strlen("Test\0stuff"));
	printf("%ld\n", ft_strlen("Test\0stuff"));
	printf("%d\n",    strcmp("Test42blabla", "Test42blabla"));
	printf("%d\n", ft_strcmp("Test42blabla", "Test42blabla"));
	printf("%d\n",    strcmp("Test42blabla", "Test42Tom"));
	printf("%d\n", ft_strcmp("Test42blabla", "Test42Tom"));

	list = NULL;
	printf("%d\n", ft_list_size(list));
	list = malloc(sizeof(t_list));
	printf("%d\n", ft_list_size(list));
	list->next = malloc(sizeof(t_list));
	printf("%d\n", ft_list_size(list));
	list->next->next = malloc(sizeof(t_list));

	printf("%d\n", ft_list_size(list));
	return (0);
}
