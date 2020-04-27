package com.spring.demo.model.entity;

import lombok.Data;

@Data
public class Goods {
	private Long id;
	private String name;
	private String title;
	private String img;
	private String detail;
	private Double price;
	private Integer stock;
}
