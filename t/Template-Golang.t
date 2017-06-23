# Before 'make install' is performed this script should be runnable with
# 'make test'. After 'make install' it should work as 'perl Template-Golang.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use strict;
use warnings;

use Test::More;
BEGIN { use_ok('Template::Golang::HTML') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

close STDOUT;
open STDOUT, '>', \my $out
    or die "Can't redirect STDOUT: $!";

my $template = Template::Golang::HTML->new();

$template->process('t/test.tmpl');

is($out, <<'END');
This is a test template.

Hello, World!, 

That is all.
END

done_testing();
