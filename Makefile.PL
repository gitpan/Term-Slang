require 5.004_04;
use ExtUtils::MakeMaker;
use Config qw(%Config);

sub MY::libscan {
	my ($self,$path) = @_;

	return '' if($path =~ m:/(RCS|CVS|SCCS)/: ||
		$path =~ m:[~%]$: ||
		$path =~ m:\.(orig|rej)$:
	);

	return $path;
}

print "Checking for 'slang.h'\n";
my $include = '';
my @inc = split /\s+/,join(' ',$Config{'usrinc'},$Config{'incpth'},$Config{'locincpth'});
foreach my $path (@inc) {
	print "Checking in $path...\n";
	if (-f "$path/slang.h") {
		$include .= "-I$path ";
        	last;
	} elsif (-f "$path/slang/slang.h") {
		$include .= "-I$path/slang ";
		last;
	}
}

die "I can't find 'slang.h' - Exiting!\n" if $include =~ /^\s*$/;

WriteMakefile(
	'NAME'		=> 'Term::Slang',
	'VERSION_FROM'	=> 'Slang.pm',
	'LIBS'		=> ['-lslang'],
	'DEFINE'	=> '',
	'INC'		=> $include,
	'dist'		=> {	COMPRESS => 'gzip -9f',
				SUFFIX   => 'gz',
				DIST_DEFAULT => 'tardist',
	},
);
