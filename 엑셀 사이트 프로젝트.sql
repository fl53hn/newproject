CREATE TABLE `users` (
	`userPK`	integer	NOT NULL,
	`userid`	varchar	NOT NULL,
	`userpassword`	varchar	NOT NULL,
	`useremail`	varchar	NOT NULL,
	`username`	varchar	NOT NULL,
	`userbirth`	integer	NOT NULL,
	`usergender`	boolean	NOT NULL,
	`userdept`	varchar	NOT NULL,
	`Field`	integer	NOT NULL,
	`usercheck`	boolean	NOT NULL	DEFAULT 0
);

CREATE TABLE `administrator` (
	`adPK`	integer	NOT NULL,
	`adid`	varchar	NOT NULL,
	`adpassword`	varchar	NOT NULL,
	`ademail`	varchar	NOT NULL,
	`adname`	varchar	NOT NULL,
	`adbirth`	integer	NOT NULL,
	`adgender`	boolean	NOT NULL,
	`addept`	varchar	NOT NULL
);

CREATE TABLE `Untitled` (
	`pjPK`	integer	NOT NULL,
	`adPK`	integer	NOT NULL,
	`Key`	VARCHAR(255)	NOT NULL,
	`userPK`	integer	NOT NULL,
	`projecttitle`	VARCHAR(255)	NULL,
	`Field4`	VARCHAR(255)	NULL	COMMENT '프로젝트의 자세한 내용 기술필요',
	`Field5`	VARCHAR(255)	NULL
);

CREATE TABLE `CopyOfUntitled` (
	`pjPK`	integer	NOT NULL,
	`adPK`	integer	NOT NULL,
	`userPK`	integer	NOT NULL,
	`Key`	VARCHAR(255)	NOT NULL,
	`projectname`	VARCHAR(255)	NULL,
	`Field4`	VARCHAR(255)	NULL	COMMENT '프로젝트의 자세한 내용 기술필요',
	`Field5`	VARCHAR(255)	NULL
);

CREATE TABLE `Untitled2` (
	`Key`	VARCHAR(255)	NOT NULL,
	`Key2`	VARCHAR(255)	NOT NULL,
	`Field`	VARCHAR(255)	NULL
);

CREATE TABLE `Untitled3` (
	`Key`	VARCHAR(255)	NOT NULL,
	`Field`	VARCHAR(255)	NULL
);

ALTER TABLE `users` ADD CONSTRAINT `PK_USERS` PRIMARY KEY (
	`userPK`
);

ALTER TABLE `administrator` ADD CONSTRAINT `PK_ADMINISTRATOR` PRIMARY KEY (
	`adPK`
);

ALTER TABLE `Untitled` ADD CONSTRAINT `PK_UNTITLED` PRIMARY KEY (
	`pjPK`
);

ALTER TABLE `CopyOfUntitled` ADD CONSTRAINT `PK_COPYOFUNTITLED` PRIMARY KEY (
	`pjPK`
);

ALTER TABLE `Untitled2` ADD CONSTRAINT `PK_UNTITLED2` PRIMARY KEY (
	`Key`
);

ALTER TABLE `Untitled3` ADD CONSTRAINT `PK_UNTITLED3` PRIMARY KEY (
	`Key`
);

