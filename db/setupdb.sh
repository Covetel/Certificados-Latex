rm -f certificados.db
sqlite3 certificados.db < certificados.sql 
sqlite3 certificados.db < cursos.sql 
sqlite3 certificados.db < personas.sql 
sqlite3 certificados.db < instituciones.sql
