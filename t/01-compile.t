#!perl

use strict;
use warnings FATAL => 'all';

use English qw( -no_match_vars );    # Avoids regex performance penalty
local $OUTPUT_AUTOFLUSH = 1;

use Test::More tests => 43;

BEGIN {
	use_ok('App::Midgen');
	use_ok('App::Midgen::Role::Options');
	use_ok('App::Midgen::Role::Attributes');
	use_ok('App::Midgen::Role::AttributesX');
	use_ok('App::Midgen::Role::InDistribution');
	use_ok('App::Midgen::Role::TestRequires');
	use_ok('App::Midgen::Role::UseOk');
	use_ok('App::Midgen::Role::Eval');
	use_ok('App::Midgen::Role::FindMinVersion');
	use_ok('App::Midgen::Role::Output');
	use_ok('App::Midgen::Role::Output::CPANfile');
	use_ok('App::Midgen::Role::Output::Dist');
	use_ok('App::Midgen::Role::Output::EUMM');
	use_ok('App::Midgen::Role::Output::Infile');
	use_ok('App::Midgen::Role::Output::MB');
	use_ok('App::Midgen::Role::Output::METAjson');
	use_ok('App::Midgen::Role::Output::MIdsl');
	use_ok('App::Midgen::Role::Output::MI');

	use_ok('Carp',                 '1.32');
	use_ok('Cwd',                  '3.4');
	use_ok('Data::Printer',        '0.35');
	use_ok('File::Slurp::Tiny',    '0.003');
	use_ok('File::Spec',           '3.4');
	use_ok('Getopt::Long',         '2.42');
	use_ok('JSON::Tiny',           '0.4');
	use_ok('List::MoreUtils',      '0.33');
	use_ok('MetaCPAN::API',        '0.43');
	use_ok('Module::CoreList',     '3.04');
	use_ok('Moo',                  '1.004002');
	use_ok('PPI',                  '1.215');
	use_ok('Perl::MinimumVersion', '1.32');
	use_ok('Perl::PrereqScanner',  '1.019');
	use_ok('Pod::Usage',           '1.63');
	use_ok('Scalar::Util',         '1.38');
	use_ok('Term::ANSIColor',      '4.02');
	use_ok('Time::Stamp',          '1.3');
	use_ok('Try::Tiny',            '0.19');
	use_ok('Type::Tiny',           '0.038');
	use_ok('constant',             '1.27');

#  use_ok('lib',                  '0.63');
	use_ok('version', '0.9908');

	use_ok('Test::CheckDeps', '0.01');
	use_ok('Test::More',      '1.001002');
	use_ok('Test::Requires',  '0.07');
}

diag("Testing App::Midgen v$App::Midgen::VERSION");

done_testing();

__END__
