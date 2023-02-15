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
public class product {
	private int pcode;
	private int category;
	private String name;
	private int price;
	private String content;
	private String image;	
}
