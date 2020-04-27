package com.spring.demo.server.controller;

import com.spring.demo.common.result.CodeMsg;
import com.spring.demo.common.result.Result;
import com.spring.demo.model.entity.User;
import com.spring.demo.server.config.rabbitmq.MQSender;
import com.spring.demo.server.config.redis.RedisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/demo")
public class SampleController {
	
	@Autowired
    RedisService redisService;

	@Autowired
    MQSender sender;
	
	/*@RequestMapping("/mq/header")
    @ResponseBody
    public Result<String> header() {
		sender.sendHeader("hello,imooc");
        return Result.success("Hello，world");
    }

	@RequestMapping("/mq/fanout")
    @ResponseBody
    public Result<String> fanout() {
		sender.sendFanout("hello,imooc");
        return Result.success("Hello，world");
    }

	@RequestMapping("/mq/topic")
    @ResponseBody
    public Result<String> topic() {
		sender.sendTopic("hello,imooc");
        return Result.success("Hello，world");
    }

	@RequestMapping("/mq")
    @ResponseBody
    public Result<String> mq() {
		sender.send("hello,imooc");
        return Result.success("Hello，world");
    }*/
}
