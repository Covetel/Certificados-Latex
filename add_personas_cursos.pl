#!/usr/bin/env perl
use strict;
use warnings;
use lib 'lib/';
use 5.010;
use Certificados::Latex::Schema;
use utf8;

my $dbi_dsn = "dbi:SQLite:dbname=db/certificados.db";
my $schema = Certificados::Latex::Schema->connect($dbi_dsn);

# Agrego las personas de la lista de personas al curso Perl Básico.

# Agrego a todas las personas a los cursos.
foreach my $curso ( $schema->resultset('Curso')->all() ){
    foreach my $persona ( $schema->resultset('Persona')->all() ){
        $schema->resultset('CursoParticipante')->create({
            id_persona => $persona->id, 
            id_curso => $curso->id, 
        });
    }
}
