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
public class Review {
	private int rcode;	
	private int pcode; //-상품코드(FK)
	private int ocode;
	private String grade;
	private String review;
	private String ip;
	private Timestamp rdate;
	private String id;
}
