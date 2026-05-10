# Generated from Makefile.PL using makefilepl2cpanfile

requires 'perl', '5.10.0';

requires 'Carp';
requires 'ExtUtils::MakeMaker', '6.64';
requires 'GIS::Distance';
requires 'Params::Get', '0.13';
requires 'Scalar::Util';

on 'test' => sub {
	requires 'Test::Carp';
	requires 'Test::Compile';
	requires 'Test::DescribeMe';
	requires 'Test::Most';
	requires 'Test::Needs';
	requires 'Test::NoWarnings';
	requires 'Test::Number::Delta';
};

on 'develop' => sub {
	requires 'Devel::Cover';
	requires 'Perl::Critic';
	requires 'Test::Pod';
	requires 'Test::Pod::Coverage';
};
