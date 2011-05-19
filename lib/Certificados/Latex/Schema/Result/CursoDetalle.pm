package Certificados::Latex::Schema::Result::CursoDetalle;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

Certificados::Latex::Schema::Result::CursoDetalle

=cut

__PACKAGE__->table("curso_detalle");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 id_curso

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 contenido

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "id_curso",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "contenido",
  { data_type => "text", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 id_curso

Type: belongs_to

Related object: L<Certificados::Latex::Schema::Result::Curso>

=cut

__PACKAGE__->belongs_to(
  "id_curso",
  "Certificados::Latex::Schema::Result::Curso",
  { id => "id_curso" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-05-17 19:26:34
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zdxhQ+6zjRAsQju5QWPP4A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
