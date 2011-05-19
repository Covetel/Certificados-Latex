package Certificados::Latex::Schema::ResultSet::CursoParticipante;

use strict;
use warnings;
use base 'DBIx::Class::ResultSet';
use 5.010;
use utf8;
use Template::Latex;

sub dictar_curso {
    my ($self, $desde, $hasta, $id_curso, @participantes) = @_;

    foreach (@participantes){
        # busco por las cedulas y agrego al curso. 
        $self->create({
            desde => $desde, 
            hasta => $hasta, 
            id_curso => $id_curso, 
            id_persona => $_, 
        });
    }
}

sub certificados {
    my ($self, $curso) = @_;
    my @certificados = $self->search({id_curso => $curso});

    my $vars = {
        certificados => \@certificados, 
    };

    my $nombre = $certificados[0]->id_curso->nombre;

    my $tt = Template::Latex->new;
    
    $tt->process('src/template.tt2', $vars, "$nombre.pdf", binmode => 1)
    || die $tt->error();

}

1;
