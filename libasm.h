/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oel-yous <oel-yous@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/23 12:41:00 by oel-yous          #+#    #+#             */
/*   Updated: 2021/02/23 12:41:38 by oel-yous         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
#define LIBASM_H

#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>

size_t     ft_strlen(char *str);
char    *ft_strcpy(char * dst, const char * src);
size_t  ft_write(int fildes, const void *buf, size_t nbyte);
size_t  ft_read(int fildes, void *buf, size_t nbyte);

#endif