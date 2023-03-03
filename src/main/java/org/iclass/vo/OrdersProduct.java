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
public class OrdersProduct {
private int pcode;
private int ocode;
private int quantity;
private Timestamp odate;
private String name;
private int price;
private String image;
}
