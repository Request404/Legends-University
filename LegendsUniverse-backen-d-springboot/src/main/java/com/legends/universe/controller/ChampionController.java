package com.legends.universe.controller;

import com.legends.universe.bean.Champion;
import com.legends.universe.mapper.ChampionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("champion")
public class ChampionController {

    @Autowired
    ChampionMapper championMapper;

    @GetMapping("getAllChampions")
    public List<Champion> getAllChampions(){
        return championMapper.getAllChampions();
    }

    @GetMapping("getChampionByName")
    public List<Champion> getChampionByName(String name){
        name = name+"%";
        return championMapper.getChampionByName(name);
    }
}
