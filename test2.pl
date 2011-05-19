#!/usr/bin/env perl
use strict;
use warnings;
use lib 'lib/';
use 5.010;
use Certificados::Latex::Schema;
use utf8;

my $dbi_dsn = "dbi:SQLite:dbname=db/certificados.db";
my $schema = Certificados::Latex::Schema->connect($dbi_dsn);

# Busco a las personas, que en este caso son todas 
my @personas = $schema->resultset('Persona')->all();

$schema->resultset('CursoParticipante')->certificados(1);
