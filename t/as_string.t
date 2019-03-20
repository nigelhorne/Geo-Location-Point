#!perl -wT

use strict;
use warnings;
use Test::Most tests => 5;
use Test::NoWarnings;

BEGIN {
	use_ok('Geo::Location::Point');
}

DISTANCE: {
	my $loc = new_ok('Geo::Location::Point' => [
		lat => 38.9,
		long => -77.04,
		number => 1600,
		street => 'Pennsylvania Ave NW',
		city => 'Washington',
		country => 'US'
	]);

	$loc->state('DC');	# Not technically true!
	ok($loc->number() == 1600);
	ok($loc->as_string() eq '1600 Pennsylvania Ave NW, Washington, DC, US');
}
