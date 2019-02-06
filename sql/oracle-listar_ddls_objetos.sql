--Listar DDLs de objetos
SELECT DBMS_METADATA.GET_DDL(:objeto,:tablespace) FROM dual;
/* Sintaxe:
DBMS_METADATA.GET_DDL (
    object_type     IN VARCHAR2,
    name            IN VARCHAR2,
    schema          IN VARCHAR2 DEFAULT NULL,
    version         IN VARCHAR2 DEFAULT 'COMPATIBLE',
    model           IN VARCHAR2 DEFAULT 'ORACLE',
    transform       IN VARCHAR2 DEFAULT 'DDL'
)
RETURN CLOB;
*/


--Listar grants de users dados a uma objeto
SELECT DBMS_METADATA.GET_DEPENDENT_DDL('OBJECT_GRANT',:tabela, :schema) FROM DUAL;
/* Sintaxe:
DBMS_METADATA.GET_DEPENDENT_DDL (
    object_type         IN VARCHAR2,
    base_object_name    IN VARCHAR2,
    base_object_schema  IN VARCHAR2 DEFAULT NULL,
    version             IN VARCHAR2 DEFAULT 'COMPATIBLE',
    model               IN VARCHAR2 DEFAULT 'ORACLE',
    transform           IN VARCHAR2 DEFAULT 'DDL',
    object_count        IN NUMBER   DEFAULT 10000
)
RETURN CLOB;
*/


--Listar grants dados a uma user
SELECT DBMS_METADATA.GET_GRANTED_DDL('OBJECT_GRANT', :user) FROM DUAL;
/* Sintaxe:
DBMS_METADATA.GET_GRANTED_DDL (
    object_type     IN VARCHAR2,
    grantee         IN VARCHAR2 DEFAULT NULL,
    version         IN VARCHAR2 DEFAULT 'COMPATIBLE',
    model           IN VARCHAR2 DEFAULT 'ORACLE',
    transform       IN VARCHAR2 DEFAULT 'DDL',
    object_count    IN NUMBER   DEFAULT 10000
)
RETURN CLOB;
*/

/* Lista de objetos:
CLUSTER
CONSUMER GROUP
CONTEXT
DATABASE LINK
DESTINATION
DIMENSION
DIRECTORY
EDITION
EVALUATION CONTEXT
FUNCTION
INDEX
INDEX PARTITION
INDEXTYPE
JAVA CLASS
JAVA DATA
JAVA RESOURCE
JAVA SOURCE
JOB
JOB CLASS
LIBRARY
LOB
LOB PARTITION
MATERIALIZED VIEW
OPERATOR
PACKAGE
PACKAGE BODY
PROCEDURE
PROGRAM
QUEUE
RESOURCE PLAN
RULE
RULE SET
SCHEDULE
SCHEDULER GROUP
SEQUENCE
SYNONYM
TABLE
TABLE PARTITION
TABLE SUBPARTITION
TRIGGER
TYPE
TYPE BODY
UNDEFINED
VIEW
WINDOW
XML SCHEMA
*/

--Referências: https://docs.oracle.com/database/121/ARPLS/d_metada.htm#ARPLS026
