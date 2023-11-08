/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sslaoui <sslaoui@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/03 13:09:42 by sslaoui           #+#    #+#             */
/*   Updated: 2023/11/04 00:42:56 by sslaoui          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strchr(const char *s, int c)
{
	char	a;
	int		i;
	char	*str;

	i = 0;
	a = (char )c;
	while (s[i] != '\0' && s[i] != a)
		i++;
	str = (char *)s;
	return (&str[i]);
}
