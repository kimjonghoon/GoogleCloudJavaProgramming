#SpringBbsMysql

##A Bulletin Board Program with
* Spring MVC
* MyBatis-Spring
* Spring-Security
* Bean Validation
* i18n
* Apache Tiles

##Database Design
	mysql --user=root --password mysql
	
	create user 'java'@'%' identified by 'school';
	grant all privileges on *.* to 'java'@'%';
	
	create database javaschool;
	exit;
	
	mysql --user=java --password javaschool

	create table member (
	    email varchar(60) PRIMARY KEY,
	    passwd varchar(200) NOT NULL,
	    name varchar(20) NOT NULL,
	    mobile varchar(20)
	);
	 
	create table authorities (
	    email VARCHAR(60) NOT NULL,
	    authority VARCHAR(20) NOT NULL,
	    CONSTRAINT fk_authorities FOREIGN KEY(email) REFERENCES member(email)
	);
	 
	CREATE UNIQUE INDEX ix_authorities ON authorities(email,authority); 
	 
	create table board (
	    boardcd varchar(20),
	    boardnm varchar(40) NOT NULL,
	    boardnm_ko varchar(40) NOT NULL,
	    constraint PK_BOARD PRIMARY KEY(boardcd)
	);
	 
	create table article (
	    articleno int NOT NULL AUTO_INCREMENT,
	    boardcd varchar(20),
	    title varchar(200) NOT NULL,
	    content text NOT NULL,
	    email varchar(60),
	    hit bigint,    
	    regdate datetime,
	    nickname varchar(20),
	    constraint PK_ARTICLE PRIMARY KEY(articleno),
	    constraint FK_ARTICLE FOREIGN KEY(boardcd) REFERENCES board(boardcd)
	);
	 
	create table comments (
	    commentno int NOT NULL AUTO_INCREMENT,
	    articleno int,    
	    email varchar(60),    
	    memo varchar(4000) NOT NULL,
	    regdate datetime,
	    nickname varchar(20), 
	    constraint PK_COMMENTS PRIMARY KEY(commentno)
	);
	 
	create table attachfile (
	    attachfileno int NOT NULL AUTO_INCREMENT,
	    filename varchar(255) NOT NULL,
	    filetype varchar(255),
	    filesize bigint,
	    articleno int,
	    email varchar(60),
	    filekey varchar(255),
	    creation datetime,
	    constraint PK_ATTACHFILE PRIMARY KEY(attachfileno)
	);
	
	insert into board values ('free','Free','자유 게시판');
	commit;

##Have to do
1. Edit UPLOAD_PATH in net.java_school.commons.WebContants.java
2. Edit full path of your log file in /src/main/resources/log4j.xml's <param name="File" value="Full path of your log file"/>
3. Download JDBC Driver at <https://dev.mysql.com/downloads/connector/j/>
4. Copy the Oracle JDBC driver(mysql-connector-java-5.1.40-bin.jar) to the {TOMCAT_HOME}/lib directory

##How to compile
	mvn clean compile war:inplace



