INSERT INTO instituciones VALUES (null,'MPPEE');
INSERT INTO instituciones VALUES (null,'CANTV');

INSERT INTO instituciones_personas SELECT null,id,1 FROM persona;
