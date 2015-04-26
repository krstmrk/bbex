
use test;
DROP TABLE members;


CREATE TABLE `members` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `regdate` date NOT NULL,
  `permission` varchar(45) NOT NULL,
  `balance` double NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert into members(first_name, last_name, email, uname, pass, regdate, permission, balance) 
values ('admin_account','','admin@a.com','admin','pass', '1-1-1', 'admin', 0);
