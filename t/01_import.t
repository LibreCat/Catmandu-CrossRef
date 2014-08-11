use strict;
use warnings;
use Test::More;
use Test::Exception;
use YAML;
my $pkg;

BEGIN {
    $pkg = 'Catmandu::Importer::CrossRef';
    use_ok $pkg;
}

diag ("call importer");
my $imp = $pkg->new(doi => "10.1007/s00182-012-0331-0", 
	usr => 'vitali.peil@uni-bielefeld.de');
diag("importer each");
$imp->each(sub {
	print "###########################\n";
	print Dump $_[0];
	});

#print Dumper $imp->first;

done_testing;