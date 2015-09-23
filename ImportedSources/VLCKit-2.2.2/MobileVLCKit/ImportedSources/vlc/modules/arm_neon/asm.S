@*****************************************************************************
@ asm.S : defines and macros
@*****************************************************************************
@ Copyright (C) 2012 David Geldreich <david.geldreich at free.fr>
@
@ This program is free software; you can redistribute it and/or modify
@ it under the terms of the GNU General Public License as published by
@ the Free Software Foundation; either version 2 of the License, or
@ (at your option) any later version.
@
@ This program is distributed in the hope that it will be useful,
@ but WITHOUT ANY WARRANTY; without even the implied warranty of
@ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
@ GNU General Public License for more details.
@
@ You should have received a copy of the GNU General Public License
@ along with this program; if not, write to the Free Software Foundation,
@ Inc., 51 Franklin Street, Fifth Floor, Boston MA 02110-1301, USA.
@****************************************************************************/

#ifdef __APPLE__
#   define EXTERN_ASM _
#else
#   define EXTERN_ASM
#endif

#ifdef __ELF__
#   define ELF
#else
#   define ELF @
#endif

.macro  function name, export=0
    .macro endfunc
ELF     .size   \name, . - \name
        .endfunc
        .purgem endfunc
    .endm
        .text
        .align          2
    .if \export
        .global EXTERN_ASM\name
EXTERN_ASM\name:
    .endif
ELF     .type   \name, %function
        .func   \name
\name:
.endm

