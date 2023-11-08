/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sslaoui <sslaoui@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/31 19:08:00 by sslaoui           #+#    #+#             */
/*   Updated: 2023/11/04 00:42:51 by sslaoui          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memset(void *b, int c, size_t len)
{
	char			*ptr;
	unsigned int	i;
	char			s;

	s = (unsigned char) c;
	if (b == NULL)
		return (NULL);
	i = 0;
	ptr = (char *)b;
	while (i < len)
		ptr[i++] = s;
	return (b);
}
