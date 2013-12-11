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
my @personas_id = map {$_->id} @personas;

# Agrego a todas las personas a los cursos.

#$schema->resultset('CursoParticipante')->dictar_curso(
#    "12", 
#    "16 de Agosto de 2013",
#    5, 
#    @personas_id
#);

$schema->resultset('CursoParticipante')->dictar_curso(
    "18", 
    "22 de Noviembre de 2013",
    6, 
    @personas_id
);

#$schema->resultset('CursoParticipante')->certificados(5);
$schema->resultset('CursoParticipante')->certificados(6);
