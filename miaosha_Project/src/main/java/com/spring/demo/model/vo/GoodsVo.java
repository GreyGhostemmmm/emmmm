package com.spring.demo.model.vo;

import com.spring.demo.model.entity.Goods;
import lombok.Data;

import java.util.Date;
@Data
public class GoodsVo extends Goods {
	private Double miaoshaPrice;
	private Integer stockCount;
	private Date startDate;
	private Date endDate;
}
