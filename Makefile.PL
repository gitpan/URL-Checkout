use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'URL::Checkout',
    AUTHOR              => q{Juergen Weigert <jnw@cpan.org>},
    VERSION_FROM        => 'Checkout.pm',
    ABSTRACT_FROM       => 'Checkout.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'URL-Checkout-*' },
);
