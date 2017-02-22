package com.niit.shoppingcart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.shoppingcart.dao.SuppilerDAO;
import com.niit.shoppingcart.model.Suppiler;

@Controller
public class SuppilerController {

	@Autowired
	SuppilerDAO sd;

	@ModelAttribute("Suppiler")
	public Suppiler createSupplier() {
		return new Suppiler();
	}

	
	
	@RequestMapping("/addSuppiler")
	public ModelAndView display3() {

		ModelAndView mv3 = new ModelAndView("addSuppiler");
		return mv3;
	}
	@RequestMapping("viewsuppilers")
	public ModelAndView display8() {
		ModelAndView m4 = new ModelAndView("viewsuppilers");
		return m4;
	}
	@RequestMapping("viewsuppiler")
	public ModelAndView display9() {
		ModelAndView m4 = new ModelAndView("viewsuppiler");
		return m4;
	}
	@RequestMapping("editsuppiler")
	public ModelAndView display15() {
		ModelAndView m6 = new ModelAndView("editsuppiler");
		return m6;

	}	
	@RequestMapping(value = "listsup", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody String showList()
	{
		List list = sd.getAllSuppilers();
		Gson x = new Gson();
		String json = x.toJson(list);
		return json;
	}

	 @RequestMapping(value="editsuppiler",method=RequestMethod.GET)
	    public ModelAndView editSup(@RequestParam int id){
		 Suppiler supplier1=sd.getSingleSuppiler(id);
	    	return new ModelAndView("editsuppiler","Supplier",supplier1);
	    }

	@RequestMapping(value="storesuppiler",method=RequestMethod.POST)
	public String addSuppiler(HttpServletRequest request,@Valid @ModelAttribute("Suppiler")Suppiler suppiler,BindingResult result)
	{
		System.out.println(result.hasErrors());
		if(result.hasErrors())
		{
			return "addSuppiler";
			
		}
		sd.saveOrUpdate(suppiler);
		return "redirect:/viewsuppilers";
	}
	@RequestMapping(value = "viewsuppiler", method = RequestMethod.GET)
	public ModelAndView viewSup(@RequestParam int id, @ModelAttribute Suppiler suppliers) {
		Suppiler supplier = sd.getSingleSuppiler(id);
		return new ModelAndView("viewsuppiler", "Supplier", supplier);
	}
	 @RequestMapping(value="updatesuppiler",method=RequestMethod.POST)
	    public String updateSupplier(HttpServletRequest request,@Valid @ModelAttribute("Suppiler")Suppiler editsup,BindingResult result,Model model)
	    {
			sd.update(editsup);
			return "redirect:/viewsuppilers";
	    }	 
		
	 @RequestMapping("/deletesuppiler")
		public String deleteSupplier(@RequestParam int id) {
			sd.delete(id);
			return "redirect:/viewsuppilers";
		}

	}
