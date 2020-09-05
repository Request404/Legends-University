package com.legends.universe.bean;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

@Data
@NoArgsConstructor
@ToString
@Accessors(chain = true)
public class Champion {
    private Integer id;
    private String name;
    private String region;
    private String imgUrl;
    private String imgPosition;
}
