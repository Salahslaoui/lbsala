/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sslaoui <sslaoui@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/03 14:09:27 by sslaoui           #+#    #+#             */
/*   Updated: 2023/11/04 00:42:27 by sslaoui          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memchr(const void *s, int c, size_t n)
{
	unsigned char	*ptr;
	unsigned char	a;
	unsigned int	i;

	a = (unsigned char)c;
	i = 0;
	ptr = (unsigned char *)s;
	while (i < n && ptr[i] != '\0' && ptr[i] != a)
		i++;
	return (&ptr[i]);
}
