package org.seckill.dao;

import org.seckill.entity.SuccessKilled;

/**
 * Created by xue on 2017/6/26.
 */
public interface SuccessKilledDao {
    int insertSuccessKilled(long seckillId,long userPhone);

    SuccessKilled queryByIdWidthSeckill(long seckillId);
}
