#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "libft.h"

static int	count_words(char const *s, char c)
{
	int count = 0;
	int in_word = 0;

	while (*s) {
		if (*s == c) {
			if (in_word)
				in_word = 0;
		} else {
			if (!in_word) {
				count++;
				in_word = 1;
			}
		}
		s++;
	}
	return count;
}

char		**ft_split(char const *s, char c)
{
	int		words = count_words(s, c);
	char	**res;
	int		i;
	int		word_len;

	if (!s || !words || !(res = (char **)malloc(sizeof(char *) * (words + 1))))
		return (NULL);
	i = 0;
	while (*s) {
		while (*s == c)
			s++;
		word_len = 0;
		while (s[word_len] && s[word_len] != c)
			word_len++;
		if (word_len) {
			res[i] = (char *)malloc(word_len + 1);
			if (!res[i])
				return (NULL);
			strlcpy(res[i], s, word_len + 1);
			i++;
		}
		s += word_len;
	}
	res[i] = NULL;
	return (res);
}
int main()
{
    char input[] = "Ceci \test un\t e\txe\tmple de chaine";
    char c = '\t';
    
    char **result = ft_split(input, c);

    if (!result) {
        printf("Erreur d'allocation de mémoire.\n");
        return 1;
    }

    int i = 0;
    while (result[i]) {
        printf("Mot %d : %s\n", i, result[i]);
        free(result[i]);
        i++;
    }
    
    free(result);

    return 0;
}