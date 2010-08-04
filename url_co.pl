#! /usr/bin/perl -w
#
# url_checkout.pl -- demo script for URL::Checkout
#
# 2010, jnw@cpan.org
# This script is in the public domain.

use URL::Checkout;

my $url = shift or die "Usage: $0 [meth:]URL [destdir]\n";
my $f = URL::Checkout->new(dest => shift, verbose => 1);
$f->method($1) if $url =~ s{^(\w+):(.*?://)}{$2};

$f->get($url) or die "get failed.\n";
print $f->dest() . "\n";

