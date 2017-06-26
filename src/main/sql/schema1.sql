-- 鏁版嵁搴撳垵濮嬪寲鑴氭湰

-- 鍒涘缓鏁版嵁搴�
CREATE DATABASE seckill;
-- 浣跨敤鏁版嵁搴�
use seckill;
CREATE TABLE seckill(
  `seckill_id` BIGINT NOT NUll AUTO_INCREMENT COMMENT '鍟嗗搧搴撳瓨ID',
  `name` VARCHAR(120) NOT NULL COMMENT '鍟嗗搧鍚嶇О',
  `number` int NOT NULL COMMENT '搴撳瓨鏁伴噺',
  `start_time` TIMESTAMP  NOT NULL COMMENT '绉掓潃寮�濮嬫椂闂�',
  `end_time`   TIMESTAMP   NOT NULL COMMENT '绉掓潃缁撴潫鏃堕棿',
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  PRIMARY KEY (seckill_id),
  key idx_start_time(start_time),
  key idx_end_time(end_time),
  key idx_create_time(create_time)
)ENGINE=INNODB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='绉掓潃搴撳瓨琛�';

-- 鍒濆鍖栨暟鎹�
INSERT into seckill(name,number,start_time,end_time)
VALUES
  ('1000鍏冪鏉�iphone6',100,'2016-01-01 00:00:00','2016-01-02 00:00:00'),
  ('800鍏冪鏉�ipad',200,'2016-01-01 00:00:00','2016-01-02 00:00:00'),
  ('6600鍏冪鏉�mac book pro',300,'2016-01-01 00:00:00','2016-01-02 00:00:00'),
  ('7000鍏冪鏉�iMac',400,'2016-01-01 00:00:00','2016-01-02 00:00:00');

-- 绉掓潃鎴愬姛鏄庣粏琛�
-- 鐢ㄦ埛鐧诲綍璁よ瘉鐩稿叧淇℃伅(绠�鍖栦负鎵嬫満鍙�)
CREATE TABLE success_killed(
  `seckill_id` BIGINT NOT NULL COMMENT '绉掓潃鍟嗗搧ID',
  `user_phone` BIGINT NOT NULL COMMENT '鐢ㄦ埛鎵嬫満鍙�',
  `state` TINYINT NOT NULL DEFAULT -1 COMMENT '鐘舵�佹爣璇�:-1:鏃犳晥 0:鎴愬姛 1:宸蹭粯娆� 2:宸插彂璐�',
  `create_time` TIMESTAMP NOT NULL COMMENT '鍒涘缓鏃堕棿',
  PRIMARY KEY(seckill_id,user_phone),/*鑱斿悎涓婚敭*/
  KEY idx_create_time(create_time)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='绉掓潃鎴愬姛鏄庣粏琛�';

  -- SHOW CREATE TABLE seckill;#鏄剧ず琛ㄧ殑鍒涘缓淇℃伅