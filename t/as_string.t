#!perl -wT

use strict;
use warnings;
use Test::Most tests => 11;
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

	$loc = new_ok('Geo::Location::Point' => [
		# MaxMind
		'Region' => 'IN',
		'City' => 'new brunswick',
		'Longitude' => '-86.5227778',
		'Country' => 'us',
		'Latitude' => '39.9441667',
		'Population' => '',
		'AccentCity' => 'New Brunswick'
	]);

	ok($loc->as_string() =~ /New Brunswick/);
	ok($loc =~ /New Brunswick/);

	$loc = new_ok('Geo::Location::Point' => [
		'Region' => 'Kent',
		'City' => 'Minster',
		'Longitude' => 51.34,
		'Country' => 'gb',
		'Latitude' => 1.32,
		'AccentCity' => 'Minster',
	]);

	ok($loc->Country() eq 'gb');
	like($loc->as_string(), qr/, GB/, 'GB is put in upper case in as_string');
}
