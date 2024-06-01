CREATE TABLE `users` (
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
	`user_pstno`	integer	NOT NULL
);

CREATE TABLE `estimation` (
	`estPK`	integer	NOT NULL,
	`estsep`	varchar	NULL,
	`estsep2`	varchar	NULL,
	`estpart`	varchar	NULL,
	`estfloor`	varchar	NULL,
	`estfloorplan`	varchar	NULL,
	`estname`	varchar	NULL,
	`estquestion`	varchar	NULL,
	`estvolapp`	varchar	NULL,
	`estreply`	varchar	NULL,
	`estrewriter`	varchar	NULL,
	`est_userPK`	integer	NOT NULL,
	`projectPK`	integer	NOT NULL
);

CREATE TABLE `company` (
	`companyPK`	integer	NOT NULL,
	`companyname`	varchar	NOT NULL
);

CREATE TABLE `project` (
	`pjPK`	integer	NOT NULL,
	`pjname`	varchar	NOT NULL,
	`pjmanager`	varchar	NOT NULL,
	`pjPM`	varchar	NOT NULL,
	`pjstartline`	date	NOT NULL,
	`projectnote`	varchar	NULL,
	`project_managerPK`	integer	NOT NULL,
	`progressPK`	integer	NOT NULL
);

CREATE TABLE `position` (
	`pstno`	integer	NOT NULL,
	`pstname`	varchar	NOT NULL,
	`pst_rankPK`	integer	NOT NULL
);

CREATE TABLE `reference` (
	`referencePK`	integer	NOT NULL,
	`original_file_name`	varchar	NOT NULL,
	`stored_file_name`	varchar	NOT NULL,
	`filesize`	long	NOT NULL,
	`estPK`	integer	NOT NULL
);

CREATE TABLE `dept` (
	`deptno`	integer	NOT NULL,
	`deptname`	varchar	NOT NULL
);

CREATE TABLE `manager` (
	`managerPK`	integer	NOT NULL,
	`managername`	varchar	NOT NULL,
	`managerphone`	varchar	NULL,
	`manageremail`	varchar	NULL,
	`managerdept`	varchar	NOT NULL,
	`companyPK`	integer	NOT NULL
);

CREATE TABLE `userauthority` (
	`uaPK`	integer	NOT NULL,
	`ua_userPK`	integer	NOT NULL,
	`ua_authorityPK`	integer	NOT NULL,
	`ua_projectPK`	integer	NOT NULL
);

CREATE TABLE `authority` (
	`authorityPK`	integer	NOT NULL,
	`authorityname`	varchar	NOT NULL
);

CREATE TABLE `progress` (
	`progressPK`	integer	NOT NULL,
	`progressname`	varchar	NOT NULL
);

CREATE TABLE `rank` (
	`rankPK`	integer	NOT NULL,
	`rankname`	varchar	NOT NULL
);

ALTER TABLE `users` ADD CONSTRAINT `PK_USERS` PRIMARY KEY (
	`userPK`
);

ALTER TABLE `estimation` ADD CONSTRAINT `PK_ESTIMATION` PRIMARY KEY (
	`estPK`
);

ALTER TABLE `company` ADD CONSTRAINT `PK_COMPANY` PRIMARY KEY (
	`companyPK`
);

ALTER TABLE `project` ADD CONSTRAINT `PK_PROJECT` PRIMARY KEY (
	`pjPK`
);

ALTER TABLE `position` ADD CONSTRAINT `PK_POSITION` PRIMARY KEY (
	`pstno`
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

ALTER TABLE `userauthority` ADD CONSTRAINT `PK_USERAUTHORITY` PRIMARY KEY (
	`uaPK`
);

ALTER TABLE `authority` ADD CONSTRAINT `PK_AUTHORITY` PRIMARY KEY (
	`authorityPK`
);

ALTER TABLE `progress` ADD CONSTRAINT `PK_PROGRESS` PRIMARY KEY (
	`progressPK`
);

ALTER TABLE `rank` ADD CONSTRAINT `PK_RANK` PRIMARY KEY (
	`rankPK`
);


