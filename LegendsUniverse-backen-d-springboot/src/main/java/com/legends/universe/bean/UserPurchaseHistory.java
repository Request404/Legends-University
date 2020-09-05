package com.legends.universe.bean;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

@Data
@NoArgsConstructor
@ToString
@Accessors(chain = true)
public class UserPurchaseHistory {
    private Integer purchaseOrderId;
    private String purchaseUserName;
    private String purchaseDate;
    private Double purchasePay;
    private Integer purchaseComicsId;
    private Comics purchaseComics;
}
