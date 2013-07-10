package pf::cmd::roles::show_help;
=head1 NAME

pf::cmd::roles::show_help add documentation

=cut

=head1 DESCRIPTION

pf::cmd::roles::show_help

=cut

use strict;
use warnings;
use Pod::Usage;
use Pod::Find qw(pod_where);
use base qw(Exporter);

BEGIN {
    $Pod::Usage::Formatter = 'Pod::Text::Termcap';
}


our @EXPORT = qw(showHelp);

sub showHelp {
    my ($self,$package) = @_;
    $package ||= ref($self) || $self;
    pod2usage( -input => pod_where({-inc => 1}, $package) );
}


=head1 AUTHOR

Inverse inc. <info@inverse.ca>


=head1 COPYRIGHT

Copyright (C) 2005-2015 Inverse inc.

=head1 LICENSE

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
USA.

=cut

1;

