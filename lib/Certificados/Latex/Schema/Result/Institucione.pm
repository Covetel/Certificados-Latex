package Certificados::Latex::Schema::Result::Institucione;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

Certificados::Latex::Schema::Result::Institucione

=cut

__PACKAGE__->table("instituciones");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "nombre",
  { data_type => "varchar", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 instituciones_personas

Type: has_many

Related object: L<Certificados::Latex::Schema::Result::InstitucionesPersona>

=cut

__PACKAGE__->has_many(
  "instituciones_personas",
  "Certificados::Latex::Schema::Result::InstitucionesPersona",
  { "foreign.id_institucion" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-05-17 19:26:34
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9fx7WDJAGuF8yLrUYwv4Kw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
