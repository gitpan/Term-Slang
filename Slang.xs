
/* $Id: Slang.xs,v 1.5 1999/12/22 23:55:34 daniel Exp $ */

#ifdef __cplusplus
"C" {
#endif
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#ifdef __cplusplus
}
#endif

#include <slang.h>

typedef struct _Scroll_Line_Type {
	SV *sv_next;
	SV *sv_prev;
	char *data;
} Scroll_Line_Type;

/*
typedef struct _Scroll_Line_Type {
	struct _Scroll_Line_Type *next;
	struct _Scroll_Line_Type *prev;
	char *data;
} Scroll_Line_Type;
*/

/* Constant loading */
static int
not_here(s)
	char *s;
	{
		croak("%s not implemented on this architecture", s);
		return -1;
	}

static double
constant(name, arg)
	char *name;
	int arg;
{
    errno = 0;
    switch (*name) {
    case 'A':
	break;
    case 'B':
	break;
    case 'C':
	break;
    case 'D':
	break;
    case 'E':
	break;
    case 'F':
	break;
    case 'G':
	break;
    case 'H':
	break;
    case 'I':
	break;
    case 'J':
	break;
    case 'K':
	break;
    case 'L':
	break;
    case 'M':
	break;
    case 'N':
	break;
    case 'O':
	break;
    case 'P':
	break;
    case 'Q':
	break;
    case 'R':
	break;
    case 'S':
	if (strEQ(name, "SLANG_GETKEY_ERROR"))
#ifdef SLANG_GETKEY_ERROR
	    return SLANG_GETKEY_ERROR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLANG_VERSION"))
#ifdef SLANG_VERSION
	    return SLANG_VERSION;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_CKBRD_CHAR"))
#ifdef SLSMG_CKBRD_CHAR
	    return SLSMG_CKBRD_CHAR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_COLOR_BLACK"))
#ifdef SLSMG_COLOR_BLACK
	    return SLSMG_COLOR_BLACK;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_COLOR_BLUE"))
#ifdef SLSMG_COLOR_BLUE
	    return SLSMG_COLOR_BLUE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_COLOR_BRIGHT_BLUE"))
#ifdef SLSMG_COLOR_BRIGHT_BLUE
	    return SLSMG_COLOR_BRIGHT_BLUE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_COLOR_BRIGHT_BROWN"))
#ifdef SLSMG_COLOR_BRIGHT_BROWN
	    return SLSMG_COLOR_BRIGHT_BROWN;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_COLOR_BRIGHT_CYAN"))
#ifdef SLSMG_COLOR_BRIGHT_CYAN
	    return SLSMG_COLOR_BRIGHT_CYAN;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_COLOR_BRIGHT_GREEN"))
#ifdef SLSMG_COLOR_BRIGHT_GREEN
	    return SLSMG_COLOR_BRIGHT_GREEN;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_COLOR_BRIGHT_MAGENTA"))
#ifdef SLSMG_COLOR_BRIGHT_MAGENTA
	    return SLSMG_COLOR_BRIGHT_MAGENTA;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_COLOR_BRIGHT_RED"))
#ifdef SLSMG_COLOR_BRIGHT_RED
	    return SLSMG_COLOR_BRIGHT_RED;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_COLOR_BRIGHT_WHITE"))
#ifdef SLSMG_COLOR_BRIGHT_WHITE
	    return SLSMG_COLOR_BRIGHT_WHITE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_COLOR_BROWN"))
#ifdef SLSMG_COLOR_BROWN
	    return SLSMG_COLOR_BROWN;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_COLOR_CYAN"))
#ifdef SLSMG_COLOR_CYAN
	    return SLSMG_COLOR_CYAN;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_COLOR_GRAY"))
#ifdef SLSMG_COLOR_GRAY
	    return SLSMG_COLOR_GRAY;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_COLOR_GREEN"))
#ifdef SLSMG_COLOR_GREEN
	    return SLSMG_COLOR_GREEN;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_COLOR_LGRAY"))
#ifdef SLSMG_COLOR_LGRAY
	    return SLSMG_COLOR_LGRAY;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_COLOR_MAGENTA"))
#ifdef SLSMG_COLOR_MAGENTA
	    return SLSMG_COLOR_MAGENTA;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_COLOR_RED"))
#ifdef SLSMG_COLOR_RED
	    return SLSMG_COLOR_RED;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_DTEE_CHAR"))
#ifdef SLSMG_DTEE_CHAR
	    return SLSMG_DTEE_CHAR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_HLINE_CHAR"))
#ifdef SLSMG_HLINE_CHAR
	    return SLSMG_HLINE_CHAR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_LLCORN_CHAR"))
#ifdef SLSMG_LLCORN_CHAR
	    return SLSMG_LLCORN_CHAR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_LRCORN_CHAR"))
#ifdef SLSMG_LRCORN_CHAR
	    return SLSMG_LRCORN_CHAR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_LTEE_CHAR"))
#ifdef SLSMG_LTEE_CHAR
	    return SLSMG_LTEE_CHAR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_NEWLINE_IGNORED"))
#ifdef SLSMG_NEWLINE_IGNORED
	    return SLSMG_NEWLINE_IGNORED;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_NEWLINE_MOVES"))
#ifdef SLSMG_NEWLINE_MOVES
	    return SLSMG_NEWLINE_MOVES;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_NEWLINE_PRINTABLE"))
#ifdef SLSMG_NEWLINE_PRINTABLE
	    return SLSMG_NEWLINE_PRINTABLE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_NEWLINE_SCROLLS"))
#ifdef SLSMG_NEWLINE_SCROLLS
	    return SLSMG_NEWLINE_SCROLLS;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_PLUS_CHAR"))
#ifdef SLSMG_PLUS_CHAR
	    return SLSMG_PLUS_CHAR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_RTEE_CHAR"))
#ifdef SLSMG_RTEE_CHAR
	    return SLSMG_RTEE_CHAR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_ULCORN_CHAR"))
#ifdef SLSMG_ULCORN_CHAR
	    return SLSMG_ULCORN_CHAR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_URCORN_CHAR"))
#ifdef SLSMG_URCORN_CHAR
	    return SLSMG_URCORN_CHAR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_UTEE_CHAR"))
#ifdef SLSMG_UTEE_CHAR
	    return SLSMG_UTEE_CHAR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLSMG_VLINE_CHAR"))
#ifdef SLSMG_VLINE_CHAR
	    return SLSMG_VLINE_CHAR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLTT_ALTC_MASK"))
#ifdef SLTT_ALTC_MASK
	    return SLTT_ALTC_MASK;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLTT_BLINK_MASK"))
#ifdef SLTT_BLINK_MASK
	    return SLTT_BLINK_MASK;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLTT_BOLD_MASK"))
#ifdef SLTT_BOLD_MASK
	    return SLTT_BOLD_MASK;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLTT_REV_MASK"))
#ifdef SLTT_REV_MASK
	    return SLTT_REV_MASK;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SLTT_ULINE_MASK"))
#ifdef SLTT_ULINE_MASK
	    return SLTT_ULINE_MASK;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_A1"))
#ifdef SL_KEY_A1
	    return SL_KEY_A1;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_A3"))
#ifdef SL_KEY_A3
	    return SL_KEY_A3;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_B2"))
#ifdef SL_KEY_B2
	    return SL_KEY_B2;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_BACKSPACE"))
#ifdef SL_KEY_BACKSPACE
	    return SL_KEY_BACKSPACE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_C1"))
#ifdef SL_KEY_C1
	    return SL_KEY_C1;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_C3"))
#ifdef SL_KEY_C3
	    return SL_KEY_C3;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_DELETE"))
#ifdef SL_KEY_DELETE
	    return SL_KEY_DELETE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_DOWN"))
#ifdef SL_KEY_DOWN
	    return SL_KEY_DOWN;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_END"))
#ifdef SL_KEY_END
	    return SL_KEY_END;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_ENTER"))
#ifdef SL_KEY_ENTER
	    return SL_KEY_ENTER;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_ERR"))
#ifdef SL_KEY_ERR
	    return SL_KEY_ERR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_F0"))
#ifdef SL_KEY_F0
	    return SL_KEY_F0;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_HOME"))
#ifdef SL_KEY_HOME
	    return SL_KEY_HOME;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_IC"))
#ifdef SL_KEY_IC
	    return SL_KEY_IC;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_LEFT"))
#ifdef SL_KEY_LEFT
	    return SL_KEY_LEFT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_NPAGE"))
#ifdef SL_KEY_NPAGE
	    return SL_KEY_NPAGE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_PPAGE"))
#ifdef SL_KEY_PPAGE
	    return SL_KEY_PPAGE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_REDO"))
#ifdef SL_KEY_REDO
	    return SL_KEY_REDO;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_RIGHT"))
#ifdef SL_KEY_RIGHT
	    return SL_KEY_RIGHT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_UNDO"))
#ifdef SL_KEY_UNDO
	    return SL_KEY_UNDO;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SL_KEY_UP"))
#ifdef SL_KEY_UP
	    return SL_KEY_UP;
#else
	    goto not_there;
#endif
	break;
    case 'T':
	break;
    case 'U':
	break;
    case 'V':
	break;
    case 'W':
	break;
    case 'X':
	break;
    case 'Y':
	break;
    case 'Z':
	break;
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

MODULE = Term::Slang	PACKAGE = Term::Slang

# Constant loading
double
constant(name,arg)
	char *		name
	int		arg

################################
# Screen management
void
SLsmg_fill_region(r,c,nr,nc,ch)
	int		r;
	int		c;
	unsigned int	nr;
	unsigned int	nc;
	unsigned char	ch;

void
SLsmg_set_char_set(a)
	int a;

int
SLsmg_suspend_smg()

int
SLsmg_resume_smg()

void
SLsmg_erase_eol()

void
SLsmg_gotorc(row,col)
	int row;
	int col;

void
SLsmg_erase_eos()

void
SLsmg_reverse_video()

void
SLsmg_set_color(c)
	int c;

void
SLsmg_normal_video()

void
SLsmg_printf(fmt, ...)
	char *fmt;

#void
#SLsmg_vprintf(s,list)
#	char *s;
#	va_list list;

void
SLsmg_write_string(str)
	char *str;

void
SLsmg_write_nstring(str,len)
	char		*str;
	unsigned int	len;

void
SLsmg_write_char(ch)
	char ch;

void
SLsmg_write_nchars(str,len)
	char		*str;
	unsigned int	len;

void
SLsmg_write_wrapped_string(str,p1,p2,p3,p4,p5)
	char *str
	int p1
	int p2;
	int p5;
	unsigned int p3;
	unsigned int p4;

void
SLsmg_cls()

void
SLsmg_refresh()

void
SLsmg_touch_lines(p1,p2)
	int p1;
	unsigned int p2;

int
SLsmg_init_smg()
	CODE:
		RETVAL = SLsmg_init_smg();
		RETVAL = RETVAL == 0 ? 1 : 0;
	OUTPUT:
	RETVAL

void
SLsmg_reset_smg()

unsigned short
SLsmg_char_at()

void
SLsmg_set_screen_start(r,c)
	int *r;
	int *c;

void
SLsmg_draw_hline(p1)
	unsigned int p1;

void
SLsmg_draw_vline(p1)
	int p1;

void
SLsmg_draw_object(p1,p2,s)
	int p1;
	int p2;
	unsigned char s;

void
SLsmg_draw_box(p1,p2,p3,p4)
	int p1;
	int p2;
	unsigned int p3;
	unsigned int p4;

int
SLsmg_get_column()

int
SLsmg_get_row()

void
SLsmg_forward(p1)
	int p1;

void
SLsmg_write_color_chars(us1,ui1)
	unsigned short &us1;
	unsigned int ui1;

unsigned int
SLsmg_read_raw(us1,ui1)
	unsigned short &us1;
	unsigned int ui1;

unsigned int
SLsmg_write_raw(us1,ui1)
	unsigned short &us1;
	unsigned int ui1;

void
SLsmg_set_color_in_region(i1,i2,i3,ui1,ui2)
	int i1;
	int i2;
	int i3;
	unsigned int ui1;
	unsigned int ui2;

void
SLsmg_set_terminal_info(info)
	SLsmg_Term_Type *info;

################################
# Tty stuff.

int
SLang_init_tty(abort_char,flow_control,opost)
	int abort_char;
	int flow_control;
	int opost;

void
SLang_reset_tty()

void
SLtty_set_suspend_state(p1)
	int p1;

int
SLang_getkey_intr_hook()

unsigned int
SLang_getkey()

int
SLang_ungetkey_string(buf,buflen)
	unsigned char	*buf;
	unsigned int	buflen;

int
SLang_buffer_keystring(buf,buflen)
	unsigned char	*buf;
	unsigned int	buflen;

int
SLang_ungetkey(ch)
	unsigned char ch;

void
SLang_flush_input()

int
SLang_input_pending(tsecs)
	int tsecs;

#int
#SLang_set_abort_signal(i1)
#	int i1;

################################
# Scrolling

SLscroll_Window_Type *
SLscroll_create()
	PREINIT:
		SLscroll_Window_Type *window;
		unsigned int nrows = 50;

	CODE:
	{
		window = safemalloc(sizeof(SLscroll_Window_Type));
		window->nrows = nrows;
		RETVAL = window;
	}
	OUTPUT:
	RETVAL

#   unsigned int flags;
#   SLscroll_Type *top_window_line;   /* list element at top of window */
#   SLscroll_Type *bot_window_line;   /* list element at bottom of window */
#   SLscroll_Type *current_line;    /* current list element */
#   SLscroll_Type *lines;               /* first list element */
#   unsigned int nrows;                 /* number of rows in window */
#   unsigned int hidden_mask;           /* applied to flags in SLscroll_Type */
#   unsigned int line_num;              /* current line number (visible) */
#   unsigned int num_lines;             /* total number of lines (visible) */
#   unsigned int window_row;            /* row of current_line in window */
#   unsigned int border;                /* number of rows that form scroll border */
#   int cannot_scroll;                  /* should window scroll or recenter */
# SLscroll_Window_Type;

void
SLscroll_get(window, key)
	SLscroll_Window_Type *window;
	char	*key;

	PREINIT:
		SV *sv;

	PPCODE:
	{
		if (strEQ(key, "flags")) {
			sv = newSViv(window->flags);
		} else if (strEQ(key, "top_window_line")) {
			sv = newSVpv((char*)window->top_window_line, 0);
		} else if (strEQ(key, "bot_window_line")) {
			sv = newSVpv((char*)window->bot_window_line, 0);
		} else if (strEQ(key, "current_line")) {
			sv = newSVpv((char*)window->current_line, 0);
		} else if (strEQ(key, "lines")) {
			sv = newSVpv((char*)window->lines, 0);
		} else if (strEQ(key, "nrows")) {
			sv = newSViv(window->nrows);
		} else if (strEQ(key, "hidden_mask")) {
			sv = newSViv(window->hidden_mask);
		} else if (strEQ(key, "line_num")) {
			sv = newSViv(window->line_num);
		} else if (strEQ(key, "num_lines")) {
			sv = newSViv(window->num_lines);
		} else if (strEQ(key, "window_row")) {
			sv = newSViv(window->window_row);
		} else if (strEQ(key, "border")) {
			sv = newSViv(window->border);
		} else if (strEQ(key, "cannot_scroll")) {
			sv = newSViv(window->cannot_scroll);
		}

		XPUSHs(sv);
	}

void
SLscroll_destroy(window)
	SLscroll_Window_Type	*window;
	CODE:
	{
		safefree(window);
	}

void
SLscroll_set(window, key, val)
	SLscroll_Window_Type	*window;
	char			*key;
	SV			*val;

	CODE:
	{
		if (strEQ(key, "flags")) {
			window->flags = SvIV(val);
		} else if (strEQ(key, "top_window_line")) {
			window->top_window_line = (SLscroll_Type*)SvPV(val, PL_na);
		} else if (strEQ(key, "bot_window_line")) {
			window->bot_window_line = (SLscroll_Type*)SvPV(val, PL_na);
		} else if (strEQ(key, "current_line")) {
			window->current_line = (SLscroll_Type*)SvPV(val, PL_na);
		} else if (strEQ(key, "lines")) {
			window->lines = (SLscroll_Type*)SvPV(val, PL_na);
		} else if (strEQ(key, "nrows")) {
			window->nrows = SvUV(val);
		} else if (strEQ(key, "hidden_mask")) {
			window->hidden_mask = SvUV(val);
		} else if (strEQ(key, "line_num")) {
			window->line_num = SvUV(val);
		} else if (strEQ(key, "num_lines")) {
			window->num_lines = SvUV(val);
		} else if (strEQ(key, "window_row")) {
			window->window_row = SvUV(val);
		} else if (strEQ(key, "border")) {
			window->border = SvUV(val);
		} else if (strEQ(key, "cannot_scroll")) {
			window->cannot_scroll = SvIV(val);
		}
	}

#############################################

Scroll_Line_Type *
SLline_create(CLASS)
	char *CLASS;
	CODE:
	{
		RETVAL = (Scroll_Line_Type*)safemalloc(sizeof(Scroll_Line_Type));
		if (RETVAL == NULL) {
			warn("Unable to malloc Scroll_Line_Type");
			XSRETURN_UNDEF;
		}
	}
	OUTPUT:
	RETVAL

void
SLline_destroy(self)
	Scroll_Line_Type *self;
	CODE:
	{
		if (self->sv_next != NULL) {
			SvREFCNT_dec( self->sv_next );
		}

		if (self->sv_prev != NULL) {
			SvREFCNT_dec( self->sv_prev );
		}

		safefree((char*)self);
	}

void
SLline_get(lines, key)
	Scroll_Line_Type *lines;
	char		 *key;

	PREINIT:
		SV *sv;

	PPCODE:
	{
		if (strEQ(key, "next")) {
			sv = (Scroll_Line_Type*)SvIV( lines->sv_next );

			/* c = (PAIR*)SvIV( c->sv_next ); */
		} else if (strEQ(key, "prev")) {
			/* sv = newSVpv((char*)lines->sv_prev, 0); */
			sv = (Scroll_Line_Type*)SvIV( lines->sv_prev );

		} else if (strEQ(key, "data")) {
			sv = newSVpv((char*)lines->data, 0);
		}

		XPUSHs(sv);
	}

void
SLline_set(self, key, val)
	Scroll_Line_Type	*self;
	char			*key;
	SV			*val;

	CODE:
	{
		Scroll_Line_Type *foo;

		foo = (Scroll_Line_Type*)SvIV(val);
		printf("VAL1: %s\n", (char*)foo->data);

		if (strEQ(key, "next")) {
			self->sv_next = SvRV(val);
			SvREFCNT_inc( self->sv_next );

			if (SvIOK(self->sv_next)) {
				foo = (Scroll_Line_Type*)SvIV( self->sv_next );
				printf("VAL2: %s\n", (char*)foo->data);
			}

		} else if (strEQ(key, "prev")) {
			self->sv_prev = SvRV(val);
			SvREFCNT_inc( self->sv_prev );

		} else if (strEQ(key, "data")) {
			self->data = (char*)SvPV(val, PL_na);
			printf("DATAVAL: %s\n", (char*)self->data);
		}
	}

int
SLscroll_find_top(scroll)
	SLscroll_Window_Type *scroll;

int
SLscroll_find_line_num(scroll)
	SLscroll_Window_Type *scroll;

unsigned int
SLscroll_next_n(scroll,ui1)
	SLscroll_Window_Type *scroll;
	unsigned int ui1;

unsigned int
SLscroll_prev_n(scroll,ui1)
	SLscroll_Window_Type *scroll;
	unsigned int ui1;

int
SLscroll_pageup(scroll)
	SLscroll_Window_Type *scroll;

int
SLscroll_pagedown(scroll)
	SLscroll_Window_Type *scroll;

################################
# Readline

SLang_Read_Line_Type*
SLang_rline_save_line(rline)
	SLang_RLine_Info_Type *rline;

int
SLang_init_readline(rline)
	SLang_RLine_Info_Type *rline;

int
SLang_read_line(rline)
	SLang_RLine_Info_Type *rline;

int
SLang_rline_insert(s)
	char *s;

void
SLrline_redraw(rline)
	SLang_RLine_Info_Type *rline;

################################
# Signals

void
SLsig_block_signals()

void
SLsig_unblock_signals()

################################
# Keys

int
SLkp_define_keysym(key,map)
	char *key;
	unsigned int map;

int
SLkp_init()

int
SLkp_getkey()

################################
# Low level

int
SLtt_flush_output()

void
SLtt_set_scroll_region(i1,i2)
	int i1;
	int i2;

void
SLtt_reset_scroll_region()

void
SLtt_reverse_video(i1)
	int i1;

void
SLtt_bold_video()

void
SLtt_begin_insert()

void
SLtt_end_insert()

void
SLtt_del_eol()

void
SLtt_goto_rc(i1,i2)
	int i1;
	int i2;

void
SLtt_delete_nlines(i1)
	int i1;

void
SLtt_delete_char()

void
SLtt_erase_line()

void
SLtt_normal_video()

void
SLtt_cls()

void
SLtt_beep()

void
SLtt_reverse_index(i1)
	int i1;

void
SLtt_smart_puts(us1,us2,i1,i2)
	unsigned short *us1;
	unsigned short *us2;
	int i1;
	int i2;

void
SLtt_write_string(s)
	char *s;

void
SLtt_putchar(s)
	char s;

int
SLtt_init_video()

int
SLtt_reset_video()

void
SLtt_get_terminfo()

void
SLtt_get_screen_size()
	PROTOTYPE: ;
	PPCODE:
		SLtt_get_screen_size();
		EXTEND(sp,2);
		PUSHs(sv_2mortal(newSViv(SLtt_Screen_Rows)));
		PUSHs(sv_2mortal(newSViv(SLtt_Screen_Cols)));

int
SLtt_set_cursor_visibility(i1)
	int i1;

int
SLtt_set_mouse_mode(i1,i2)
	int i1;
	int i2;

void
SLtt_set_color(obj,name,fg,bg)
	int	obj;
	char	*name;
	char	*fg;
	char	*bg;
