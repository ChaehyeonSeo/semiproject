DROP TABLE "MONEY";
DROP TABLE "MEMBER";

CREATE TABLE "MEMBER" (
	"CUSTNO"	NUMBER(6)		NOT NULL,
	"CUSTNAME"	VARCHAR2(20)    NOT NULL,
	"PHONE"	    VARCHAR2(13)    NOT NULL,
	"ADDRESS"	VARCHAR2(60)    NOT NULL,
	"JOINDATE"	DATE	        NOT NULL,
	"GRADE"	    CHAR(1)         NOT NULL,
	"CITY"	    CHAR(2)         NOT NULL
);

CREATE TABLE "MONEY" (
	"SALENO"	NUMBER(8)		NOT NULL,
	"CUSTNO"	NUMBER(6)		NOT NULL,
	"PCOST"	    NUMBER(8),
	"AMOUNT"	NUMBER(4),
	"PRICE"	    NUMBER(8),
	"PCODE"	    VARCHAR2(4),
	"DATE"	    DATE
);

ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"CUSTNO"
);

ALTER TABLE "MONEY" ADD CONSTRAINT "PK_MONEY" PRIMARY KEY (
	"SALENO"
);

ALTER TABLE "MONEY" ADD CONSTRAINT "FK_MEMBER_TO_MONEY_1" FOREIGN KEY (
	"CUSTNO"
)
REFERENCES "MEMBER" (
	"CUSTNO"
);





insert all
    into member values(100001, '김행복', '010-1111-2222', '서울 동대문구 휘경1동', '2015-12-02', 'A', '01')
    into member values(100002, '이축복', '010-1111-3333', '서울 동대문구 휘경2동', '2015-12-06', 'B', '01')
    into member values(100003, '장믿음', '010-1111-4444', '울릉군 울릉읍 독도1리', '2015-10-01', 'B', '30')
    into member values(100004, '최사랑', '010-1111-5555', '울릉군 울릉읍 독도2리', '2015-11-13', 'A', '30')
    into member values(100005, '진평화', '010-1111-6666', '제주도 제주시 외나무골', '2015-12-25', 'B', '60')
    into member values(100006, '차공단', '010-1111-7777', '제주도 제주시 감나무골', '2015-12-11', 'C', '60')
select * from dual;
commit;
SELECT * FROM MEMBER;

insert all
    into money values(20160001, 100001, 500, 5, 2500, 'A001', '2016-01-01')
    into money values(20160002, 100001, 1000, 4, 4000, 'A002', '2016-01-01')
    into money values(20160003, 100001, 500, 3, 1500, 'A008', '2016-01-01')
    into money values(20160004, 100002, 2000, 1, 2000, 'A004', '2016-01-02')
    into money values(20160005, 100002, 500, 1, 500, 'A001', '2016-01-03')
    into money values(20160006, 100003, 1500, 2, 3000, 'A003', '2016-01-03')
    into money values(20160007, 100004, 500, 2, 1000, 'A001', '2016-01-04')
    into money values(20160008, 100004, 300, 1, 300, 'A005', '2016-01-04')
    into money values(20160009, 100004, 600, 1, 600, 'A006', '2016-01-04')
    into money values(20160010, 100004, 3000, 1, 3000, 'A007', '2016-01-06')
select * from dual;
COMMIT;
SELECT * FROM MONEY;