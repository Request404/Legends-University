package com.legends.universe.bean;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

@Data
@NoArgsConstructor
@ToString
@Accessors(chain = true)
public class Region {
    private String regionName;
    private String regionImg;
    private String regionIco;
}
