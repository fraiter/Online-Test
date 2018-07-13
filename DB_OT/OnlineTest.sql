/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     6/26/2018 9:15:34 AM                         */
/*==============================================================*/



if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ANSWER') and o.name = 'FK_ANSWER_RELATIONS_EXAM_TAK')
alter table ANSWER
   drop constraint FK_ANSWER_RELATIONS_EXAM_TAK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ANSWER') and o.name = 'FK_ANSWER_RELATIONS_BANK')
alter table ANSWER
   drop constraint FK_ANSWER_RELATIONS_BANK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BANK') and o.name = 'FK_BANK_RELATIONS_PART')
alter table BANK
   drop constraint FK_BANK_RELATIONS_PART
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BANK') and o.name = 'FK_BANK_RELATIONS_BANK')
alter table BANK
   drop constraint FK_BANK_RELATIONS_BANK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BANK') and o.name = 'FK_BANK_RELATIONS_ANSWER_T')
alter table BANK
   drop constraint FK_BANK_RELATIONS_ANSWER_T
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EXAM_TAKING') and o.name = 'FK_EXAM_TAK_RELATIONS_GROUP_TE')
alter table EXAM_TAKING
   drop constraint FK_EXAM_TAK_RELATIONS_GROUP_TE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EXAM_TAKING') and o.name = 'FK_EXAM_TAK_RELATIONS_TEST')
alter table EXAM_TAKING
   drop constraint FK_EXAM_TAK_RELATIONS_TEST
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EXAM_TAKING') and o.name = 'FK_EXAM_TAK_RELATIONS_EXAM_TAK')
alter table EXAM_TAKING
   drop constraint FK_EXAM_TAK_RELATIONS_EXAM_TAK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GROUP_TEST') and o.name = 'FK_GROUP_TE_RELATIONS_SUBJECT')
alter table GROUP_TEST
   drop constraint FK_GROUP_TE_RELATIONS_SUBJECT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('IMAGE_BANK') and o.name = 'FK_IMAGE_BA_RELATIONS_PART')
alter table IMAGE_BANK
   drop constraint FK_IMAGE_BA_RELATIONS_PART
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OPTION_CHOICE') and o.name = 'FK_OPTION_C_RELATIONS_BANK')
alter table OPTION_CHOICE
   drop constraint FK_OPTION_C_RELATIONS_BANK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PART') and o.name = 'FK_PART_RELATIONS_SUBJECT')
alter table PART
   drop constraint FK_PART_RELATIONS_SUBJECT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SUBJECT') and o.name = 'FK_SUBJECT_RELATIONS_SUBJECT')
alter table SUBJECT
   drop constraint FK_SUBJECT_RELATIONS_SUBJECT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TEST') and o.name = 'FK_TEST_ID_TEACHE_USER')
alter table TEST
   drop constraint FK_TEST_ID_TEACHE_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TEST') and o.name = 'FK_TEST_RELATIONS_TEST_TYP')
alter table TEST
   drop constraint FK_TEST_RELATIONS_TEST_TYP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TEST') and o.name = 'FK_TEST_RELATIONS_SUBJECT')
alter table TEST
   drop constraint FK_TEST_RELATIONS_SUBJECT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TEST_DETAIL') and o.name = 'FK_TEST_DET_RELATIONS_TEST_DET')
alter table TEST_DETAIL
   drop constraint FK_TEST_DET_RELATIONS_TEST_DET
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TEST_DETAIL') and o.name = 'FK_TEST_DET_RELATIONS_TEST')
alter table TEST_DETAIL
   drop constraint FK_TEST_DET_RELATIONS_TEST
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ANSWER')
            and   name  = 'RELATIONSHIP_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index ANSWER.RELATIONSHIP_7_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ANSWER')
            and   name  = 'RELATIONSHIP_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index ANSWER.RELATIONSHIP_6_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ANSWER')
            and   type = 'U')
   drop table ANSWER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ANSWER_TYPE')
            and   type = 'U')
   drop table ANSWER_TYPE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BANK')
            and   name  = 'RELATIONSHIP_19_FK'
            and   indid > 0
            and   indid < 255)
   drop index BANK.RELATIONSHIP_19_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BANK')
            and   name  = 'RELATIONSHIP_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index BANK.RELATIONSHIP_10_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BANK')
            and   name  = 'RELATIONSHIP_9_FK'
            and   indid > 0
            and   indid < 255)
   drop index BANK.RELATIONSHIP_9_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BANK')
            and   type = 'U')
   drop table BANK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EXAM_TAKER')
            and   type = 'U')
   drop table EXAM_TAKER
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EXAM_TAKING')
            and   name  = 'RELATIONSHIP_16_FK'
            and   indid > 0
            and   indid < 255)
   drop index EXAM_TAKING.RELATIONSHIP_16_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EXAM_TAKING')
            and   name  = 'RELATIONSHIP_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index EXAM_TAKING.RELATIONSHIP_15_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EXAM_TAKING')
            and   name  = 'RELATIONSHIP_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index EXAM_TAKING.RELATIONSHIP_5_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EXAM_TAKING')
            and   type = 'U')
   drop table EXAM_TAKING
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GROUP_TEST')
            and   name  = 'RELATIONSHIP_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index GROUP_TEST.RELATIONSHIP_3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GROUP_TEST')
            and   type = 'U')
   drop table GROUP_TEST
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('IMAGE_BANK')
            and   name  = 'RELATIONSHIP_17_FK'
            and   indid > 0
            and   indid < 255)
   drop index IMAGE_BANK.RELATIONSHIP_17_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('IMAGE_BANK')
            and   type = 'U')
   drop table IMAGE_BANK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('OPTION_CHOICE')
            and   name  = 'RELATIONSHIP_20_FK'
            and   indid > 0
            and   indid < 255)
   drop index OPTION_CHOICE.RELATIONSHIP_20_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('OPTION_CHOICE')
            and   type = 'U')
   drop table OPTION_CHOICE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PART')
            and   name  = 'RELATIONSHIP_21_FK'
            and   indid > 0
            and   indid < 255)
   drop index PART.RELATIONSHIP_21_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PART')
            and   type = 'U')
   drop table PART
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SUBJECT')
            and   name  = 'RELATIONSHIP_18_FK'
            and   indid > 0
            and   indid < 255)
   drop index SUBJECT.RELATIONSHIP_18_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SUBJECT')
            and   type = 'U')
   drop table SUBJECT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TEST')
            and   name  = 'RELATIONSHIP_14_FK'
            and   indid > 0
            and   indid < 255)
   drop index TEST.RELATIONSHIP_14_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TEST')
            and   name  = 'RELATIONSHIP_13_FK'
            and   indid > 0
            and   indid < 255)
   drop index TEST.RELATIONSHIP_13_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TEST')
            and   name  = 'ID_TEACHER_FK'
            and   indid > 0
            and   indid < 255)
   drop index TEST.ID_TEACHER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TEST')
            and   type = 'U')
   drop table TEST
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TEST_DETAIL')
            and   name  = 'RELATIONSHIP_12_FK'
            and   indid > 0
            and   indid < 255)
   drop index TEST_DETAIL.RELATIONSHIP_12_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TEST_DETAIL')
            and   name  = 'RELATIONSHIP_11_FK'
            and   indid > 0
            and   indid < 255)
   drop index TEST_DETAIL.RELATIONSHIP_11_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TEST_DETAIL')
            and   type = 'U')
   drop table TEST_DETAIL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TEST_TYPE')
            and   type = 'U')
   drop table TEST_TYPE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"USER"')
            and   type = 'U')
   drop table "USER"
go

/*==============================================================*/
/* Table: ANSWER                                                */
/*==============================================================*/
create table ANSWER (
   ANS_ID               bigint               not null,
   BANK_ID              bigint               not null,
   EX_TAKING_ID         bigint               not null,
   ANS_QUES_ID          bigint               null,
   ANS_CONTENT          varchar(100)         null,
   ANS_SCORE            float                null,
   ANS_ORDER            int                  null,
   ANS_OPT_ID           varchar(100)         null,
   constraint PK_ANSWER primary key nonclustered (ANS_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_6_FK on ANSWER (
EX_TAKING_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_7_FK on ANSWER (
BANK_ID ASC
)
go

/*==============================================================*/
/* Table: ANSWER_TYPE                                           */
/*==============================================================*/
create table ANSWER_TYPE (
   ANS_TYPE_ID          int                  not null,
   ANS_TYPE_CODE        char(10)             not null,
   ANS_TYPE_NAME        varchar(50)          null,
   ANS_TYPE_ORDER       int                  null,
   ANS_TYPE_SAMPLE      text                 null,
   constraint PK_ANSWER_TYPE primary key nonclustered (ANS_TYPE_ID),
   constraint AK_ANS_TYPE_CODE_ANSWER_T unique (ANS_TYPE_CODE)
)
go

/*==============================================================*/
/* Table: BANK                                                  */
/*==============================================================*/
create table BANK (
   BANK_ID              bigint               not null,
   BAN_BANK_ID          bigint               null,
   ANS_TYPE_ID          int                  not null,
   PAR_ID               int                  null,
   BANK_CONTENT         text                 null,
   ANS_SHUFFLE          bit                  null,
   BANK_SCORE           float                null,
   BANK_ACTIVE          bit                  null,
   BANK_SHOWALL         bit                  null,
   BANK_OPTCOLUMN       tinyint              null,
   BANK_LEVEL           tinyint              null,
   BANK_MEDIA           char(50)             null,
   BANK_REFERENCE       varchar(50)          null,
   BANK_ORDER           int                  null,
   constraint PK_BANK primary key nonclustered (BANK_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_9_FK on BANK (
ANS_TYPE_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_10_FK on BANK (
PAR_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_19_FK on BANK (
BAN_BANK_ID ASC
)
go

/*==============================================================*/
/* Table: EXAM_TAKER                                            */
/*==============================================================*/
create table EXAM_TAKER (
   EX_TAKER_ID          bigint               not null,
   EX_TAKER_CODE        varchar(20)          null,
   EX_TAKER_NAME        nvarchar(50)          null,
   EX_TAKER_GENDER      bit                  null,
   EX_TAKER_ADDRESS     varchar(200)         null,
   EX_TAKER_EMAIL       varchar(50)          null,
   EX_TAKER_PHONE       varchar(50)          null,
   EX_TAKER_BIRTHDAY    datetime             null,
   constraint PK_EXAM_TAKER primary key nonclustered (EX_TAKER_ID),
   constraint AK_EX_TAKER_CODE_EXAM_TAK unique (EX_TAKER_CODE)
)
go

/*==============================================================*/
/* Table: EXAM_TAKING                                           */
/*==============================================================*/
create table EXAM_TAKING (
   EX_TAKING_ID         bigint               not null,
   TEST_ID              int                  not null,
   FRO_ID               int                  not null,
   EX_TAKER_ID          bigint               not null,
   EX_TAKING_ACCOUNT    varchar(50)          null,
   EX_TAKING_TIME       datetime             null,
   EX_TAKING_DATE       datetime             null,
   EX_TAKING_STATUS     tinyint              null,
   EX_TAKING_IP         varchar(20)          null,
   constraint PK_EXAM_TAKING primary key nonclustered (EX_TAKING_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_5_FK on EXAM_TAKING (
EX_TAKER_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_15_FK on EXAM_TAKING (
FRO_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_16_FK on EXAM_TAKING (
TEST_ID ASC
)
go

/*==============================================================*/
/* Table: GROUP_TEST                                            */
/*==============================================================*/
create table GROUP_TEST (
   FRO_ID               int                  not null,
   SUB_ID               bigint               not null,
   GRO_NAME             varchar(50)          null,
   GRO_PASSWORD         varchar(100)         null,
   GRO__CODE            varchar(20)          null,
   GRO_ENCPASSWORD      varchar(100)         null,
   GRO_REVPASSWORD      varchar(50)          null,
   GRO_REVENCPASSWORD   varchar(50)          null,
   GRO_ACTIVE           bit                  null,
   constraint PK_GROUP_TEST primary key nonclustered (FRO_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on GROUP_TEST (
SUB_ID ASC
)
go

/*==============================================================*/
/* Table: IMAGE_BANK                                            */
/*==============================================================*/
create table IMAGE_BANK (
   IMG_ID               bigint               not null,
   PAR_ID               int                  not null,
   IMG_URL              varchar(50)          null,
   constraint PK_IMAGE_BANK primary key nonclustered (IMG_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_17_FK on IMAGE_BANK (
PAR_ID ASC
)
go

/*==============================================================*/
/* Table: OPTION_CHOICE                                         */
/*==============================================================*/
create table OPTION_CHOICE (
   OPT_ID               bigint               not null,
   BANK_ID              bigint               not null,
   OPT_CONTENT          text                 null,
   OPT_CORRECT          bit                  null,
   OPT_ORDER            tinyint              null,
   constraint PK_OPTION_CHOICE primary key nonclustered (OPT_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_20_FK on OPTION_CHOICE (
BANK_ID ASC
)
go

/*==============================================================*/
/* Table: PART                                                  */
/*==============================================================*/
create table PART (
   PAR_ID               int                  not null,
   SUB_ID               bigint               not null,
   PAR_CODE             char(10)             not null,
   PAR_NAME             varchar(150)         null,
   PAR_DIRECTION        text                 null,
   PAR_DEFAULT_SCORE    float                null,
   PAR_DEFAULT_COLUMN   tinyint              null,
   PAR_DEFAULT_LEVEL    tinyint              null,
   PAR_ORDER            int                  null,
   PAR_NOTE             varchar(300)         null,
   constraint PK_PART primary key nonclustered (PAR_ID),
   constraint AK_QUE_CODE_PART unique (PAR_CODE)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_21_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_21_FK on PART (
SUB_ID ASC
)
go

/*==============================================================*/
/* Table: SUBJECT                                               */
/*==============================================================*/
create table SUBJECT (
   SUB_ID               bigint               not null,
   SUB_SUB_ID           bigint               null,
   SUB_CODE             varchar(20)          not null,
   SUB_NAME             varchar(100)         null,
   constraint PK_SUBJECT primary key nonclustered (SUB_ID),
   constraint AK_SUB_CODE_SUBJECT unique (SUB_CODE)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_18_FK on SUBJECT (
SUB_SUB_ID ASC
)
go

/*==============================================================*/
/* Table: TEST                                                  */
/*==============================================================*/
create table TEST (
   TEST_ID              int                  not null,
   SUB_ID               bigint               not null,
   USER_ID              int                  not null,
   TES_TYPE_ID          int                  not null,
   TEST_TITLE           varchar(50)          null,
   TEST_DATE            datetime             null,
   TEST_DURATION        bigint               null,
   TEST_SHUFFLE         bit                  null,
   TEST_FRAME           bit                  null,
   TEST_MEDIATYPE       tinyint              null,
   TEST_ACTIVE          bit                  null,
   TEST_PASSWORD        varchar(50)          null,
   TEST_ENCPASSWORD     varchar(100)         null,
   TEST_MAXSCORE        float                null,
   TEST_LOCKED          bit                  null,
   TEST_NOTE            varchar(400)         null,
   TEST_CREATED_DATE    datetime             null,
   constraint PK_TEST primary key nonclustered (TEST_ID)
)
go

/*==============================================================*/
/* Index: ID_TEACHER_FK                                         */
/*==============================================================*/
create index ID_TEACHER_FK on TEST (
USER_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_13_FK on TEST (
TES_TYPE_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_14_FK on TEST (
SUB_ID ASC
)
go

/*==============================================================*/
/* Table: TEST_DETAIL                                           */
/*==============================================================*/
create table TEST_DETAIL (
   TES_DETAIL_ID        bigint               not null,
   TES_TES_DETAIL_ID    bigint               null,
   TEST_ID              int                  not null,
   TES_DETAIL_TABLE     tinyint              null,
   TES_DETAIL_TABLE_ID  bigint               null,
   TES_DETAIL_NOQUESTION int                  null,
   TES_DETAIL_ORDER     int                  null,
   constraint PK_TEST_DETAIL primary key nonclustered (TES_DETAIL_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_11_FK on TEST_DETAIL (
TES_TES_DETAIL_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_12_FK on TEST_DETAIL (
TEST_ID ASC
)
go

/*==============================================================*/
/* Table: TEST_TYPE                                             */
/*==============================================================*/
create table TEST_TYPE (
   TES_TYPE_ID          int                  not null,
   TES_NAME             char(100)            null,
   TES_CURRENT          bit                  null,
   TES_ORDER            tinyint              null,
   constraint PK_TEST_TYPE primary key nonclustered (TES_TYPE_ID)
)
go

/*==============================================================*/
/* Table: "USER"                                                */
/*==============================================================*/
create table "USER" (
   USER_ID              int                  not null,
   USER_ACCOUNT         varchar(50)          not null,
   USER_BIRTHDAY        datetime             null,
   USER_NAME            nvarchar(50)          null,
   USER_EMAIL           char(50)             null,
   USER_PHONE           numeric(11)          null,
   USER_GENDER          char(5)              null,
   USER_CREATED_DATE    datetime             null,
   constraint PK_USER primary key nonclustered (USER_ID),
   constraint AK_USER_ACCOUNT_USER unique (USER_ACCOUNT)
)
go

alter table ANSWER
   add constraint FK_ANSWER_RELATIONS_EXAM_TAK foreign key (EX_TAKING_ID)
      references EXAM_TAKING (EX_TAKING_ID)
go

alter table ANSWER
   add constraint FK_ANSWER_RELATIONS_BANK foreign key (BANK_ID)
      references BANK (BANK_ID)
go

alter table BANK
   add constraint FK_BANK_RELATIONS_PART foreign key (PAR_ID)
      references PART (PAR_ID)
go

alter table BANK
   add constraint FK_BANK_RELATIONS_BANK foreign key (BAN_BANK_ID)
      references BANK (BANK_ID)
go

alter table BANK
   add constraint FK_BANK_RELATIONS_ANSWER_T foreign key (ANS_TYPE_ID)
      references ANSWER_TYPE (ANS_TYPE_ID)
go

alter table EXAM_TAKING
   add constraint FK_EXAM_TAK_RELATIONS_GROUP_TE foreign key (FRO_ID)
      references GROUP_TEST (FRO_ID)
go

alter table EXAM_TAKING
   add constraint FK_EXAM_TAK_RELATIONS_TEST foreign key (TEST_ID)
      references TEST (TEST_ID)
go

alter table EXAM_TAKING
   add constraint FK_EXAM_TAK_RELATIONS_EXAM_TAK foreign key (EX_TAKER_ID)
      references EXAM_TAKER (EX_TAKER_ID)
go

alter table GROUP_TEST
   add constraint FK_GROUP_TE_RELATIONS_SUBJECT foreign key (SUB_ID)
      references SUBJECT (SUB_ID)
go

alter table IMAGE_BANK
   add constraint FK_IMAGE_BA_RELATIONS_PART foreign key (PAR_ID)
      references PART (PAR_ID)
go

alter table OPTION_CHOICE
   add constraint FK_OPTION_C_RELATIONS_BANK foreign key (BANK_ID)
      references BANK (BANK_ID)
go

alter table PART
   add constraint FK_PART_RELATIONS_SUBJECT foreign key (SUB_ID)
      references SUBJECT (SUB_ID)
go

alter table SUBJECT
   add constraint FK_SUBJECT_RELATIONS_SUBJECT foreign key (SUB_SUB_ID)
      references SUBJECT (SUB_ID)
go

alter table TEST
   add constraint FK_TEST_ID_TEACHE_USER foreign key (USER_ID)
      references "USER" (USER_ID)
go

alter table TEST
   add constraint FK_TEST_RELATIONS_TEST_TYP foreign key (TES_TYPE_ID)
      references TEST_TYPE (TES_TYPE_ID)
go

alter table TEST
   add constraint FK_TEST_RELATIONS_SUBJECT foreign key (SUB_ID)
      references SUBJECT (SUB_ID)
go

alter table TEST_DETAIL
   add constraint FK_TEST_DET_RELATIONS_TEST_DET foreign key (TES_TES_DETAIL_ID)
      references TEST_DETAIL (TES_DETAIL_ID)
go

alter table TEST_DETAIL
   add constraint FK_TEST_DET_RELATIONS_TEST foreign key (TEST_ID)
      references TEST (TEST_ID)
go

