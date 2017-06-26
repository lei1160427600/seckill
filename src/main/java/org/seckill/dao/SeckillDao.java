package org.seckill.dao;

import org.seckill.entity.Seckill;

import java.util.Date;
import java.util.List;

/**
 * Created by xue on 2017/6/25.
 */
public interface SeckillDao {
    int reduceNumber(long seckillId,Date killTime);

    Seckill queryByID(long seckillId);

    List<Seckill> queryAll(int offset, int limit);
}
