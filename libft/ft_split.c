/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sslaoui <sslaoui@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/06 10:56:22 by sslaoui           #+#    #+#             */
/*   Updated: 2023/11/08 12:44:52 by sslaoui          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "libft.h"

void	*ft_free(char **res, unsigned int k)
{
	unsigned int l = 0;
	if (!res)
	{
		while (l < k)
		{
			free(res[l]);
			l++;
		}
		free(NULL);
	}
	return NULL;
}

int	ft_skip_and_lenght(char const *s, unsigned int *index, char c)
{
	unsigned int i;

	while (s[*index] && s[*index] == c)
		(*index)++;
	i = 0;
	while (s[*index + i] && s[*index + i] != c)
		i++;
	return i;
}
char	**ft_allocate_and_copy(char **res, char const *s, unsigned int j, char c)
{
	unsigned int	i;
	unsigned int	k;
	unsigned int index;
	
	index = 0;
	k = 0;
	while (k < j)
	{
		 i = ft_skip_and_lenght(s, &index, c);
		res[k] = (char *)malloc(i + 1);
		if (!res[k])
			return (ft_free(res, k));
		i = 0;
		while ( s[index + i] && s[index + i] != c)
		{
			res[k][i] = s[index + i];
			i++;
		}
		res[k][i] = '\0';
		k++;
		index += i;
	}
	res[k] = NULL;
	return (res);
}

char **ft_split(char const *s, char c)
{
	char const		*str;
	unsigned int	j;
	unsigned int index;
	char **res;

	str = s;
	j = 0;
	if (!str)
		return (NULL);
	while (*str)
	{
		while (*str == c)
			str++;
		if (*str)
			j++;
	 	str = (char const *)ft_strchr(str, c);         
	}
	index = 0;
	res = (char **)malloc((j + 1) * sizeof(char*));
	if (!res)
		return (NULL);
	
	res = ft_allocate_and_copy(res, s, j, c);
	return (res);
}

int main()
{
    char input[] = "	khalid	zerrI is a fullstack developer   LBSA LA SMYTHA HADI ASCADSDAdsa asdkasf dksmfadop moadsfk jodsfjds kfodskfdos fkdoskfdops fjdosfkdops fkdosfkdops[f fkdsfkds] ";
    char **result = ft_split(input, ' ');

    for (int i = 0; result[i]; i++)
        printf("%s\n", result[i]);
}	
