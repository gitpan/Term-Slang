package Term::Slang;

# $Id: Slang.pm,v 1.5 1998/11/03 04:35:47 daniel Exp daniel $

use strict;
require DynaLoader;

use vars qw($VERSION @ISA);

@ISA = qw(Term::Slang::AL DynaLoader);
$VERSION = '0.01';

bootstrap Term::Slang $VERSION;

sub new {
	my $proto = shift;
	bless my $self = {}, (ref $proto || $proto);

	$self->{'Smg_Initialized'} = 0;

	$self;
}

sub DESTROY {
	my $self = shift;
	$self->SLang_reset_tty;
	$self->smg_reset_smg;
}

# Screen init stuff.
sub smg_suspend_smg {
	my $self = shift;

	return if $self->{'Smg_Initialized'} <= 0;

	$self->SLsmg_suspend_smg;
	$self->{'Smg_Initialized'} = -1;
}

sub smg_resume_smg {
	my $self = shift;
	return if $self->{'Smg_Initialized'} != -1;

	$self->SLsmg_resume_smg;
	$self->{'Smg_Initialized'} = 1;
}

sub smg_erase_eol {
	my $self = shift;
	return if $self->{'Smg_Initialized'} <= 0;
	$self->SLsmg_erase_eol;
}

sub smg_gotorc {
	my $self = shift;
	my ($r,$c) = @_;
	return if $self->{'Smg_Initialized'} <= 0;
	$self->SLsmg_gotorc($r,$c);
}

sub smg_erase_eos {
	my $self = shift;
	return if $self->{'Smg_Initialized'} <= 0;
	$self->SLsmg_erase_eos;
}

sub smg_reverse_video {
	my $self = shift;
	return if $self->{'Smg_Initialized'} <= 0;
	$self->SLsmg_reverse_video;
}

sub smg_set_color {
	my $self = shift;
	my $c    = shift;
	return if $self->{'Smg_Initialized'} <= 0;
	$self->SLsmg_set_color($c);
}

sub smg_normal_video {
	my $self = shift;
	return if $self->{'Smg_Initialized'} <= 0;
	$self->SLsmg_normal_video;
}

sub smg_write_string {
	my $self = shift;
	my $s    = shift;
	return if $self->{'Smg_Initialized'} <= 0;
	$self->SLsmg_write_string($s);
}

sub smg_write_nstring {
	my $self = shift;
	my $s    = shift;
	my $len  = shift;
	return if $self->{'Smg_Initialized'} <= 0 or $len <= 0;

	$self->SLsmg_write_nstring($s,$len);
}

sub smg_write_wrapped_string {
	my $self = shift;
	my ($s,$r,$c,$dr,$dc,$fill) = @_;
	return if $self->{'Smg_Initialized'} <= 0;

	$self->SLsmg_write_wrapped_string($s,$r,$c,$dr,$dc,$fill);
}

sub smg_char_at {
	my $self = shift;
	return if $self->{'Smg_Initialized'} <= 0;
	return $self->SLsmg_char_at;
}

sub smg_set_screen_start {
	my $self = shift;
	my ($r,$c) = @_;

	return if $self->{'Smg_Initialized'} <= 0;
	$self->SLsmg_set_screen_start($r,$c);
}

sub smg_draw_hline {
	my $self = shift;
	my $dn   = shift;
	return if $self->{'Smg_Initialized'} <= 0;
	$self->SLsmg_draw_hline($dn);
}

sub smg_draw_vline {
	my $self = shift;
	my $dn   = shift;
	return if $self->{'Smg_Initialized'} <= 0;

	$self->SLsmg_draw_vline($dn);
}

sub smg_draw_object {
	my $self = shift;
	my ($r,$c,$obj) = @_;
	return if $self->{'Smg_Initialized'} <= 0;
	$self->SLsmg_draw_object($r,$c,$obj);
}

sub smg_draw_box {
	my $self = shift;
	my ($r,$c,$dr,$dc) = @_;
	return if $self->{'Smg_Initialized'} <= 0;
	$self->SLsmg_draw_box($r,$c,$dr,$dc);
}

sub smg_get_column {
	my $self = shift;
	return if $self->{'Smg_Initialized'} <= 0;
	return $self->SLsmg_get_column;
}

sub smg_get_row {
	my $self = shift;
	return if $self->{'Smg_Initialized'} <= 0;
	return $self->SLsmg_get_row();
}

sub smg_forward {
	my $self = shift;
	my $n    = shift;
	return if $self->{'Smg_Initialized'} <= 0;
	$self->SLsmg_forward($n);
}

sub smg_set_color_in_region {
	my $self = shift;
	my ($color,$r,$c,$dr,$dc) = @_;
	return if $self->{'Smg_Initialized'} <= 0;
	$self->SLsmg_set_color_in_region($color,$r,$c,$dr,$dc);
}

sub smg_cls {
	my $self = shift;
	return if $self->{'Smg_Initialized'} <= 0;
	$self->SLsmg_cls;
}

sub smg_refresh {
	my $self = shift;
	return if $self->{'Smg_Initialized'} <= 0;
	$self->SLsig_block_signals;
	$self->SLsmg_refresh;
	$self->SLsig_unblock_signals;
}

sub smg_reset_smg {
	my $self = shift;
	return if $self->{'Smg_Initialized'} <= 0;
	$self->SLsig_block_signals;
	$self->SLsmg_reset_smg;
	$self->SLsig_unblock_signals;
	$self->{'Smg_Initialized'} = 0;
}

sub smg_init_smg {
	my $self = shift;
	return if $self->{'Smg_Initialized'} != 0;
	$self->SLsig_block_signals;
	$self->SLsmg_init_smg;
	$self->SLsig_unblock_signals;
	$self->{'Smg_Initialized'} = 1;
}

sub smg_define_color {
	my $self = shift;
	my ($obj,$fg,$bg) = @_;
	$self->SLtt_set_color($obj,'',$fg,$bg);
}

sub init_smg {
	my $self = shift;

	$self->SLtt_get_terminfo;
	$self->{'Smg_Initialized'} = 0;
	return 1;
}

package Term::Slang::AL;
use Carp;
no strict;

sub AUTOLOAD {
	{ $AUTOLOAD =~ s/.*:://; }

	my $name;
	if (exists $Term::Slang::XS::{"$AUTOLOAD"}) {
		$name = "Term::Slang::XS::$AUTOLOAD";
	} else {
		croak "Cannot do `$AUTOLOAD' in Term::Slang";
	}

	local $^W = 0;
	*$AUTOLOAD = sub { shift; &$name(@_); };
	goto &$AUTOLOAD;
}

1;
__END__

=head1 NAME

Term::Slang - Interface to the S-Lang terminal library.

=head1 SYNOPSIS

use Term::Slang;

my $sl = Term::Slang->new;

$sl->init_smg;
$sl->SLang_init_tty(-1,0,1);
$sl->smg_init_smg;
$sl->SLkp_init;

$sl->SLang_reset_tty;
$sl->smg_reset_smg;

=head1 DESCRIPTION

=head1 AUTHOR

Daniel E<lt>daniel-cpan-slang@electricrain.comE<gt>

This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=head1 SEE ALSO

slang(1), perl(1)

=cut
