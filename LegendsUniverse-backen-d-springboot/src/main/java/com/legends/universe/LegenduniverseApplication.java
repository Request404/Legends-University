package com.legends.universe;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan(value = "com.legends.universe.mapper")
@SpringBootApplication
public class LegenduniverseApplication {

    public static void main(String[] args) {
        SpringApplication.run(LegenduniverseApplication.class, args);
    }

}
