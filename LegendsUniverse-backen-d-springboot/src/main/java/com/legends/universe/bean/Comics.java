package com.legends.universe.bean;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

@Data
@NoArgsConstructor
@ToString
@Accessors(chain = true)
public class Comics {
    private Integer comicsId;
    private String comicsImg;
    private String comicsName;
    private String comicsDetails;
    private String comicsDescription;
    private Double comicsPrice;
    private String contentDes;
    private String detailUrl;
}
