/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  04/07/2020 15:10:20                      */
/*==============================================================*/


drop table if exists ARTICLE;

drop table if exists BUY;

drop table if exists DISTRIBUTORS;

drop table if exists RELATION_2;

drop table if exists TYPE;

/*==============================================================*/
/* Table : ARTICLE                                              */
/*==============================================================*/
create table ARTICLE
(
   ID_ARTICLE           int not null,
   ID_DISTRIBUTOR       int,
   ID_TYPE              int,
   ARIVATION_DATE       date not null,
   EXPIRATION_DATE      date not null,
   NAME                 varchar(30) not null,
   QUANTITY             int not null,
   primary key (ID_ARTICLE)
);

/*==============================================================*/
/* Table : BUY                                                  */
/*==============================================================*/
create table BUY
(
   ID_BUY               int not null,
   DATE_BUY             date not null,
   TIME_BUY             time not null,
   primary key (ID_BUY)
);

/*==============================================================*/
/* Table : DISTRIBUTORS                                         */
/*==============================================================*/
create table DISTRIBUTORS
(
   ID_DISTRIBUTOR       int not null,
   TRADE_REGISTER_NUMBER int not null,
   NAME_DISTRIBUTOR     char(30) not null,
   primary key (ID_DISTRIBUTOR)
);

/*==============================================================*/
/* Table : RELATION_2                                           */
/*==============================================================*/
create table RELATION_2
(
   ID_BUY               int not null,
   ID_ARTICLE           int not null,
   primary key (ID_BUY, ID_ARTICLE)
);

/*==============================================================*/
/* Table : TYPE                                                 */
/*==============================================================*/
create table TYPE
(
   ID_TYPE              int not null,
   TYPE_NAME            varchar(30) not null,
   primary key (ID_TYPE)
);

alter table ARTICLE add constraint FK_RELATION_1 foreign key (ID_DISTRIBUTOR)
      references DISTRIBUTORS (ID_DISTRIBUTOR) on delete restrict on update restrict;

alter table ARTICLE add constraint FK_RELATION_5 foreign key (ID_TYPE)
      references TYPE (ID_TYPE) on delete restrict on update restrict;

alter table RELATION_2 add constraint FK_RELATION_2 foreign key (ID_BUY)
      references BUY (ID_BUY) on delete restrict on update restrict;

alter table RELATION_2 add constraint FK_RELATION_3 foreign key (ID_ARTICLE)
      references ARTICLE (ID_ARTICLE) on delete restrict on update restrict;

create table users(
ID_USER varchar(30) not null ,
PASSWORD_USER  varchar(30) not null ,
primary key(ID_USER)
);

