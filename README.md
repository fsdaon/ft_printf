# ft_printf

My custom implementation of the standard `printf` function in C, created for the 42 Vienna curriculum.

## What is it?

`ft_printf` reproduces the core functionality of the original `printf`:
- Handles various format specifiers (like `%d`, `%s`, `%x`, etc.)
- Supports flags, width, precision
- Outputs formatted strings to stdout

## Highlights

- Supports multiple format types:
  - Characters
  - Strings
  - Integers
  - Hexadecimal
  - Unsigned integers
  - Pointers
- Handles edge cases like NULL strings or zero precision
- Improves understanding of variadic functions

## Why I built this

This was one of my favorite projects because it combined parsing logic, memory management, and handling variable arguments. It gave me solid practice in writing reusable and organized C code.
