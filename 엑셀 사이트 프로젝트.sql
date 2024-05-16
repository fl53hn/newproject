CREATE TABLE `user` (
	`userPK`	integer	NOT NULL,
	`userid`	varchar	NOT NULL,
	`userpassword`	varchar	NOT NULL,
	`useremail`	varchar	NOT NULL,
	`username`	varchar	NOT NULL,
	`userbirth`	date	NOT NULL,
	`usergender`	boolean	NOT NULL,
	`userdept`	varchar	NOT NULL,
	`userdate`	date	NOT NULL,
	`usercheck`	integer	NOT NULL	DEFAULT 0	COMMENT '0:대기,1:승인',
	`user_positionno`	integer	NOT NULL
);

CREATE TABLE `estimation2` (
	`est2PK`	integer	NOT NULL,
	`est2sep`	varchar	NOT NULL,
	`est2material`	varchar	NOT NULL,
	`est2reviewtype`	varchar	NOT NULL,
	`est2floorplanno`	integer	NOT NULL	COMMENT '번호라서int적음 var가능',
	`est2volapp`	varchar	NOT NULL,
	`est2note`	varchar	NULL,
	`est2refer`	varchar	NULL,
	`est2_costomerno`	integer	NOT NULL,
	`est2_userPK`	integer	NOT NULL,
	`projectPK`	integer	NOT NULL
);

CREATE TABLE `estimation` (
	`estPK`	integer	NOT NULL,
	`estsep`	varchar	NOT NULL,
	`estsep2`	varchar	NOT NULL,
	`estpart`	varchar	NOT NULL,
	`estfloor`	varchar	NOT NULL	COMMENT '층 수만 써있으면 int 가능',
	`estfloorplan`	varchar	NOT NULL	COMMENT 'varchar로 바꿔도 됨',
	`estfloorplanname`	varchar	NOT NULL,
	`estquestions`	varchar	NULL	COMMENT 'null 가능한지',
	`estvolapp`	varchar	NULL,
	`estreply`	varchar	NOT NULL	COMMENT '회신 여부 묻는용이면 int가능',
	`estrefer`	varchar	NULL,
	`est_customerno`	integer	NOT NULL,
	`est_userPK`	integer	NOT NULL,
	`projectPK`	integer	NOT NULL
);

CREATE TABLE `customer` (
	`customerPK`	integer	NOT NULL,
	`userPK2`	integer	NOT NULL,
	`customername`	varchar	NOT NULL
);

CREATE TABLE `project` (
	`projectPK`	integer	NOT NULL,
	`projecttitle`	varchar	NOT NULL,
	`project_userPK`	integer	NOT NULL,
	`project_customerno`	integer	NOT NULL
);

CREATE TABLE `position` (
	`positionno`	integer	NOT NULL,
	`positionname`	varchar	NOT NULL,
	`positionrank`	varchar	NOT NULL,
	`positionrankno`	integer	NOT NULL
);

CREATE TABLE `reference` (
	`referencePK`	integer	NOT NULL,
	`image`	image	NULL,
	`Field2`	VARCHAR(255)	NULL
);

ALTER TABLE `user` ADD CONSTRAINT `PK_USER` PRIMARY KEY (
	`userPK`
);

ALTER TABLE `estimation2` ADD CONSTRAINT `PK_ESTIMATION2` PRIMARY KEY (
	`est2PK`
);

ALTER TABLE `estimation` ADD CONSTRAINT `PK_ESTIMATION` PRIMARY KEY (
	`estPK`
);

ALTER TABLE `customer` ADD CONSTRAINT `PK_CUSTOMER` PRIMARY KEY (
	`customerPK`
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

