package com.legends.universe.bean;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

@Data
@NoArgsConstructor
@ToString
@Accessors(chain = true)
public class ComicsScrollData {
    private String comicName;
    private String imgUrl;
    private String author;
    private String description;
}
