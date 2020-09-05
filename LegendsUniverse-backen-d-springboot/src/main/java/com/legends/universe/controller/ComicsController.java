package com.legends.universe.controller;

import com.legends.universe.bean.Comics;
import com.legends.universe.bean.ComicsScrollData;
import com.legends.universe.mapper.ComicsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("comics")
public class ComicsController {

    @Autowired
    ComicsMapper comicsMapper;

    @GetMapping("getAllComics")
    public List<Comics> getAllComics(){
        return comicsMapper.getAllComics();
    }

    @GetMapping("getComicsById")
    public Comics getComicsById(Integer comicsId){
        return comicsMapper.getComicsById(comicsId);
    }

    @GetMapping("getAllScrollData")
    public  List<ComicsScrollData> getAllScrollData(){
        return comicsMapper.getAllScrollData();
    }
}
