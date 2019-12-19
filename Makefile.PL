use strict;
use warnings;
use ExtUtils::MakeMaker 6.64;	# 6.64 for TEST_REQUIRES

WriteMakefile(
    NAME		=> 'Geo::Location::Point',
    AUTHOR		=> q{Nigel Horne <njh@bandsman.co.uk>},
    VERSION_FROM	=> 'lib/Geo/Location/Point.pm',
    ABSTRACT_FROM       => 'lib/Geo/Location/Point.pm',
    ((defined($ExtUtils::MakeMaker::VERSION) &&
     ($ExtUtils::MakeMaker::VERSION >= 6.3002))
      ? ('LICENSE'=> 'GPL')
      : ()),
    PL_FILES	=> {},
	TEST_REQUIRES => {
		'Test::Most' => 0,
		'Test::NoWarnings' => 0,
	},
    PREREQ_PM => {
	'Encode' => 0,
	'JSON' => 0,
	'HTTP::Request' => 0,
	'LWP::UserAgent' => 0,
	'LWP::Protocol::https' => 0,
	'URI' => 0,
    },
    dist		=> { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean		=> { FILES => 'Geo-Location-Point-*' },
    META_MERGE		=> {
    	'meta-spec' => { version => 2 },
    	resources => {
    		repository => {
			type => 'git',
			url => 'git://github.com/nigelhorne/Geo-Location-Point.git',
			web => 'https://github.com/nigelhorne/Geo-Location-Point',
    		},
		bugtracker => {
			web => 'https://rt.cpan.org/Public/Dist/Display.html?Name=Geo-Location-Point',
			mailto => 'bug-Geo-Location-Point@rt.cpan.org'
		}
	},
    },
    MIN_PERL_VERSION	=> '5.6.2'	# Probably would work, but never tested on earlier versions than this
);
