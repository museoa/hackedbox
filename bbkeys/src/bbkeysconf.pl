#!/usr/bin/perl
#
# Copyright (c) 2001 Damien Tougas <damien@tougas.net>. USA.
# Copyright (c) 2001 Jason 'vanRijn' Kasper <vR at movingparts dot net>
# All rights reserved
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
# OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
# SUCH DAMAGE.
#
# $Id: bbkeysconf.pl.in,v 1.9 2002/01/13 18:59:39 vanrijn Exp $

sub usage() {
	print "\nbbkeysconf.pl version 0.8.6\n";
	print "Usage: bbkeysconf.pl [options]\n";
	print "Options:\n";
	print " -rc[file] <filename>     Alternate keygrab definition file.\n";
	print "                          (default is ~/.bbkeysrc)\n";
	print " -h[elp]                  Display this help\n";
	print "\n";
}

# do math in integer rather than double mode--we rely on this for rounding
use integer;

# prototypes
sub trim;

my $bbkeysrc = $ENV{HOME} . "/.bbkeysrc";

# get the keyconfig file from the commandline, or use the default
for ( $i=0; $i< @ARGV; $i++) {
	if ($ARGV[$i] =~ /^-rc(|file)$/) {
		$bbkeysrc = $ARGV[++$i];
	} elsif ($_ =~ /^-h(|elp)$/) {
		usage();
		exit;
	} else {
		usage();
		die "unknown command. exiting\n\n";
	}
}

my @modifiers = (
	"None",
	"Control",
	"Shift",
	"Mod1",
	"Control+Shift",
	"Control+Mod1",
	"Shift+Mod1",
	"Control+Shift+Mod1"
	);

my @actions = (
	"BigNudgeDown",
	"BigNudgeLeft",
	"BigNudgeRight",
	"BigNudgeUp",
	"Close",
	"ExecCommand",
	"HorizontalDecrement",
	"HorizontalIncrement",
	"Lower",
	"MaximizeHorizontal",
	"MaximizeVertical",
	"MaximizeWindow",
	"Minimize",
	"NextWindow",
	"NextWorkspace",
	"NudgeDown",
	"NudgeLeft",
	"NudgeUp",
	"NudgeRight",
	"PrevWindow",
	"PrevWorkspace",
	"Raise",
	"ShadeWindow",
	"StickWindow",
	"ToggleDecor",
	"Workspace1",
	"Workspace2",
	"Workspace3",
	"Workspace4",
	"Workspace5",
	"Workspace6",
	"Workspace7",
	"Workspace8",
	"Workspace9",
	"Workspace10",
	"Workspace11",
	"Workspace12",
	"VerticalIncrement",
	"VerticalDecrement"
	);


my @config;
my $count = 0;
if (open(R, "$bbkeysrc")) {
	while (<R>) {
		# skip blank lines or comments
		$_ = trim($_);
		next if ($_ =~ /^$/ or $_ =~ /^#/) ;
		$config[$count++] = $_;
		}
	close(R);
}

my $save_state = 0;
my $exit = 0;
my $command = "";

print "\n*** BBKeys Configuration Tool ***\n";
&list;
while ($exit == 0) {

	print "\n[A]dd [D]elete [L]ist [S]ave [Q]uit\n";
	print "Menu: Select> ";
	$command = <STDIN>;
	chomp($command);
	$command =~ s/\s*//g;

	&add if ($command =~ /^a$/i);
	&delete if ($command =~ /^d$/i);
	&list if ($command =~ /^l$/i);
	&save if ($command =~ /^s$/i);
	&quit if ($command =~ /^q$/i);

	}

exit(0);

sub trim {
	local $_ = shift;
	
	s/^\s*//;
	s/\s*$//;

	return $_;
	}

sub list {

	print "\nList:> Current Configuration\n";
	print "-----------------------------------------------------------------\n";

	open(CONFIG_LIST, ">-");
	for ($i = 0; $i < $count; $i++) {

		if ($config[$i] =~ /KeyToGrab.*?Action\(ExecCommand\)/) {
			$config[$i] =~ m/Grab\((.*)\).*Modifier\((.*)\).*Action\((.*)\).*This\((.*)\)/;
			$key_seq = "$2+$1";
			$result = "$3 $4";
		} elsif ($config[$i] =~/KeyToGrab/ ) {
			$config[$i] =~ m/Grab\((.*)\).*Modifier\((.*)\).*Action\((.*)\)/;
			$key_seq = "$2+$1";
			$result = "$3";
			}
		write(CONFIG_LIST);

		}
	close(CONFIG_LIST);

	print "-----------------------------------------------------------------\n";

	}

sub add {

	print "\nAdd: Choose Key> Up, Down, R, L, etc.\n";
	print "Add: Choose Key> ";
	my $grab = <STDIN>;
	chomp($grab);
	$grab =~ s/\s*//g;
	if ($grab eq "") {
		print ("\nERROR: Must enter valid key.\n");
		return;
		}

	print "Add: Select Modifier> Modifier List\n";
	print "-----------------------------------------------------------------\n";
	open(MODIFIER_LIST, ">-");
	for ($i = 0; $i <= $#modifiers; $i++) {
		write(MODIFIER_LIST);
		}
	close(MODIFIER_LIST);
	print "-----------------------------------------------------------------\n";
	my $mod = $modifiers[&get_num("Add: Select Modifier> ", $#modifiers)];

	print "Add: Choose Action> Action List\n";
	print "-----------------------------------------------------------------\n";
	# okay. $#actions refers to the last index of the array, not the
	# count. so add 1 more to it and divide by 3 and with the "user
	# integer" line up time, we get an even number of rows
	$action_rows = ($#actions +1)/ 3;
	open(ACTION_LIST, ">-");
	for ($i = 0; $i <= $action_rows; $i++) {
		$index1=$i;
		$index2=$i + $action_rows +1;
		$index3=$index2 + $action_rows +1;
		write(ACTION_LIST);
		}
	close(ACTION_LIST);
	print "-----------------------------------------------------------------\n";
	my $action = $actions[&get_num("Add: Select Action> ", $#actions)];

	$config[$count] = "KeyToGrab($grab), WithModifier($mod), " .
		"WithAction($action)";
	if ($action =~ /ExecCommand/) {
		print "Add: Command To Execute> ";
		my $dothis = <STDIN>;
		chomp($dothis);
		$config[$count] .= ", DoThis($dothis)";
		}

	$count++;
	$save_state = 1;
	print "Add:> Finished\n";
	
	}

sub delete {

	print "\n";
	$item = &get_num("Delete: Select Item> ", $count - 1);

	for ($i = 0; $i < $count - 1; $i++) {
		$config[$i] = $config[$i + 1] if ($i >= $item);
		}

	$count--;
	$save_state = 1;
	print "Delete:> Finished\n";

	}

sub save {

	print "Save: Confirm> Save the current configuration?\n";
	print "Save: Confirm> ";
	my $confirm = <STDIN>;
	chomp($confirm);
	$confirm =~ s/\s*//g;

	if ($confirm =~ /^(y|yes)$/i) {
		open(W, ">$bbkeysrc");
		print W "#~/.bbkeysrc, automagically configured by bbkeysconf.pl\n\n\n";
		for ($i = 0; $i < $count; $i++) {
			print W $config[$i] . "\n";
			}
		close(W);
		$save_state = 0;
		print "Save:> Finished\n";
		}
	else {
		print "Save:> Aborted\n";
		}

	}

sub quit {

	if ($save_state == 1) {
		print "Quit: Notice> Configuration has been changed\n";
		&save;
		}
	print "Quit:> Finished\n";
	$exit = 1;

	}

sub get_num {

	my $prompt = $_[0];
	my $maxnum = $_[1];
	my $validnum = 0;
	my $input;

	print $prompt . "Enter a number between 0 and $maxnum\n";
	while ($validnum == 0) {
		print $prompt;
		$input = <STDIN>;
		chomp($input);
		$input =~ s/\s*//g;
		if (($input =~ /^\d+$/) && ($input <= $maxnum)) {
			$validnum = 1;
			}
		else {
			print "\nERROR: Invalid selection, please try again\n\n";
			}
		}

	return($input);

	}

format CONFIG_LIST =
@>  @<<<<<<<<<<<<<<<<<<<<<<<<<<< =  @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
$i, $key_seq, $result
.

format MODIFIER_LIST =
@>  @<<<<<<<<<<<<<<<<<<<<<<
$i, $modifiers[$i]
.

format ACTION_LIST =
@>  @<<<<<<<<<<<<<<<<<<<<  @>  @<<<<<<<<<<<<<<<<<<<  @>  @<<<<<<<<<<<<<<<<<<<
$index1, $actions[$index1], {$actions[$index2] ? ($index2) : ""}, {$actions[$index2] ? $actions[$index2] : ""}, {$actions[$index3] ? ($index3) : ""}, {$actions[$index3] ? $actions[$index3] : ""}
.
