
/* $Id: Slang.xs,v 1.4 1998/11/01 11:48:09 daniel Exp daniel $ */

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

MODULE = Term::Slang	PACKAGE = Term::Slang::XS
#PREFIX = SL

################################
# Screen management
void
SLsmg_fill_region(p1,p2,p3,p4,s)
	int p1;
	int p2;
	unsigned int p3;
	unsigned int p4;
	unsigned char s;

void
SLsmg_set_char_set(i)
	int i;

int
SLsmg_suspend_smg()

int
SLsmg_resume_smg()

void
SLsmg_erase_eol()

void
SLsmg_gotorc(p1,p2)
	int p1;
	int p2;

void
SLsmg_erase_eos()

void
SLsmg_reverse_video()

void
SLsmg_set_color(p1)
	int p1;

void
SLsmg_normal_video()

void
SLsmg_printf(s, ...)
	char *s;

#void
#SLsmg_vprintf(s,list)
#	char *s;
#	va_list list;

void
SLsmg_write_string(s)
	char *s;

void
SLsmg_write_nstring(s,p1)
	char *s;
	unsigned int p1;

void
SLsmg_write_char(s)
	char s;

void
SLsmg_write_nchars(s,p1)
	char *s;
	unsigned int p1;

void
SLsmg_write_wrapped_string(s,p1,p2,p3,p4,p5)
	char *s
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
SLsmg_set_screen_start(p1,p2)
	int &p1;
	int &p2;

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
SLang_init_tty(p1,p2,p3)
	int p1;
	int p2;
	int p3;

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
SLang_ungetkey_string(uc1,ui1)
	unsigned char *uc1;
	unsigned int ui1;

int
SLang_buffer_keystring(uc1,ui1)
	unsigned char *uc1;
	unsigned int ui1;

int
SLang_ungetkey(uc1)
	unsigned char uc1;

void
SLang_flush_input()

int
SLang_input_pending(i1)
	int i1;

#int
#SLang_set_abort_signal(i1)
#	int i1;

################################
# Scrolling

void
SLscroll_create()
	CODE:
	SLscroll_Window_Type *Line_Window = malloc(sizeof(SLscroll_Window_Type));
	ST(0) = sv_2mortal(newSVpv((char *)&Line_Window,sizeof(SLscroll_Window_Type)));

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
SLtt_set_color(i1,s1,s2,s3)
	int i1;
	char *s1;
	char *s2;
	char *s3;
