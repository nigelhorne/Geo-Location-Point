#!perl -wT

use strict;
use warnings;
use Test::Most tests => 5;
use Test::NoWarnings;
use Test::Number::Delta;

BEGIN {
	use_ok('Geo::Location');
}

DISTANCE: {
	my $loc1 = new_ok('Geo::Location' => [
		lat => 51.34203083,
		long => 1.31609075,
		county => 'Kent',
		country => 'GB'
	]);
	my $loc2 = new_ok('Geo::Location' => [
		lat => 51.34015944,
		long => 1.31580976,
		county => 'Kent',
		country => 'GB'
	]);

	delta_within($loc1->distance($loc2)->yards(), 300, 100);
}
