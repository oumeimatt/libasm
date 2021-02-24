/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oel-yous <oel-yous@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/23 12:41:00 by oel-yous          #+#    #+#             */
/*   Updated: 2021/02/24 16:15:47 by oel-yous         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H
# include <string.h>
# include <unistd.h>
# include <stdio.h>
# include <fcntl.h>
# include <stdlib.h>
# include <errno.h>

# define RESET   "\033[0m"
# define RED     "\033[31m"
# define GREEN   "\033[32m"
# define BUFFER_SIZE 512

size_t     ft_strlen(char *str);
char    *ft_strcpy(char * dst, const char * src);
size_t  ft_write(int fildes, const void *buf, size_t nbyte);
size_t  ft_read(int fildes, void *buf, size_t nbyte);
int     ft_strcmp(char *str1, char *str2);

#endif