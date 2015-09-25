-- ���ű�
create table ssh_department(
  -- ����id
  id number(10) constraint dept_FK primary key,
  -- ��������
  department_name varchar2(50)
);

-- Ա����
create table ssh_employee(
  -- Ա��id
  id number(10) constraint emp_PK primary key,
  -- Ա������
  last_name varchar2(50),
  -- Ա������
  email varchar2(50),
  -- Ա������
  birth date,
  -- ����ʱ��
  create_time date,
  -- �������
  dept_id number(10) constraint emp_FK references ssh_department(id)
);

insert into ssh_department values(1,'���۲�');
insert into ssh_department values(2,'��Ϣ��');
insert into ssh_department values(3,'���²�');
insert into ssh_department values(4,'����');
insert into ssh_department values(5,'�Ŵ���');
insert into ssh_department values(6,'���ڲ�');

insert into ssh_employee values(1,'����','zs@163.com','15-2��-89','31-3��-15',1);
insert into ssh_employee values(2,'����','ls@163.com','23-7��-90','31-3��-15',3);
insert into ssh_employee values(3,'����','ww@163.com','02-5��-88','31-3��-15',4);
insert into ssh_employee values(4,'����','zl@163.com','30-9��-90','31-3��-15',2);
insert into ssh_employee values(5,'����','zq@163.com','19-8��-89','31-3��-15',1);
INSERT INTO ssh_employee values ('7', '���� ', '156457894@qq.com', TO_DATE('1993-04-06 13:39:18', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-04-01 13:39:29', 'YYYY-MM-DD HH24:MI:SS'), '5')
INSERT INTO ssh_employee values ('8', '�Զ���', '5656456465@qq.com', TO_DATE('1989-05-10 13:39:52', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-04-01 13:39:48', 'YYYY-MM-DD HH24:MI:SS'), '5')
INSERT INTO ssh_employee values ('9', 'Ҧ����', 'ysl@163.com', TO_DATE('1992-09-22 13:40:28', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-04-01 13:40:50', 'YYYY-MM-DD HH24:MI:SS'), '4')
INSERT INTO ssh_employee values ('10', 'ţ��', 'niuxin@163.com', TO_DATE('1990-02-13 13:40:37', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-04-01 13:41:05', 'YYYY-MM-DD HH24:MI:SS'), '2')
INSERT INTO ssh_employee values ('11', 'л��Ȼ', 'xieyiran@163.com', TO_DATE('1994-07-19 13:40:56', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-04-01 13:41:04', 'YYYY-MM-DD HH24:MI:SS'), '1')
