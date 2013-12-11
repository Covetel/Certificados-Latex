#!/bin/bash
dbicdump -o dump_directory=./lib -o components='["InflateColumn::DateTime"]' -o preserve_case=1 Certificados::Latex::Schema dbi:SQLite:../db/certificados.db
