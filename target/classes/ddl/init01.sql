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
  chiname VARCHAR2(20),
  engname VARCHAR2(20),
  tel     VARCHAR2(20),
  mobtel  VARCHAR2(20),
  address VARCHAR2(20)
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
  comname    VARCHAR2(50),
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
commit;
prompt 1 records loaded
prompt Enabling triggers for COMMODITY...
alter table COMMODITY enable all triggers;
set feedback on
set define on
prompt Done.

--客户
prompt PL/SQL Developer import file
prompt Created on 2018年6月12日 by new
set feedback off
set define off
prompt Dropping CUSTOMER...
drop table CUSTOMER cascade constraints;
prompt Creating CUSTOMER...
create table CUSTOMER
(
  cusno      NUMBER not null,
  cusname    VARCHAR2(20),
  cusallname VARCHAR2(20),
  head       VARCHAR2(20),
  headname   VARCHAR2(20),
  tel        VARCHAR2(20),
  fax        VARCHAR2(20),
  mobtel     VARCHAR2(20),
  salesman   VARCHAR2(20),
  cusaddress VARCHAR2(20),
  deladdress VARCHAR2(20)
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
alter table CUSTOMER
  add constraint CUSTOMER_CUSNO_PK primary key (CUSNO)
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

prompt Disabling triggers for CUSTOMER...
alter table CUSTOMER disable all triggers;
prompt Loading CUSTOMER...
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
  supname    VARCHAR2(20),
  supallname VARCHAR2(30),
  head       VARCHAR2(30),
  headname   VARCHAR2(30),
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
  supallname  VARCHAR2(30),
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
  supallname  VARCHAR2(30),
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
  cusname     VARCHAR2(30),
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
  cusname     VARCHAR2(30),
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
  comname    VARCHAR2(30),
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









-- 采购入库
insert into PUR_INPUT (supno, purinid, supallname, cgdate, totalamount, comno, amount, unitprice)
values (1, 1, '惠普', to_date('07-06-2018', 'dd-mm-yyyy'), 100000, 1, 532, 25);
insert into PUR_INPUT (supno, purinid, supallname, cgdate, totalamount, comno, amount, unitprice)
values (1, 2, '惠普', to_date('09-05-2015', 'dd-mm-yyyy'), 561444, 1, 155, 325);
commit;


--采购出库表
insert into PUR_OUTPUT (SUPNO, PUROUTID, SUPALLNAME, THDATE, TOTALAMOUNT, COMNO, AMOUNT, UNITPRICE)
values (2, 1, '华信 ', to_date('04-06-2018', 'dd-mm-yyyy'), 56200, 2, 124, 55);
insert into PUR_OUTPUT (SUPNO, PUROUTID, SUPALLNAME, THDATE, TOTALAMOUNT, COMNO, AMOUNT, UNITPRICE)
values (2, 2, '华信 ', to_date('04-05-2016', 'dd-mm-yyyy'), 5600, 2, 1534, 100);

--销售出库表

insert into SELL (CUSNO, CUSNAME, SELLOUTID, SALESDATE, SALESMANID, SHADDRESS, TOTALAMOUNT, COMNO, AMOUNT, UNITPRICE)
values (1, '大连科技公司', 1, to_date('02-06-2018', 'dd-mm-yyyy'), 1001, '大连谷歌里', 56448, 3, 526, 666);
insert into SELL (CUSNO, CUSNAME, SELLOUTID, SALESDATE, SALESMANID, SHADDRESS, TOTALAMOUNT, COMNO, AMOUNT, UNITPRICE)
values (2, '沈阳科技公司', 2, to_date('02-06-2018', 'dd-mm-yyyy'), 1001, '大连谷歌里', 56448, 4, 526, 666);


--销售退货表

insert into SELLRE (CUSNO, CUSNAME, SELLREID, XTHDATE, TOTALAMOUNT, COMNO, AMOUNT, UNITPRICE)
values (1, '大连科技公司', 1, to_date('08-05-2018', 'dd-mm-yyyy'), 654874, 5, 3, 23);
insert into SELLRE (CUSNO, CUSNAME, SELLREID, XTHDATE, TOTALAMOUNT, COMNO, AMOUNT, UNITPRICE)
values (1, '大连科技公司', 2, to_date('06-03-2015', 'dd-mm-yyyy'), 654874, 5, 3, 23);

--库存查询表

--插入客户表两条信息

insert into CUSTOMER (cusno, cusname, cusallname, head, headname, tel, fax, mobtel, salesman, cusaddress, deladdress)
values (1, '大连科技公司', '大连有限科技公司', '经理', '王大伟', '15844782521', '13655555555', '17758554444', 'tom', '高新园区', '大连谷歌里');
insert into CUSTOMER (cusno, cusname, cusallname, head, headname, tel, fax, mobtel, salesman, cusaddress, deladdress)
values (2, '大连华信公司', '大连华信有限公司', '经理', '陈大伟', '15844782521', '13655555555', '17758554444', 'Lily', '七贤岭', '大连谷歌里');

--插入商品两条信息
insert into COMMODITY (COMNO, COMNAME, INVENTORY, AMOUNT, CGPRICE, SALESPRICE, CGDATE, SALESDATE)
values (1, '主机', 4300, 5141, 2000, 2500, to_date('03-06-2015', 'dd-mm-yyyy'), to_date('22-03-2015', 'dd-mm-yyyy'));

insert into COMMODITY (COMNO, COMNAME, INVENTORY, AMOUNT, CGPRICE, SALESPRICE, CGDATE, SALESDATE)
values (2, '键盘', 10000, 7000, 2000, 4000, to_date('08-08-2008', 'dd-mm-yyyy'), to_date('08-08-2018', 'dd-mm-yyyy'));

--插入供应商表两条信息

insert into SUPPLIER (SUPNO, SUPNAME, SUPALLNAME, HEAD, HEADNAME, TEL, FAX, MOBTEL, ADDRESS, FACADDRESS, IMPORTDATE)
values (1, '睿道', '东软睿道', '经理', '刘德华', '18856496854', '184862545566', '13685483612', '大连', '大连', to_date('03-06-2015', 'dd-mm-yyyy'));
insert into SUPPLIER (SUPNO, SUPNAME, SUPALLNAME, HEAD, HEADNAME, TEL, FAX, MOBTEL, ADDRESS, FACADDRESS, IMPORTDATE)
values (2, '华信', '大连华信', '经理', '马德华', '18856496854', '184862545566', '13685483612', '大连', '大连', to_date('03-06-2015', 'dd-mm-yyyy'));

--插入销售员表两条信息

insert into SALESMAN (SALESNO, CHINAME, ENGNAME, TEL, MOBTEL, ADDRESS)
values (1, '汤姆', 'tom', '18888888888', '18888888888', 'dalian');
insert into SALESMAN (SALESNO, CHINAME, ENGNAME, TEL, MOBTEL, ADDRESS)
values (2, '莉莉', 'Lily', '19999999999', '18755555555', 'dalian');
commit;
















drop sequence my_sequence;
CREATE SEQUENCE my_sequence
START WITH 1
INCREMENT BY 1
MAXVALUE 9999;

prompt PL/SQL Developer import file
prompt Created on 2018年6月12日 by new
set feedback off
set define off
prompt Dropping S_USER...
drop table S_USER cascade constraints;
prompt Creating S_USER...
create table S_USER
(
  id    NUMBER not null,
  uname VARCHAR2(20),
  pass  VARCHAR2(20),
  phone VARCHAR2(20),
  ctype VARCHAR2(50)
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
alter table S_USER
  add constraint S_USER_ID_PK primary key (ID)
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

prompt Disabling triggers for S_USER...
alter table S_USER disable all triggers;
prompt Loading S_USER...
insert into S_USER (id, uname, pass, phone, ctype)
values (24, 'sxy', '123357ty', '1234354567', '销售员');
insert into S_USER (id, uname, pass, phone, ctype)
values (1, 'yy', '99', '9994', '管理员');
insert into S_USER (id, uname, pass, phone, ctype)
values (41, 'tom11', '123', '1234354567', '仓库管理员');
commit;
prompt 3 records loaded
prompt Enabling triggers for S_USER...
alter table S_USER enable all triggers;
set feedback on
set define on
prompt Done.


SELECT u.id, u.uname, r.ctype, p.p_name
  FROM s_user u, s_role r, s_power p, s_role_power rp
  WHERE p.id = rp.p_id AND r.id = rp.r_id AND u.ctype = r.ctype
  ORDER BY u.id;
  
  -- Create table
create table R_EXPORT
(
  sum        NUMBER,
  comno      NUMBER,
  comname    VARCHAR2(20),
  inventory  NUMBER,
  damount    NUMBER,
  cgprice    NUMBER,
  salesprice NUMBER,
  salesdate  DATE,
  cgdate     DATE,
  supno      NUMBER,
  supname    VARCHAR2(20),
  amount     NUMBER,
  unit       VARCHAR2(20),
  salesmanid NUMBER
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
  
  -- Create table
create table S_POWER
(
  id     NUMBER,
  p_name VARCHAR2(50)
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

  -- Create table
create table S_ROLE
(
  id    NUMBER,
  ctype VARCHAR2(50)
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

  -- Create table
create table S_ROLE_POWER
(
  r_id NUMBER,
  p_id NUMBER not null
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