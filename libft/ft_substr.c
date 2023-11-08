/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sslaoui <sslaoui@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/04 16:52:31 by sslaoui           #+#    #+#             */
/*   Updated: 2023/11/07 15:51:19 by sslaoui          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char	*ft_substr(char const *s, unsigned int start, size_t len)
{
	char			*str;
	unsigned int	i;
	size_t			str_len;

	i = 0;
	str_len = strlen(s);
	str = (char *)malloc(len + 1);
	if (start >= str_len)
		return (NULL);
	if (i - start < len)
		len = i - start;
	while (i < len)
	{
		str[i] = s[i + start];
		i++;
	}
	str[i] = '\0';
	s = (char const *)str;
	return ((void *)s);
}

