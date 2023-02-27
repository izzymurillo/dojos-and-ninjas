package com.izzy.dojos_and_ninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izzy.dojos_and_ninjas.models.Dojo;
import com.izzy.dojos_and_ninjas.repositories.DojoRepository;

@Service
public class DojoService {
  
  @Autowired
  DojoRepository dojoRepo;

  // ==========  READ ALL  ==========
  public List<Dojo> allDojos() {
    return dojoRepo.findAll();
  }

  // ==========  CREATE  ===========
  public void createDojo(Dojo dojo) {
    dojoRepo.save(dojo);
  }

  // ========== FIND BY ID ==========
  public Dojo findDojo(Long id) {
    // use Optional in case the dojo doesn't exist
    Optional<Dojo> optionalDojo = dojoRepo.findById(id);
    if (optionalDojo.isPresent()) {
      return optionalDojo.get();
    } else {
      return null;
    }
  }

}
