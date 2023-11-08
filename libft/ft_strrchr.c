/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sslaoui <sslaoui@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/03 13:10:13 by sslaoui           #+#    #+#             */
/*   Updated: 2023/11/04 00:43:27 by sslaoui          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strrchr(const char *s, int c)
{
	char	a;
	int		i;
	char	*str;

	i = 0;
	a = (char )c;
	while (s[i] != '\0')
		i++;
	i--;
	while (i >= 0 && s[i] != a)
		i--;
	if (i < 0)
		return (NULL);
	str = (char *)s;
	return (&str[i]);
}
