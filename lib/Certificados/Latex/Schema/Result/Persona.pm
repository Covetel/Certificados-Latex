package Certificados::Latex::Schema::Result::Persona;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

Certificados::Latex::Schema::Result::Persona

=cut

__PACKAGE__->table("persona");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1

=head2 apellido

  data_type: 'varchar'
  is_nullable: 1

=head2 cedula

  data_type: 'integer'
  is_nullable: 0

=head2 correo

  data_type: 'varchar'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "nombre",
  { data_type => "varchar", is_nullable => 1 },
  "apellido",
  { data_type => "varchar", is_nullable => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 0 },
  "correo",
  { data_type => "varchar", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("cedula_unique", ["cedula"]);

=head1 RELATIONS

=head2 instituciones_personas

Type: has_many

Related object: L<Certificados::Latex::Schema::Result::InstitucionesPersona>

=cut

__PACKAGE__->has_many(
  "instituciones_personas",
  "Certificados::Latex::Schema::Result::InstitucionesPersona",
  { "foreign.id_persona" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 curso_participantes

Type: has_many

Related object: L<Certificados::Latex::Schema::Result::CursoParticipante>

=cut

__PACKAGE__->has_many(
  "curso_participantes",
  "Certificados::Latex::Schema::Result::CursoParticipante",
  { "foreign.id_persona" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-05-17 19:32:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8F07i1MHC05bcXpMzjdpzA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
