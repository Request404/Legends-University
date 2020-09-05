package com.legends.universe.mapper;

import com.legends.universe.bean.Champion;

import java.util.List;

public interface ChampionMapper {

    //查询所有Champions
    public List<Champion> getAllChampions();
    //按照name查询Champions
    public List<Champion> getChampionByName(String name);

}
