-- Generated by Oracle SQL Developer Data Modeler 4.1.3.901
--   at:        2016-09-08 22:04:48 CEST
--   site:      Oracle Database 10g
--   type:      Oracle Database 10g




CREATE USER perapp IDENTIFIED BY ACCOUNT UNLOCK ;

CREATE USER perrapp IDENTIFIED BY ACCOUNT UNLOCK ;

CREATE TABLE perrapp.activity
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    content   VARCHAR2 (255) NOT NULL ,
    author_id INTEGER NOT NULL ,
    team_id   INTEGER NOT NULL
  ) ;
ALTER TABLE perrapp.activity ADD CONSTRAINT activity_PK PRIMARY KEY ( id ) ;


CREATE TABLE perrapp.activity_journal
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    content   VARCHAR2 (255) NOT NULL ,
    author_id INTEGER NOT NULL ,
    team_id   INTEGER NOT NULL
  ) ;
ALTER TABLE perrapp.activity_journal ADD CONSTRAINT activity_journal_PK PRIMARY KEY ( id ) ;


CREATE TABLE perrapp.city
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    country   INTEGER NOT NULL ,
    region    INTEGER NOT NULL ,
    city_name VARCHAR2 (255) NOT NULL
  ) ;
CREATE INDEX perrapp.ix_city_001 ON perrapp.city
  ( city_name ASC
  ) ;
ALTER TABLE perrapp.city ADD CONSTRAINT city_PK PRIMARY KEY ( id ) ;


CREATE TABLE perrapp.country
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    country_code  CHAR (5) NOT NULL ,
    country_name  VARCHAR2 (255) NOT NULL ,
    has_division  SMALLINT NOT NULL ,
    division_name VARCHAR2 (255)
  ) ;
CREATE UNIQUE INDEX perrapp.ix_country_001 ON perrapp.country
  (
    country_code ASC
  )
  ;
  CREATE INDEX perrapp.ix_country_002 ON perrapp.country
    ( country_name ASC
    ) ;
ALTER TABLE perrapp.country ADD CONSTRAINT country_PK PRIMARY KEY ( id ) ;


CREATE TABLE perrapp.devicetype
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    description VARCHAR2 (255)
  ) ;
ALTER TABLE perrapp.devicetype ADD CONSTRAINT devicetype_PK PRIMARY KEY ( id ) ;


CREATE TABLE perrapp.event
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    evt_start UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    evt_end UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    description VARCHAR2 (255) NOT NULL ,
    team_id     INTEGER NOT NULL
  ) ;
ALTER TABLE perrapp.event ADD CONSTRAINT event_PK PRIMARY KEY ( id ) ;


CREATE TABLE perrapp.image
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    member_id INTEGER NOT NULL ,
    team_id   INTEGER NOT NULL ,
    is_private UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    is_team_only UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    is_public UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    image_content BLOB NOT NULL ,
    image_stamp UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    image_name VARCHAR2 (255) ,
    x_size     INTEGER ,
    y_size     INTEGER
  ) ;
ALTER TABLE perrapp.image ADD CONSTRAINT image_PK PRIMARY KEY ( id ) ;


CREATE TABLE perrapp.key
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    devicetype  VARCHAR2 (255) NOT NULL ,
    mac_address VARCHAR2 (255) ,
    device_name VARCHAR2 (255) ,
    device_type INTEGER ,
    member_id   INTEGER
  ) ;
ALTER TABLE perrapp.key ADD CONSTRAINT key_PK PRIMARY KEY ( id ) ;


CREATE TABLE perrapp.location
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    location_name VARCHAR2 (255) NOT NULL
  ) ;
CREATE INDEX perrapp.ix_location_001 ON perrapp.location
  (
    location_name ASC
  ) ;
ALTER TABLE perrapp.location ADD CONSTRAINT location_PK PRIMARY KEY ( id ) ;


CREATE TABLE perrapp.member
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    email VARCHAR2 (255) NOT NULL
  ) ;
ALTER TABLE perrapp.member ADD CONSTRAINT member_PK PRIMARY KEY ( id ) ;


CREATE TABLE perrapp.message
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    sender   INTEGER NOT NULL ,
    receiver INTEGER NOT NULL ,
    send_stamp UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    received SMALLINT NOT NULL ,
    subject  VARCHAR2 (255) ,
    msg_body UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
  ) ;
ALTER TABLE perrapp.message ADD CONSTRAINT message_PK PRIMARY KEY ( id ) ;


CREATE TABLE perrapp.profile
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    member_id    INTEGER NOT NULL ,
    home_country INTEGER ,
    home_region  INTEGER ,
    home_city    INTEGER ,
    home_lat UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    home_long UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    home_tz      INTEGER ,
    curr_country INTEGER ,
    curr_region  INTEGER ,
    curr_city    INTEGER ,
    curr_lat UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    curr_tz       INTEGER ,
    display_name  VARCHAR2 (255) ,
    date_of_birth DATE ,
    first_name    VARCHAR2 (255) ,
    surname       VARCHAR2 (255)
  ) ;
ALTER TABLE perrapp.profile ADD CONSTRAINT profile_PK PRIMARY KEY ( id ) ;


CREATE TABLE perrapp.project
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    project_name  VARCHAR2 (255) NOT NULL ,
    project_owner INTEGER NOT NULL
  ) ;
CREATE INDEX perrapp.ix_project_001 ON perrapp.project
  ( project_name ASC
  ) ;
ALTER TABLE perrapp.project ADD CONSTRAINT project_PK PRIMARY KEY ( id ) ;


CREATE TABLE perrapp.project_member
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    project INTEGER NOT NULL ,
    member  INTEGER NOT NULL
  ) ;
ALTER TABLE perrapp.project_member ADD CONSTRAINT project_member_PK PRIMARY KEY ( id ) ;


CREATE TABLE perrapp.project_team
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    project INTEGER NOT NULL ,
    team    INTEGER NOT NULL
  ) ;
ALTER TABLE perrapp.project_team ADD CONSTRAINT project_team_PK PRIMARY KEY ( id ) ;


CREATE TABLE perrapp.region
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    country     INTEGER NOT NULL ,
    region_name VARCHAR2 (255) NOT NULL
  ) ;
CREATE INDEX perrapp.ix_region_001 ON perrapp.region
  ( region_name ASC
  ) ;
ALTER TABLE perrapp.region ADD CONSTRAINT region_PK PRIMARY KEY ( id ) ;


CREATE TABLE perrapp.task
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    project    INTEGER NOT NULL ,
    task_name  VARCHAR2 (255) NOT NULL ,
    task_owner INTEGER NOT NULL ,
    assignee   INTEGER NOT NULL ,
    assign_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    due_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    "comment" UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
  ) ;
ALTER TABLE perrapp.task ADD CONSTRAINT task_PK PRIMARY KEY ( id ) ;



CREATE TABLE perrapp.team
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    team_name  VARCHAR2 (255) NOT NULL ,
    team_owner INTEGER NOT NULL ,
    team_url   VARCHAR2 (255) ,
    address    VARCHAR2 (255) NOT NULL ,
    status     SMALLINT NOT NULL ,
    device_lat UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    device_long UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
  ) ;
CREATE INDEX perrapp.ix_team_001 ON perrapp.team
  ( team_name ASC
  ) ;
ALTER TABLE perrapp.team ADD CONSTRAINT team_PK PRIMARY KEY ( id ) ;


CREATE TABLE perrapp.team_member
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    team   INTEGER NOT NULL ,
    member INTEGER NOT NULL
  ) ;
ALTER TABLE perrapp.team_member ADD CONSTRAINT team_member_PK PRIMARY KEY ( id ) ;


CREATE TABLE perrapp.timezone
  (
    id INTEGER NOT NULL ,
    create_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    create_id INTEGER ,
    change_date UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    change_id INTEGER ,
    active UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL ,
    timezone  VARCHAR2 (255) NOT NULL ,
    tz_offset INTEGER DEFAULT 0 ,
    has_dst UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    dst_start UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    dst_end UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    dst_offset INTEGER
  ) ;
ALTER TABLE perrapp.timezone ADD CONSTRAINT timezone_PK PRIMARY KEY ( id ) ;


ALTER TABLE perrapp.activity ADD CONSTRAINT fk_activity_001 FOREIGN KEY ( author_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.activity ADD CONSTRAINT fk_activity_002 FOREIGN KEY ( team_id ) REFERENCES perrapp.team ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.activity ADD CONSTRAINT fk_activity_003 FOREIGN KEY ( create_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.activity ADD CONSTRAINT fk_activity_004 FOREIGN KEY ( change_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.city ADD CONSTRAINT fk_city_001 FOREIGN KEY ( country ) REFERENCES perrapp.country ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.city ADD CONSTRAINT fk_city_002 FOREIGN KEY ( region ) REFERENCES perrapp.region ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.city ADD CONSTRAINT fk_city_003 FOREIGN KEY ( create_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.city ADD CONSTRAINT fk_city_004 FOREIGN KEY ( change_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.country ADD CONSTRAINT fk_country_001 FOREIGN KEY ( create_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.country ADD CONSTRAINT fk_country_002 FOREIGN KEY ( change_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.devicetype ADD CONSTRAINT fk_devicetype_001 FOREIGN KEY ( create_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.devicetype ADD CONSTRAINT fk_devicetype_002 FOREIGN KEY ( change_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.event ADD CONSTRAINT fk_event_001 FOREIGN KEY ( create_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.event ADD CONSTRAINT fk_event_002 FOREIGN KEY ( change_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.event ADD CONSTRAINT fk_event_003 FOREIGN KEY ( team_id ) REFERENCES perrapp.team ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.image ADD CONSTRAINT fk_image_001 FOREIGN KEY ( create_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.image ADD CONSTRAINT fk_image_002 FOREIGN KEY ( change_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.image ADD CONSTRAINT fk_image_003 FOREIGN KEY ( member_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.image ADD CONSTRAINT fk_image_004 FOREIGN KEY ( team_id ) REFERENCES perrapp.team ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.key ADD CONSTRAINT fk_key_001 FOREIGN KEY ( create_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.key ADD CONSTRAINT fk_key_002 FOREIGN KEY ( change_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.key ADD CONSTRAINT fk_key_003 FOREIGN KEY ( member_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.key ADD CONSTRAINT fk_key_004 FOREIGN KEY ( device_type ) REFERENCES perrapp.devicetype ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.location ADD CONSTRAINT fk_location_001 FOREIGN KEY ( create_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.location ADD CONSTRAINT fk_location_002 FOREIGN KEY ( change_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.message ADD CONSTRAINT fk_message_001 FOREIGN KEY ( create_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.message ADD CONSTRAINT fk_message_002 FOREIGN KEY ( change_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.message ADD CONSTRAINT fk_message_003 FOREIGN KEY ( sender ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.message ADD CONSTRAINT fk_message_004 FOREIGN KEY ( receiver ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.profile ADD CONSTRAINT fk_profile_001 FOREIGN KEY ( create_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.profile ADD CONSTRAINT fk_profile_002 FOREIGN KEY ( change_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.profile ADD CONSTRAINT fk_profile_003 FOREIGN KEY ( member_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.profile ADD CONSTRAINT fk_profile_004 FOREIGN KEY ( home_tz ) REFERENCES perrapp.timezone ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.profile ADD CONSTRAINT fk_profile_005 FOREIGN KEY ( curr_tz ) REFERENCES perrapp.timezone ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.project ADD CONSTRAINT fk_project_001 FOREIGN KEY ( create_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.project ADD CONSTRAINT fk_project_002 FOREIGN KEY ( change_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.project ADD CONSTRAINT fk_project_003 FOREIGN KEY ( project_owner ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

-- Error - Foreign Key fk_project_004 has no columns

ALTER TABLE perrapp.project_member ADD CONSTRAINT fk_project_member_001 FOREIGN KEY ( create_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.project_member ADD CONSTRAINT fk_project_member_002 FOREIGN KEY ( change_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.project_member ADD CONSTRAINT fk_project_member_003 FOREIGN KEY ( project ) REFERENCES perrapp.project ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.project_member ADD CONSTRAINT fk_project_member_004 FOREIGN KEY ( member ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.project_team ADD CONSTRAINT fk_project_team_001 FOREIGN KEY ( create_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.project_team ADD CONSTRAINT fk_project_team_002 FOREIGN KEY ( change_id ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.project_team ADD CONSTRAINT fk_project_team_003 FOREIGN KEY ( project ) REFERENCES perrapp.project ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.project_team ADD CONSTRAINT fk_project_team_004 FOREIGN KEY ( team ) REFERENCES perrapp.team ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.task ADD CONSTRAINT fk_task_001 FOREIGN KEY ( project ) REFERENCES perrapp.project ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.task ADD CONSTRAINT fk_task_002 FOREIGN KEY ( task_owner ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.task ADD CONSTRAINT fk_task_003 FOREIGN KEY ( assignee ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.team ADD CONSTRAINT fk_team_001 FOREIGN KEY ( team_owner ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.team_member ADD CONSTRAINT fk_team_member_001 FOREIGN KEY ( team ) REFERENCES perrapp.team ( id ) NOT DEFERRABLE ;

ALTER TABLE perrapp.team_member ADD CONSTRAINT fk_team_member_002 FOREIGN KEY ( member ) REFERENCES perrapp.member ( id ) NOT DEFERRABLE ;

-- Error - Foreign Key fk_timezone_001 has no columns

-- Error - Foreign Key fk_timezone_002 has no columns


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            20
-- CREATE INDEX                             7
-- ALTER TABLE                             71
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              2
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                  82
-- WARNINGS                                 0
