package com.spring.demo.server.config.redis;

import redis.clients.jedis.Jedis;

/**
 * @author Administrator
 * @date 2020/4/11 11:46
 */

public class redisTest {
    public static void main(String[] args) {
        Jedis jedis = new Jedis("127.0.0.1");
        System.out.println("redis:test");
        System.out.println(jedis.ping());
        //设置 redis 字符串数据
        jedis.set("runoobkey", "www.runoob.com");
        // 获取存储的数据并输出
        System.out.println("redis 存储的字符串为: "+ jedis.get("runoobkey"));
    }
}
