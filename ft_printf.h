/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kjuszko <kjuszko@student.42vienna.com>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/25 15:38:30 by kjuszko           #+#    #+#             */
/*   Updated: 2025/06/21 17:31:51 by kjuszko          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "./libft/libft.h"
# include <stdarg.h>
# include <stdint.h>

int		ft_printf(const char *format, ...);
int		pchar(va_list args);
int		pstr(va_list args);
int		puint(va_list args);
int		pint(va_list args);
int		pptr(va_list args);
int		phex(va_list args);
int		phexb(va_list args);

#endif
