package Template::Golang::HTML;

use strict;
use warnings;

use Template::Golang;

sub new {
	my ($class, $config) = @_;
	return bless {
	}, $class;
}

sub process {
	my ($self, $template, $vars, $output, %options) = @_;

	my $out = Template::Golang::processHTML($template);

	print $out;

	return;
}

1;
