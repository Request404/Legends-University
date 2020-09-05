package com.legends.universe.mapper;

import com.legends.universe.bean.Comics;
import com.legends.universe.bean.ComicsScrollData;

import java.util.List;

public interface ComicsMapper {

    //查询所以comics
    public List<Comics> getAllComics();
    //按照id查询comics
    public Comics getComicsById(Integer comicsId);
    //查询滚动cube的数据
    public List<ComicsScrollData> getAllScrollData();
}
