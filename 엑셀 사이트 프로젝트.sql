drop database if exists nrglobalsite;
create database nrglobalsite;

use nrglobalsite;

DROP TABLE IF EXISTS rankTb;
CREATE TABLE rankTb (
   rankPK      int      NOT NULL   AUTO_INCREMENT PRIMARY KEY,
   rankName   varchar(10)   NOT NULL
);

DROP TABLE IF EXISTS deptTb;
CREATE TABLE deptTb (
   deptNo      int      NOT NULL   AUTO_INCREMENT PRIMARY KEY,
   deptName   varchar(10)   NOT NULL
);

DROP TABLE IF EXISTS estimationTb;
CREATE TABLE estimationTb (
   estPK   integer   NOT NULL,
   estSep   varchar(10)   NULL,
   estSep2   varchar(50)   NULL,
   estPart   varchar(50)   NULL,
   estFloor varchar(50) NULL,
   estFloorplan varchar(50) NULL,
   estName   varchar(50)   NULL,
   estQuestion   varchar(50)   NULL,
   estVolapp   varchar(50)   NULL,
   estReply   varchar(50)   NULL,
   estRewriter   varchar(50)   NULL,
   estUserPK   integer   NOT NULL,
   estPjPK   integer   NOT NULL
);

CREATE TABLE companyTb (
   companyPK   integer   NOT NULL,
   companyName   varchar(50)   NOT NULL
);

CREATE TABLE projectTb (
   pjPK   integer   NOT NULL,
   pjName   varchar(50)   NOT NULL,
   pjManager   varchar(50)   NOT NULL,
   pjPm   varchar(50)   NOT NULL,
   pjStartline   date   NOT NULL,
   pjNote   varchar(50)   NULL,
   pjManagerPK   integer   NOT NULL,
   pjProgressPK   integer   NOT NULL
);

CREATE TABLE referenceTb (
   referencePK   integer   NOT NULL,
   original_file_name   varchar(50)   NOT NULL,
   stored_file_name   varchar(50)   NOT NULL,
   filesize   long   NOT NULL,
   refEstPK   integer   NOT NULL
);

CREATE TABLE managerTb (
   managerPK   integer   NOT NULL,
   managerName   varchar(50)   NOT NULL,
   managerPhone   varchar(50)   NULL,
   managerEmail   varchar(50)   NULL,
   managerDept   varchar(50)   NOT NULL,
   managerCompanyPK   integer   NOT NULL
);

CREATE TABLE userauthorityTb (
   uaPK   integer   NOT NULL,
   uaUserPK   integer   NOT NULL,
   uaAuthorityPK   integer   NOT NULL,
   uaProjectPK   integer   NOT NULL
);

CREATE TABLE authorityTb (
   authorityPK   integer   NOT NULL,
   authorityName   varchar(50)   NOT NULL
);

CREATE TABLE progressTb (
   progressPK   integer   NOT NULL,
   progressName   varchar(50)   NOT NULL
);

DROP TABLE IF EXISTS positionTb;
CREATE TABLE positionTb (
   pstNo      int      NOT NULL   AUTO_INCREMENT PRIMARY KEY,
   pstName      varchar(10)   NOT NULL,
   pstRankPK   int      NOT NULL,
   CONSTRAINT FK_position_rank FOREIGN KEY(pstRankPk) REFERENCES rankTb(rankPk)
);

DROP TABLE IF EXISTS usersTb; -- 테이블이 존재하면 삭제

CREATE TABLE usersTb (
   userPK   bigint      NOT NULL   AUTO_INCREMENT PRIMARY KEY,
   userId      varchar(100)   NOT NULL,
   userPassword   varchar(100)   NOT NULL,
   userEmail   varchar(100)   NOT NULL,
   userName   varchar(30)   NOT NULL,
   userBirth   varchar(20)   NOT NULL,
   userGender   boolean      NOT NULL   DEFAULT 0,
   userDate   DATETIME   NOT NULL   DEFAULT CURRENT_TIMESTAMP,
   userCheck   int      NOT NULL   DEFAULT 0   COMMENT '0:대기,1:승인',
   userDeptPK   int      NOT NULL,
   userPstPK   int      NOT NULL,
   CONSTRAINT FK_users_dept FOREIGN KEY(userDeptPK) REFERENCES deptTb(deptNo),
   CONSTRAINT FK_users_position FOREIGN KEY(userPstPK) REFERENCES positionTb(pstNo)
);





