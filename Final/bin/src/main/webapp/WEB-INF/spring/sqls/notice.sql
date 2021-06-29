DROP SEQUENCE NOTICESEQ;
DROP TABLE NOTICEBOARD;

CREATE SEQUENCE NOTICESEQ;

CREATE TABLE NOTICEBOARD(
	BOARDSEQ NUMBER PRIMARY KEY,
	BOARDNAME VARCHAR2(100) NOT NULL,
	BOARDTITLE VARCHAR2(1000) NOT NULL,
	BOARDCONTENT VARCHAR2(4000) NOT NULL,
	USERSEQ NUMBER NOT NULL,
	BOARDDATE DATE NOT NULL
);