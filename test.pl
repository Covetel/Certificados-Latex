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

$schema->resultset('CursoParticipante')->dictar_curso(
    "24 de Enero", 
    "24 de Febrero de 2011",
    1, 
    @personas_id
);

$schema->resultset('CursoParticipante')->dictar_curso(
    "28 de Febrero", 
    "13 de Marzo de 2011",
    2, 
    @personas_id
);

$schema->resultset('CursoParticipante')->dictar_curso(
    "04 de Abril", 
    "15 de Abril de 2011",
    3, 
    @personas_id
);
