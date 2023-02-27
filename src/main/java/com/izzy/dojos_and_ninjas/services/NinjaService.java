package com.izzy.dojos_and_ninjas.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izzy.dojos_and_ninjas.models.Ninja;
import com.izzy.dojos_and_ninjas.repositories.NinjaRepository;

@Service
public class NinjaService {

  @Autowired
  NinjaRepository ninjaRepo;

  // =========  READ ALL ==========
  public List<Ninja> allNinjas() {
    return ninjaRepo.findAll();
  }
  
  // ==========  CREATE  ===========
  public void createNinja(Ninja ninja) {
    ninjaRepo.save(ninja);
  }



}
