package com.lab24coffeeshop.Lab24CoffeeShop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lab24coffeeshop.Lab24CoffeeShop.entity.Item;

public interface ItemsRepository extends JpaRepository <Item, Integer> {

}
