#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $run = 1;
my %signals;

sub record_signal {
    my $name = $_[0];
    $signals{$name} += 1;
}

sub signal_hup {
    record_signal('HUP');
}
sub signal_int {
    record_signal('INT');
    $run = 0;
}
sub signal_quit {
    record_signal('QUIT');
}
sub signal_ill {
    record_signal('ILL');
}
sub signal_trap {
    record_signal('TRAP');
}
sub signal_abrt {
    record_signal('ABRT');
}
sub signal_emt {
    record_signal('EMT');
}
sub signal_fpe {
    record_signal('FPE');
}
sub signal_kill {
    record_signal('KILL');
}
sub signal_bus {
    record_signal('BUS');
}
sub signal_segv {
    record_signal('SEGV');
}
sub signal_sys {
    record_signal('SYS');
}
sub signal_pipe {
    record_signal('PIPE');
}
sub signal_alrm {
    record_signal('ALRM');
}
sub signal_term {
    record_signal('TERM');
}
sub signal_urg {
    record_signal('URG');
}
sub signal_stop {
    record_signal('STOP');
}
sub signal_tstp {
    record_signal('TSTP');
}
sub signal_cont {
    record_signal('CONT');
}
sub signal_chld {
    record_signal('CHLD');
}
sub signal_ttin {
    record_signal('TTIN');
}
sub signal_ttou {
    record_signal('TTOU');
}
sub signal_io {
    record_signal('IO');
}
sub signal_xcpu {
    record_signal('XCPU');
}
sub signal_xfsz {
    record_signal('XFSZ');
}
sub signal_vtalrm {
    record_signal('VTALRM');
}
sub signal_prof {
    record_signal('PROF');
}
sub signal_winch {
    record_signal('WINCH');
}
sub signal_info {
    record_signal('INFO');
}
sub signal_usr1 {
    record_signal('USR1');
}
sub signal_usr2 {
    record_signal('USR2');
}

$SIG{'HUP'} = 'signal_hup';
$SIG{'INT'} = 'signal_int';
$SIG{'QUIT'} = 'signal_quit';
$SIG{'ILL'} = 'signal_ill';
$SIG{'TRAP'} = 'signal_trap';
$SIG{'ABRT'} = 'signal_abrt';
$SIG{'EMT'} = 'signal_emt';
$SIG{'FPE'} = 'signal_fpe';
$SIG{'KILL'} = 'signal_kill';
$SIG{'BUS'} = 'signal_bus';
$SIG{'SEGV'} = 'signal_segv';
$SIG{'SYS'} = 'signal_sys';
$SIG{'PIPE'} = 'signal_pipe';
$SIG{'ALRM'} = 'signal_alrm';
$SIG{'TERM'} = 'signal_term';
$SIG{'URG'} = 'signal_urg';
$SIG{'STOP'} = 'signal_stop';
$SIG{'TSTP'} = 'signal_tstp';
$SIG{'CONT'} = 'signal_cont';
$SIG{'CHLD'} = 'signal_chld';
$SIG{'TTIN'} = 'signal_ttin';
$SIG{'TTOU'} = 'signal_ttou';
$SIG{'IO'} = 'signal_io';
$SIG{'XCPU'}= 'signal_xcpu';
$SIG{'XFSZ'} = 'signal_xfsz';
$SIG{'VTALRM'} = 'signal_vtalrm';
$SIG{'PROF'} = 'signal_prof';
$SIG{'WINCH'} = 'signal_winch';
$SIG{'INFO'} = 'signal_info';
$SIG{'USR1'} = 'signal_usr1';
$SIG{'USR2'} = 'signal_usr2';

print "[exc1504 version 1.0]\n";
print "Loop forever to record unix signals to this process (pid = $$).\n";
print "The process will stop using 'kill -INT $$\' or 'kill -KILL $$\'.\n";

while ($run) {
    # intentionally empty loop
}

for my $key (keys %signals) {
    print "Signal $key was called $signals{$key} time(s).\n";
}
