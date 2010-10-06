package Crypt::OpenSSL::VerifyX509;

use strict;
use warnings;

require 5.008_001;

our $VERSION = '0.01_01';

=head1 NAME

Crypt::OpenSSL::VerifyX509 - simple certificate verification

=head1 SYNOPSIS

=cut

use Crypt::OpenSSL::X509;

BOOT_XS: {
  require DynaLoader;

  # DynaLoader calls dl_load_flags as a static method.
  *dl_load_flags = DynaLoader->can('dl_load_flags');

  do {__PACKAGE__->can('bootstrap') || \&DynaLoader::bootstrap}->(__PACKAGE__, $VERSION);
}

END {
  __PACKAGE__->__X509_cleanup;
}

1;
