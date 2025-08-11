CREATE   TABLE   TUSER (
     USERID      VARCHAR2(12)  PRIMARY KEY
   , PASSWD      VARCHAR2(12)  NOT NULL
   , USERNAME    VARCHAR2(30)  NOT NULL
   , EMAIL       VARCHAR2(320)
   , UPOINT      NUMBER(10)    DEFAULT 0  
   , INDATE      DATE          DEFAULT SYSDATE
);

INSERT INTO tuser (
    userid,
    passwd,
    username,
    email,
    upoint,
    indate
) VALUES (
    'sky',
    '1234',
    '관리자',
    'admin@green.com',
    1000,
    sysdate
);

commit;




-- 멀티 게시판 
DROP    TABLE  BOARD;
CREATE  TABLE  BOARD (
     IDX          NUMBER(8, 0)         PRIMARY KEY
   , MENU_ID      VARCHAR2(6)
      REFERENCES  MENUS ( MENU_ID )
   , TITLE        VARCHAR2(300 BYTE)   NOT NULL
   , CONTENT      VARCHAR2(4000 BYTE)
   , WRITER       VARCHAR2(12)
   , REGDATE      DATE                 DEFAULT  SYSDATE
   , HIT          NUMBER(9, 0)         DEFAULT  0
);

INSERT INTO BOARD (IDX, MENU_ID, TITLE, CONTENT, WRITER)
 VALUES (
   ( SELECT NVL(MAX(IDX),0)+1 FROM BOARD  )
   , 'MENU01', '반갑습니다', '인사드립니다', 'ADMIN');
COMMIT;  