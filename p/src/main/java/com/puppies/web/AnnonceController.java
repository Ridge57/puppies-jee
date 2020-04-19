package com.puppies.web;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.puppies.metier.dao.AnimalMetierDao;
import com.puppies.metier.dao.AnnonceMetierDao;
import com.puppies.service.entity.Animal;
import com.puppies.service.entity.Annonce;



@Controller
public class AnnonceController implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Autowired
	private AnimalMetierDao animalDao;
	
	@Autowired
	private AnnonceMetierDao annonceDao;
	
	@RequestMapping(value="/page_recherche")
	public ModelAndView pageRechercheRender(ModelAndView model) {
		model.setViewName("page_recherche_form");
		//animalDao.findAll(); 
		model.addObject("animaux",animalDao.findAll());
		return model;
	}
	
	@RequestMapping(value="/page_poster")
	public ModelAndView pagePosterRender(ModelAndView model) {
		List<Animal> animauxObj = animalDao.findAll();
		List<String> animauxStr = new ArrayList<String>();
		for(Animal a : animauxObj) {
			animauxStr.add(a.getFamille());
		}
		model.addObject("animaux", animauxStr);
		model.addObject("annonce", new Annonce());
		model.setViewName("page_poster_form");
		return model;
	}
	
	@RequestMapping(value="/all")
	public ModelAndView pageAllRender(ModelAndView model) {
		model.addObject("annonces",annonceDao.getAll());
		model.setViewName("page_resultat_recherche");
		return model;
	}
	
	@RequestMapping(value="/search")
	public ModelAndView pageSearchRender(@RequestParam(value="animal") String animal, @RequestParam(value="region") String region,ModelAndView model) {
		model.addObject("annonces",annonceDao.findAnnonce(animal, region));
		model.setViewName("page_resultat_recherche");
		return model;
	}
	
	@RequestMapping(value="/poster")
	public ModelAndView poster(Annonce annonce,ModelAndView model) {
		annonceDao.create(annonce);
		model.setViewName("index");
		return model;
	}

}
