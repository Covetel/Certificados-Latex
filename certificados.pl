#!/usr/bin/env perl
use strict;
use warnings;
use lib 'lib/';
use Certificados::Latex::Schema;

my $dbi_dsn = "dbi:SQLite:dbname=db/certificados.db";
my $schema = Certificados::Latex::Schema->connect($dbi_dsn);

$schema->resultset('CursoParticipante')->certificados(1);
