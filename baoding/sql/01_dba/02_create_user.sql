/*cmd root 登陆mysql数据库执行*/
--建立用户
CREATE USER 'bddb'@'localhost' IDENTIFIED BY 'bddb#123'; 
--给用户赋权
grant all privileges on bddb.* to bddb@localhost identified by 'bddb#123';