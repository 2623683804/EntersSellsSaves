--销售员
prompt PL/SQL Developer import file
prompt Created on 2018年6月7日 by new
set feedback off
set define off
prompt Dropping SALESMAN...
drop table SALESMAN cascade constraints;
prompt Creating SALESMAN...
create table SALESMAN
(
  salesno NUMBER not null,
  chiname VARCHAR2(10),
  engname VARCHAR2(10),
  tel     VARCHAR2(20),
  mobtel  VARCHAR2(20),
  address VARCHAR2(10)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SALESMAN
  add constraint SALESMAN_SALESNO_PK primary key (SALESNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );


prompt Disabling triggers for SALESMAN...
alter table SALESMAN disable all triggers;
prompt Loading SALESMAN...
insert into SALESMAN (salesno, chiname, engname, tel, mobtel, address)
values (1, '汤姆', 'tom', '18888888888', '18888888888', 'dalian');
commit;
prompt 1 records loaded
prompt Enabling triggers for SALESMAN...
alter table SALESMAN enable all triggers;
set feedback on
set define on
prompt Done.
--商品
prompt PL/SQL Developer import file
prompt Created on 2018年6月7日 by new
set feedback off
set define off
prompt Dropping COMMODITY...
drop table COMMODITY cascade constraints;
prompt Creating COMMODITY...
create table COMMODITY
(
  comno      NUMBER not null,
  comname    VARCHAR2(10),
  inventory  NUMBER,
  amount     NUMBER,
  cgprice    NUMBER,
  salesprice NUMBER,
  cgdate     DATE,
  salesdate  DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table COMMODITY
  add constraint COMMODITY_COMNO_PK primary key (COMNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for COMMODITY...
alter table COMMODITY disable all triggers;
prompt Loading COMMODITY...
insert into COMMODITY (comno, comname, inventory, amount, cgprice, salesprice, cgdate, salesdate)
values (1, 'sofa', 10000, 10000, 2000, 4000, to_date('08-08-2008', 'dd-mm-yyyy'), to_date('08-08-2018', 'dd-mm-yyyy'));
commit;
prompt 1 records loaded
prompt Enabling triggers for COMMODITY...
alter table COMMODITY enable all triggers;
set feedback on
set define on
prompt Done.

--客户
prompt PL/SQL Developer import file
prompt Created on 2018年6月7日 by new
set feedback off
set define off
prompt Dropping S_USER...
drop table S_USER cascade constraints;
prompt Creating S_USER...
create table S_USER
prompt Dropping CUSTOMER...
drop table CUSTOMER cascade constraints;
prompt Creating CUSTOMER...
create table CUSTOMER
(

  id    NUMBER not null,
  uname VARCHAR2(20),
  pass  VARCHAR2(20),
  phone VARCHAR2(20),
  ctype VARCHAR2(20)
  cusno      NUMBER not null,
  cusname    VARCHAR2(10),
  cusallname VARCHAR2(10),
  head       VARCHAR2(10),
  headname   VARCHAR2(10),
  tel        VARCHAR2(20),
  fax        VARCHAR2(20),
  mobtel     VARCHAR2(20),
  salesman   VARCHAR2(10),
  cusaddress VARCHAR2(10),
  deladdress VARCHAR2(10)

)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );


prompt Disabling triggers for CUSTOMER...
alter table CUSTOMER disable all triggers;
prompt Loading CUSTOMER...
insert into CUSTOMER (cusno, cusname, cusallname, head, headname, tel, fax, mobtel, salesman, cusaddress, deladdress)
values (1, '东软', 'neusoft', '王', '王大大', '18888888888', '18888888888', '18888888888', 'tom', 'dalian', 'dalian');
commit;
prompt 1 records loaded
prompt Enabling triggers for CUSTOMER...
alter table CUSTOMER enable all triggers;
set feedback on
set define on
prompt Done.

--供应商
prompt PL/SQL Developer import file
prompt Created on 2018年6月7日 by new
set feedback off
set define off
prompt Dropping SUPPLIER...
drop table SUPPLIER cascade constraints;
prompt Creating SUPPLIER...
create table SUPPLIER
(
  supno      NUMBER not null,
  supname    VARCHAR2(10),
  supallname VARCHAR2(10),
  head       VARCHAR2(10),
  headname   VARCHAR2(10),
  tel        VARCHAR2(20),
  fax        VARCHAR2(20),
  mobtel     VARCHAR2(20),
  address    VARCHAR2(20),
  facaddress VARCHAR2(20),
  importdate DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SUPPLIER
  add constraint SUPPLIER_SUPNO_PK primary key (SUPNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

--采购入库表
prompt PL/SQL Developer import file
prompt Created on 2018年6月7日 by new
set feedback off
set define off
prompt Dropping PUR_INPUT...
drop table PUR_INPUT cascade constraints;
prompt Creating PUR_INPUT...
create table PUR_INPUT
(
  supno       NUMBER not null,
  purinid     NUMBER not null,
  supallname  VARCHAR2(10),
  cgdate      DATE,
  totalamount NUMBER,
  comno       NUMBER,
  amount      NUMBER,
  unitprice   NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table PUR_INPUT
  add constraint PUR_INPUT_PURINID_PK primary key (PURINID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for PUR_INPUT...
alter table PUR_INPUT disable all triggers;
prompt Loading PUR_INPUT...
insert into PUR_INPUT (supno, purinid, supallname, cgdate, totalamount, comno, amount, unitprice)
values (1001, 1001, '惠普', to_date('07-06-2018', 'dd-mm-yyyy'), 100000, 1001, 532, 25);
commit;
prompt 1 records loaded
prompt Enabling triggers for PUR_INPUT...
alter table PUR_INPUT enable all triggers;
set feedback on
set define on
prompt Done.

--采购出库表
prompt PL/SQL Developer import file
prompt Created on 2018年6月7日 by new
set feedback off
set define off
prompt Dropping PUR_OUTPUT...
drop table PUR_OUTPUT cascade constraints;
prompt Creating PUR_OUTPUT...
create table PUR_OUTPUT
(
  supno       NUMBER not null,
  puroutid    NUMBER not null,
  supallname  VARCHAR2(10),
  thdate      DATE,
  totalamount NUMBER,
  comno       NUMBER,
  amount      NUMBER,
  unitprice   NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table PUR_OUTPUT
  add constraint PUR_OUTPUT_PUROUTID_PK primary key (PUROUTID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for PUR_OUTPUT...
alter table PUR_OUTPUT disable all triggers;
prompt Loading PUR_OUTPUT...
prompt Table is empty
prompt Enabling triggers for PUR_OUTPUT...
alter table PUR_OUTPUT enable all triggers;
set feedback on
set define on
prompt Done.

--销售出库表
prompt PL/SQL Developer import file
prompt Created on 2018年6月7日 by new
set feedback off
set define off
prompt Dropping SELL...
drop table SELL cascade constraints;
prompt Creating SELL...
create table SELL
(
  cusno       NUMBER,
  cusname     VARCHAR2(10),
  selloutid   NUMBER not null,
  salesdate   DATE,
  salesmanid  NUMBER,
  shaddress   VARCHAR2(30),
  totalamount NUMBER,
  comno       NUMBER,
  amount      NUMBER,
  unitprice   NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SELL
  add constraint SELL_SELLOUTID_PK primary key (SELLOUTID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for SELL...
alter table SELL disable all triggers;
prompt Loading SELL...
prompt Table is empty
prompt Enabling triggers for SELL...
alter table SELL enable all triggers;
set feedback on
set define on
prompt Done.


--销售退货表
prompt PL/SQL Developer import file
prompt Created on 2018年6月7日 by new
set feedback off
set define off
prompt Dropping SELLRE...
drop table SELLRE cascade constraints;
prompt Creating SELLRE...
create table SELLRE
(
  cusno       NUMBER,
  cusname     VARCHAR2(10),
  sellreid    NUMBER not null,
  xthdate     DATE,
  totalamount NUMBER,
  comno       NUMBER,
  amount      NUMBER,
  unitprice   NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SELLRE
  add constraint SELLRE_SELLREID_PK primary key (SELLREID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for SELLRE...
alter table SELLRE disable all triggers;
prompt Loading SELLRE...
prompt Table is empty
prompt Enabling triggers for SELLRE...
alter table SELLRE enable all triggers;
set feedback on
set define on
prompt Done.

--库存查询表
prompt PL/SQL Developer import file
prompt Created on 2018年6月7日 by new
set feedback off
set define off
prompt Dropping STOCK...
drop table STOCK cascade constraints;
prompt Creating STOCK...
create table STOCK
(
  kcid       NUMBER not null,
  amount     NUMBER,
  comname    VARCHAR2(10),
  inventory  NUMBER,
  cgdate     DATE,
  salesdate  DATE,
  cgprice    NUMBER,
  salesprice NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table STOCK
  add constraint STOCK_KCID_PK primary key (KCID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
prompt Disabling triggers for STOCK...
alter table STOCK disable all triggers;
prompt Loading STOCK...
prompt Table is empty
prompt Enabling triggers for STOCK...
alter table STOCK enable all triggers;
set feedback on
set define on
prompt Done.







