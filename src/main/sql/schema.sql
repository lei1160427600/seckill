--数据库初始化脚本
--创建数据库
CREATE DATABASE seckill;
--使用数据库
use seckill;
CREATE TABLE seckill(
'seckill_id' bigint NOT NUll AUTO_INCRERMENT COMMIT '商品库存id',
'name' VARCHAR (120) NOT NULL COMMIT '商品名称',
'number' int NOT NULL COMMIT '库存数量',
'start_time' TIMESTAMP NOT NULL COMMIT '秒杀开启时间',
'end_time'TIMESTAMP  NOT NULL COMMIT '秒杀结束时间',
'create_time' TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMIT '创建时间',
PRIMARY KEY (seckill_id),
KEY idx_start_time(start_time),
KEY idx_end_time(end_time),
KEY idx_create_time(create_time)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT charset=utf8 COMMIT '秒杀库存表'
