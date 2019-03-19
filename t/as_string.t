#!perl -wT

use strict;
use warnings;
use Test::Most tests => 3;
use Test::NoWarnings;

BEGIN {
	use_ok('Geo::Location');
}

DISTANCE: {
	my $loc = new_ok('Geo::Location' => [
		lat => 38.9,
		long => -77.04,
		number => 1600,
		street => 'Pennsylvania Ave NW',
		city => 'Washington',
		state => 'DC',	# Not technically true!
		country => 'US'
	]);

	diag($loc->as_string());
}
