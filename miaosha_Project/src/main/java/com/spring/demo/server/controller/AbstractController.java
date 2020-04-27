package com.spring.demo.server.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;

/**
 * @author Administrator
 * @date 2019/10/31 9:43
 */

@Controller
public abstract class AbstractController {
    //日志
    protected Logger log = LoggerFactory.getLogger(getClass());

}
