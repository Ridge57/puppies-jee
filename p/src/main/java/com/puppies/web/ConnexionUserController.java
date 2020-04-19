package com.puppies.web;

import java.io.Serializable;
import java.util.Map;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.puppies.metier.dao.UserMetierDao;
import com.puppies.service.entity.User;



@Controller
public class ConnexionUserController implements Serializable {

	private static final long serialVersionUID = 1L;
	//private User u = new User();
	private boolean Connected = false;
	
	@Autowired
	private UserMetierDao userDao;
	
	@RequestMapping(value="/")
	public ModelAndView indexRenderFirstConnexion(ModelAndView model,HttpSession session) {
		session.setAttribute("Connected", Connected);
		model.setViewName("index");
		//model.addObject("Connected",Connected);
		return model;
	}
	
	@RequestMapping(value="/index")
	public ModelAndView indexRender(ModelAndView model) {
		model.setViewName("index");
		//model.addObject("Connected",Connected);
		return model;
	}
	
	@RequestMapping(value="/page_connexion")
	public ModelAndView connexionRender(ModelAndView model) {
		model.addObject("user", new User());
		model.setViewName("page_connexion");
		return model;
	}
	
	
	@RequestMapping(value="/connexion")
	public ModelAndView verifierUtilisateur(User u,ModelAndView model,HttpSession session) {
		User us = userDao.find(u);
		if(us!=null) {
			Connected=true;
			session.setAttribute("Connected", Connected);
			session.setAttribute("userName", us.getNom());
			if(us.getAdmin()==1) {model.setViewName("admin_accueil");}
			else {model.setViewName("index");}
		}else {model.setViewName("erreur_connection");}
		return model;
	}
	
	@RequestMapping(value="/page_creation_compte")
	public ModelAndView creationCompteRender(ModelAndView model) {
		model.addObject("user", new User());
		model.setViewName("page_creation_compte");
		return model;
	}
	
	@RequestMapping(value="/creationCompte")
	public ModelAndView creerUtilisateur(User u,ModelAndView model,HttpSession session) {
		u.setAdmin(0);
		int i = userDao.createUser(u);
		if(i==1) {model.setViewName("index");}
		else{ model.setViewName("creationcompte_erreur");}
		return model;
	}

	@RequestMapping(value="/deconnexion")
	public String deconnexion(HttpSession session) {
		Connected=false;
		session.setAttribute("Connected", Connected);
		 return "redirect:/index";
	}

}
