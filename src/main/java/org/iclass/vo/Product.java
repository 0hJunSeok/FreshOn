package org.iclass.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Product {
	private int pcode;
	private String category;
	private String subcategory;
	private String name;
	private int price;
	private String content;
	private String image;	
}
