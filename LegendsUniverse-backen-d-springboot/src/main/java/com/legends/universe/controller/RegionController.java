package com.legends.universe.controller;

import com.legends.universe.bean.Region;
import com.legends.universe.mapper.RegionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("region")
public class RegionController {

    @Autowired
    RegionMapper regionMapper;

    @GetMapping("getAllRegions")
    public List<Region> getAllRegions(){
        return regionMapper.getAllRegions();
    }
}
