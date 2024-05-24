CREATE TABLE `user` (
	`userPK`	integer	NOT NULL,
	`userid`	varchar	NOT NULL,
	`userpassword`	varchar	NOT NULL,
	`useremail`	varchar	NOT NULL,
	`username`	varchar	NOT NULL,
	`userbirth`	date	NOT NULL,
	`usergender`	boolean	NOT NULL,
	`userdate`	date	NOT NULL,
	`usercheck`	integer	NOT NULL	DEFAULT 0	COMMENT '0:대기,1:승인',
	`deptno`	integer	NOT NULL,
	`user_positionno`	integer	NOT NULL
);

CREATE TABLE `estimation` (
	`estPK`	integer	NOT NULL,
	`estsep`	varchar	NOT NULL,
	`estsep2`	varchar	NOT NULL,
	`estpart`	varchar	NULL,
	`estfloor`	varchar	NULL	COMMENT '층 수만 써있으면 int 가능',
	`estfloorplan`	varchar	NULL,
	`estfloorplanname`	varchar	NULL,
	`estquestions`	varchar	NULL	COMMENT 'null 가능한지',
	`estvolapp`	varchar	NULL,
	`estreply`	varchar	NULL	COMMENT '회신 여부 묻는용이면 int가능',
	`estrewriter`	varchar	NULL,
	`est_userPK`	integer	NOT NULL,
	`projectPK`	integer	NOT NULL,
	`referencePK`	integer	NULL
);

CREATE TABLE `company` (
	`companyPK`	integer	NOT NULL,
	`companyname`	varchar	NOT NULL
);

CREATE TABLE `project` (
	`projectPK`	integer	NOT NULL,
	`projectname`	varchar	NOT NULL,
	`project_managerPK`	integer	NOT NULL
);

CREATE TABLE `position` (
	`positionno`	integer	NOT NULL,
	`positionname`	varchar	NOT NULL,
	`positionrankno`	integer	NOT NULL
);

CREATE TABLE `reference` (
	`referencePK`	integer	NOT NULL,
	`ref`	varchar	NULL	COMMENT '이미지path를 참조에 각각 삽입',
	`ref2`	varchar	NULL	COMMENT '참조가 null이 아닌 이미지경로를 불러옴',
	`ref3`	varchar	NULL	COMMENT '불러온 이미지를 띄워줌',
	`ref4`	varchar	NULL,
	`ref5`	varchar	NULL,
	`ref6`	varchar	NULL,
	`ref7`	varchar	NULL,
	`ref8`	varchar	NULL,
	`ref9`	varchar	NULL,
	`ref10`	varchar	NULL
);

CREATE TABLE `dept` (
	`deptno`	integer	NOT NULL,
	`deptname`	varchar	NOT NULL
);

CREATE TABLE `manager` (
	`managerPK`	integer	NOT NULL,
	`managername`	varchar	NOT NULL,
	`managerphone`	varchar	NOT NULL,
	`manageremail`	varchar	NOT NULL,
	`managerdept`	varchar	NOT NULL,
	`companyPK`	integer	NOT NULL
);

ALTER TABLE `user` ADD CONSTRAINT `PK_USER` PRIMARY KEY (
	`userPK`
);

ALTER TABLE `estimation` ADD CONSTRAINT `PK_ESTIMATION` PRIMARY KEY (
	`estPK`
);

ALTER TABLE `company` ADD CONSTRAINT `PK_COMPANY` PRIMARY KEY (
	`companyPK`
);

ALTER TABLE `project` ADD CONSTRAINT `PK_PROJECT` PRIMARY KEY (
	`projectPK`
);

ALTER TABLE `position` ADD CONSTRAINT `PK_POSITION` PRIMARY KEY (
	`positionno`
);

ALTER TABLE `reference` ADD CONSTRAINT `PK_REFERENCE` PRIMARY KEY (
	`referencePK`
);

ALTER TABLE `dept` ADD CONSTRAINT `PK_DEPT` PRIMARY KEY (
	`deptno`
);

ALTER TABLE `manager` ADD CONSTRAINT `PK_MANAGER` PRIMARY KEY (
	`managerPK`
);



