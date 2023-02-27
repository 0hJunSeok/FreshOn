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
public class Cart {
	private int ccode;
	private String id;
	private int pcode;
	private int quantity;
	private int totalprice;	
	
	private String name;
	private int price;
	private String image;

	private int sumquant;
	private int sumtotal;
}
