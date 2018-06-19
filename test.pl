#!/usr/bin/env perl

use strict;
use warnings;

use OpenAPI::Client;
my $client = OpenAPI::Client->new("v2.json");

use Data::Dumper;
print Dumper($client);

$client->base_url->host('localhost');
$client->base_url->port(8001);

my $operationId = 'getCoreV1APIResources';
my $promise = $client->call_p($operationId);
$promise->then(sub {
  my ($tx) = @_;
  print Dumper($tx);
  print Dumper($tx->res->body);
}, sub {
  print "Error: " . Dumper(@_);
});

$promise->wait;

