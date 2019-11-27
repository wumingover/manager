/*部门表 t_dept*/
drop table if exists t_dept;
create table t_dept (
    id int(20) primary key auto_increment comment '部门编号',
    name varchar(20) not null comment '部门名称',
    manager varchar(20) comment '部门领导',
    create_time date comment '创建时间',
    update_time date comment '创建时间'
)engine = innodb default charset = utf8;
insert into t_dept (name, manager,create_time,update_time)
    values ('总经办','姬轩辕','2019-01-01','2019-01-01');
insert into t_dept (name, manager,create_time,update_time)
    values ('人事部','嬴政','2019-01-01','2019-01-01');
insert into t_dept (name, manager,create_time,update_time)
    values ('研发部','刘彻','2019-01-01','2019-01-01');
insert into t_dept (name, manager,create_time,update_time)
    values ('市场部','李世民','2019-01-01','2019-01-01');
insert into t_dept (name, manager,create_time,update_time)
    values ('财务部','赵匡胤','2019-01-01','2019-01-01');
select * from t_dept;

/*角色表 t_role*/
drop table  if exists t_role;
create table t_role(
    id int(20) primary key auto_increment comment '角色编号',
    name varchar(20) not null comment '角色名称'
)engine = innodb default charset = utf8;
insert into t_role (name) values ('管理员');
insert into t_role (name) values ('经理');
insert into t_role (name) values ('人事');
insert into t_role (name) values ('财务');
insert into t_role (name) values ('员工');
select * from t_role;

/*角色表t_user*/
drop table t_user  ;
create table t_user(
    id int(20) primary key auto_increment comment '员工编号',
    name varchar(50) not null comment '员工姓名',
    role int(20) not null comment '员工角色',
    sex varchar(10) comment '性别',
    password varchar(20) not null comment '密码',
    dept int(20) not null  comment '所属部门',
    phone varchar(50) not null comment '联系方式',
    state int(5) not null comment '用户状态',
    create_time date  comment '入职时间',
    out_time date comment '离职时间',
    update_time date comment '更新时间',
    constraint dept foreign key(dept) references t_dept(id),
    constraint role foreign key(role) references t_role(id)
)engine = innodb default charset = utf8;
insert into t_user (name, role, sex, password, dept, phone, state, create_time,out_time,update_time)
    values ('姬轩辕',1,'男',123456,1,18851600968,1,now(),'2199-01-01',now());
insert into t_user (name, role, sex, password, dept, phone, state, create_time,out_time,update_time)
    values ('嬴政',1,'男',123456,1,18812345678,1,now(),'2199-01-01',now());
insert into t_user (name, role, sex, password, dept, phone, state, create_time,out_time,update_time)
    values ('刘彻',1,'男',123456,1,18812345679,1,now(),'2199-01-01',now());
insert into t_user (name, role, sex, password, dept, phone, state, create_time,out_time,update_time)
    values ('李世民',1,'男',123456,1,18812345689,1,now(),'2199-01-01',now());
insert into t_user (name, role, sex, password, dept, phone, state, create_time,out_time,update_time)
    values ('赵匡胤',1,'男',123456,1,18812345699,1,now(),'2199-01-01',now());
insert into t_user (name, role, sex, password, dept, phone, state, create_time,out_time,update_time)
    values ('aaa',1,'女',123456,1,18812345699,1,now(),'2199-01-01',now());
insert into t_user (name, role, sex, password, dept, phone, state, create_time,out_time,update_time)
    values ('bbb',1,'女',123456,1,18812345699,1,now(),'2199-01-01',now());
insert into t_user (name, role, sex, password, dept, phone, state, create_time,out_time,update_time)
    values ('ccc',1,'女',123456,1,18812345699,0,now(),'2199-01-01',now());
select * from t_user;

create table t_holiday_type(
    id int(20) primary key auto_increment comment '假期类型ID',
    name varchar(20) not null comment '假期类型'
)engine = innodb default charset = utf8;
insert into t_holiday_type (name)values ('事假');
insert into t_holiday_type (name)values ('病假');
insert into t_holiday_type (name)values ('婚假');
insert into t_holiday_type (name)values ('产假');
insert into t_holiday_type (name)values ('年假');
insert into t_holiday_type (name)values ('其它');
select * from t_holiday_type;
drop table t_holiday;
create table t_holiday(
    id int(20) primary key auto_increment comment '请假id',
    user varchar(20) not null comment '请假人',
    type int(20) not null comment '请假类型',
    reason varchar(100) comment '请假理由',
    start_time datetime comment '请假开始时间',
    end_time datetime comment '请假结束时间',
    create_time timestamp comment '请假创建时间',
    update_time timestamp comment '修改时间',
    constraint type foreign key(type) references t_holiday_type(id)
)engine = innodb default charset = utf8;
insert into t_holiday(user, type, reason, start_time, end_time, create_time, update_time)
    values ('aaa',2,'aadsada','2019-10-01 00:00:00','2019-10-07 00:00:00','2019-09-30 00:00:00','2019-09-30 00:00:00');
insert into t_holiday(user, type, reason, start_time, end_time, create_time, update_time)
    values ('bbb',3,'','2019-10-01 00:00:00','2019-10-07 00:00:00','2019-09-30 00:00:00','2019-09-30 00:00:00');
insert into t_holiday(user, type, reason, start_time, end_time, create_time, update_time)
    values ('cccc',2,'aadsada','2019-01-01 00:00:00','2019-10-07 00:00:00','2019-09-30 00:00:00','2019-09-30 00:00:00');
insert into t_holiday(user, type, reason, start_time, end_time, create_time, update_time)
    values ('aaa',2,'aadsada','2019-10-01 00:00:00','2019-10-07 00:00:00','2019-09-30 00:00:00','2019-09-30 00:00:00');
insert into t_holiday(user, type, reason, start_time, end_time, create_time, update_time)
    values ('aaa',2,'aadsada','2019-10-01 00:00:00','2019-10-07 00:00:00','2019-09-30 00:00:00','2019-09-30 00:00:00');
select * from t_holiday;
update t_holiday set user = 'aaaa',type = 3,reason = 'dsfsf',start_time = '2019-11-16',end_time = '2019-12-19',
    create_time = create_time,update_time = now() where id = 5;

/*create table t_role()engine = innodb default charset = utf8;
create table t_role()engine = innodb default charset = utf8;
create table t_role()engine = innodb default charset = utf8;*/



