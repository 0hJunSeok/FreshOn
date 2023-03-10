package org.iclass.vo;

import java.sql.Timestamp;

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
public class Orders {
	private int ocode;
	private String id;
	private int pcode;
	private int quantity;
	private int totalprice;
	private Timestamp odate;
	private int ccode;
	private String name;
	private int price;
}
