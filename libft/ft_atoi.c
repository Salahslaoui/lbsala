/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sslaoui <sslaoui@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/03 22:56:27 by sslaoui           #+#    #+#             */
/*   Updated: 2023/11/04 00:42:15 by sslaoui          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_atoi(const char *str)
{
	unsigned int	i;
	unsigned int	n;
	int				sign;

	i = 0;
	n = 0;
	sign = 1;
	if (str[i] == '-' || str[i] == '+')
	{
		sign = -(sign);
		i++;
	}
	while (str[i] != '\0')
	{
		while ((str[i] >= 9 && str[i] <= 13) || str[i] == 32)
			i++;
		if (str[i] >= '0' && str[i] <= '9')
			n = n * 10 + (str[i++] - 48);
		else
			break ;
	}
	return (n * sign);
}
