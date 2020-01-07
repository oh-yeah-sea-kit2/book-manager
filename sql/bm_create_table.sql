
CREATE DATABASE bm;

-- ユーザテーブル
create table if not exists Users (
  user_id int(10) unsigned not null auto_increment comment 'ユーザID',
  mail_address varchar(50) default null comment 'メールアドレス',
  user_name varchar(255) default null comment 'ユーザ名',
  is_admin tinyint(1) default '0' comment '管理者フラグ',
  last_login_date datetime default null comment '最終ログイン日時',
  login_count int(11) unsigned not null default '0' comment 'ログイン回数',
  created datetime default null comment '作成日時',
  insert_user_id int(10) default null comment '作成ユーザID',
  modified datetime default null comment '更新日時',
  update_user_id int(10) default null comment '更新ユーザID',
  is_deleted tinyint(1) default '0' comment '削除フラグ',
  primary key (user_id)
) default charset=utf8 comment='ユーザマスタ';

-- 書籍情報マスタ
create table if not exists BookInfos (
  book_info_id int(10) unsigned not null auto_increment comment '書籍情報ID',
  isbn_10 varchar(20) default null comment 'ISBN-10',
  isbn_13 varchar(20) default null comment 'ISBN-13',
  book_title varchar(255) default null comment '書籍タイトル',
  book_author varchar(255) default null comment '著者名',
  book_publisher varchar(255) default null comment '出版社',
  book_release_date varchar(10) default null comment '発売日',
  book_genre varchar(255) default null comment 'ジャンル',
  book_image varchar(255) default null comment '表紙イメージ',
  created datetime default null comment '作成日時',
  insert_user_id int(10) default null comment '作成ユーザID',
  modified datetime default null comment '更新日時',
  update_user_id int(10) default null comment '更新ユーザID',
  is_deleted tinyint(1) default '0' comment '削除フラグ',
  primary key (book_info_id)
) default charset=utf8 comment='書籍情報マスタ';

-- 書籍マスタ（所持書籍を表す）
create table if not exists BookMaster (
  book_manage_id int(10) unsigned not null auto_increment comment '書籍管理ID',
  book_info_id int(10) default null comment '書籍情報ID',
  user_id int(10) default null comment 'ユーザID',
  created datetime default null comment '作成日時',
  insert_user_id int(10) default null comment '作成ユーザID',
  modified datetime default null comment '更新日時',
  update_user_id int(10) default null comment '更新ユーザID',
  is_deleted tinyint(1) default '0' comment '削除フラグ',
  primary key (book_manage_id)
) default charset=utf8 comment ='書籍マスタ';

-- 貸出返却マスタ
create table if not exists BookLendingStatuses (
  lending_id int(10) unsigned not null auto_increment comment '貸出返却ID',
  user_id int(10) default null comment 'ユーザID',
  book_manage_id int(10) default null comment '書籍管理ID',
  lending_datetime datetime default null comment '貸出日時',
  return_datetime datetime default null comment '返却日時',
  return_due_date date default null comment '返却予定日',
  is_returned tinyint(1) default '0' comment '返却フラグ',
  created datetime default null comment '作成日時',
  insert_user_id int(10) default null comment '作成ユーザID',
  modified datetime default null comment '更新日時',
  update_user_id int(10) default null comment '更新ユーザID',
  is_deleted tinyint(1) default '0' comment '削除フラグ',
  primary key (lending_id)
) default charset=utf8 comment='書籍貸出返却マスタ';


-- 貸出ルールテーブル
create table if not exists BookLentRule (
  rule_id int(10) unsigned not null auto_increment comment '貸出ルールID',
  rule_detail varchar(255) default null comment 'ルール内容',
  rule_comment varchar(255) default null comment 'ルール説明',
  rule_num int(255) default null comment 'ルール数値',
  is_enable_rule tinyint(1) default '0' comment 'ルール有効フラグ',
  created datetime default null comment '作成日時',
  insert_user_id int(10) default null comment '作成ユーザID',
  modified datetime default null comment '更新日時',
  update_user_id int(10) default null comment '更新ユーザID',
  is_deleted tinyint(1) default '0' comment '削除フラグ',
  primary key (rule_id)
) default charset=utf8 comment='貸出ルールマスタ';

-- API keyテーブル
create table if not exists APIKeys (
  api_id int(10) unsigned not null auto_increment comment 'API KeyID',
  api_name varchar(255) default null comment 'API Key名前',
  api_value varchar(255) default null comment 'API Key値',
  created datetime default null comment '作成日時',
  insert_user_id int(10) default null comment '作成ユーザID',
  modified datetime default null comment '更新日時',
  update_user_id int(10) default null comment '更新ユーザID',
  is_deleted tinyint(1) default '0' comment '削除フラグ',
  primary key (api_id)
) default charset=utf8 comment='API keyマスタ';
