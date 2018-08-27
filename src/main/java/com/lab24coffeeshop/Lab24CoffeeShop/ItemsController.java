package com.lab24coffeeshop.Lab24CoffeeShop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lab24coffeeshop.Lab24CoffeeShop.dao.ItemsRepository;
import com.lab24coffeeshop.Lab24CoffeeShop.entity.Item;

@Controller
public class ItemsController {
	
	@Autowired
	ItemsRepository itemDao;
	
	@RequestMapping("/")
	public ModelAndView home() {
		return new ModelAndView("index","item", itemDao.findAll());
	}
	
	//path variable is required to identify which food we want to edit
	@RequestMapping("/item/{id}/update")
	public ModelAndView showEditForm(@PathVariable("id") Item item) {
		ModelAndView mv = new ModelAndView("update");
		//first is expressions language tag
		//second is value that the expressions language tag refers to.
		mv.addObject("title", "Update Item");
		mv.addObject("item", item);
			
		return mv;
	}
	
	@PostMapping("/item/{id}/update")
	public ModelAndView submitEditForm(Item item) { 
		
		itemDao.save(item);
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping("/item/create")
	public ModelAndView showAddForm() {
		ModelAndView mv = new ModelAndView("update");
		//first is expressions language tag (variable name left side)
		//second is value that the expressions language tag refers to. (value assigned to variable right side)
		mv.addObject("title", "Add Item");
		
			
		return mv;
	}
	
	@PostMapping("/item/create")
	public ModelAndView submitAddForm(Item item) { 
		
		itemDao.save(item);
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping("/item/{id}/delete")
	public ModelAndView deleteItem(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("redirect:/");
		itemDao.deleteById(id);
			
		return mv;
	}
}
