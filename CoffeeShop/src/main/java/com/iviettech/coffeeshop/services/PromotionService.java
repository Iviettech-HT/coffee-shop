/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.iviettech.coffeeshop.services;

import com.iviettech.coffeeshop.entities.PromotionEntity;
import com.iviettech.coffeeshop.repositories.PromotionRepository;
import java.util.Date;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author admin
 */
@Service
public class PromotionService {
    @Autowired
    private PromotionRepository promotionRepository;
    
    public Set<PromotionEntity> getPromotionsAvailable(){
        return promotionRepository.getPromotionsAvailable(new Date());
    }
}