package com.gamespot.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.gamespot.DAO.categorydao;
import com.gamespot.DAO.productdao;
import com.gamespot.DAO.supplierdao;
import com.gamespot.DAO.userregdao;
import com.gamespot.model.categorymodel;
import com.gamespot.model.productmodel;
import com.gamespot.model.suppliermodel;
import com.gamespot.model.userreg;

@Controller

public class HomeController {
	@Autowired
	userregdao d;
	@Autowired
	categorydao e;
	@Autowired
	productdao g;
	@Autowired
	supplierdao h;
	
	

	@RequestMapping(value = { "/", "/home" })
	String indexPage() {
		return "index";
	}

	@RequestMapping("/contactus")
	String contactusPage() {
		return "contactus";
	}

	@RequestMapping("/aboutus")
	String aboutusPage() {
		return "aboutus";
	}

	@RequestMapping("/signin")
	String signinPage(@RequestParam(value="error",required=false)String Error,@RequestParam(value="logout",required=false)String Log,Model m) {
		if(Error!=null)
		{
			m.addAttribute("msg","Username or password incorrect");
		}
		else if(Log!=null)
		{
			m.addAttribute("msg","You are successfully logout");
		}
		m.addAttribute("regmodel", new userreg());
		return "signin";
	}

	@RequestMapping("/getuser")
	String getuser(@Valid @ModelAttribute("regmodel") userreg r, BindingResult br, Model m) {
		if (br.hasErrors()) {
			System.out.println("dfadf");
			m.addAttribute("regmodel", r);
			return "signin";
		} else {
			if (d.insertuser(r)) {
				System.out.println("dvfvcv");
				return "signin";
			} else {
				System.out.println("ddsfds");
				m.addAttribute("regmodel", r);
				return "signin";
			}
		}

	}
	
	@RequestMapping(value={"/login"},method=RequestMethod.GET)
	public String loginController(@RequestParam("usename")String email,@RequestParam("userpassword") String password){
		System.out.println(email);
		System.out.println(password);
		boolean userExist=false;
		List<userreg> alluser=d.showall();
		if(alluser.isEmpty())
		{
			System.out.println("im empty");
		}
		for(userreg usr:alluser)
		{
			if(usr.getUemail().equals(email) && usr.getUpassword().equals(password))
			{
				userExist=true;
			}
		}
		
		System.out.println(userExist);
		if(userExist)
		{
			System.out.println("welcome Mr"+ email);
			return "index";
		}
		else
		{
			return "redirect:/signin";
		}
		
		//return "index";
	}



	@RequestMapping("/categoryadd")
	String categoryaddPage(Model n) {
		n.addAttribute("catmodel", new categorymodel());
		System.out.println(e.showall());
		n.addAttribute("cattable", e.showall());
		n.addAttribute("check", true);
		return "categoryadd";
	}
	@RequestMapping("/catadd")
	String catadd(@Valid @ModelAttribute("catmodel") categorymodel q, BindingResult br, Model n) {
		if (br.hasErrors()) {

			n.addAttribute("catmodel", q);
			return "categoryadd";
		}

		else {
			if (e.insertuser(q)) {
				n.addAttribute("catmodel", q);
				return "redirect:/categoryadd";
			} else {
				n.addAttribute("cattable", e.showall());
				n.addAttribute("catmodel", q);
				return "categoryadd";
			}

		}
	}
	@RequestMapping("/removecat/{num}")
	String removecat(@PathVariable("num")int id){
		if(e.deleteuser(id)){
			return "redirect:/categoryadd";
		}
		else{
			return "categoryadd";
		}
		
	}
	@RequestMapping("/removesup/{num}")
	String removesup(@PathVariable("num")int id){
		if(h.deleteuser(id)){
			return "redirect:/supplieradd";
		}
		else{
			return "supplieradd";
		}
		
	}
	@RequestMapping("/removepro/{num}")
	String removepro(@PathVariable("num")int id){
		if(g.deleteuser(id)){
			return "redirect:/productadd";
		}
		else{
			return "productadd";
		}
		
	}
	@RequestMapping("/supedit")
	String supedit(@RequestParam("getsupid")int id, Model l){
		
	l.addAttribute("supmodel",h.showone(id));
	l.addAttribute("suptable" ,h.showall());
		return "supplieradd";	
	}
	@RequestMapping("/supup")
	String supup(@Valid @ModelAttribute("supmodel") suppliermodel b, BindingResult br, Model l) {
		if (br.hasErrors()) {

			l.addAttribute("supmodel", b);
			return "supplieradd";
		}

		else {
			if (h.updateuser(b)) {
				l.addAttribute("supmodel", b);
				return "redirect:/supplieradd";
			} else {
				l.addAttribute("suptable" ,h.showall());
				l.addAttribute("supmodel", b);
				return "supplieradd";
			}
		}

		}
	@RequestMapping("/catid")
	String catid(@RequestParam("getcatid")int id, Model n){
	n.addAttribute("catmodel",e.showone(id));
	n.addAttribute("cattable" ,e.showall());
	n.addAttribute("check", false);
		return "categoryadd";	
	}
	@RequestMapping("/catup")
	String catup(@Valid @ModelAttribute("catmodel") categorymodel q, BindingResult br, Model n) {
		if (br.hasErrors()) {

			n.addAttribute("catmodel", q);
			return "categoryadd";
		}

		else {
			if (e.updateuser(q)) {
				n.addAttribute("catmodel", q);
				return "redirect:/categoryadd";
			} else {
				n.addAttribute("cattable", e.showall());
				n.addAttribute("catmodel", q);
				return "categoryadd";
			}

		}
	}

		@RequestMapping("/proid")
	String proid(@RequestParam("getproid")int id, Model p){
		
	p.addAttribute("promodel",g.showone(id));
	p.addAttribute("protable" ,g.showall());
		return "productadd";	
	}
		@RequestMapping("/proup")
		String proup(@Valid @ModelAttribute("promodel") productmodel f, BindingResult br, Model p) {
			if (br.hasErrors()) {

				p.addAttribute("promodel", f);
				return "productadd";
			}

			else {
				if (g.updateuser(f)) {
					p.addAttribute("promodel", f);
					return "redirect:/productadd";
				} else {
					p.addAttribute("protable" ,g.showall());
					p.addAttribute("promodel", f);
					return "productadd";
				}
			}
			}


	@RequestMapping("/productadd")
	String productaddPage(Model p) 
	{
		System.out.println(g.showall());
		p.addAttribute("promodel", new productmodel());
		p.addAttribute("protable" ,g.showall());
		p.addAttribute("check", true);
		return "productadd";
	}

	@RequestMapping("/proadd")
	String proadd(@Valid @ModelAttribute("promodel") productmodel f, BindingResult br, Model p)throws Exception  {
		if (br.hasErrors()) {

			p.addAttribute("promodel", f);
			return "productadd";
		}

		else {
			if (g.insertProduct(f)) {
				
				String filePath= "G:\\ECP1\\gamespotfrontend\\src\\main\\webapp\\resources\\productimage\\";
				filePath= filePath+String.valueOf(f.getId())+".jpg";
				File t=new File(filePath);
				MultipartFile imagefile=f.getProductimage();
				if(!t.exists())
				{
					byte[] imageBytes=imagefile.getBytes();
					FileOutputStream fileOutputStream=new FileOutputStream(t);
					/*BufferedOutputStream bufferedOutputStream=new BufferedOutputStream(fileOutputStream);
					bufferedOutputStream.write(imageBytes);
					bufferedOutputStream.close();*/
					fileOutputStream.write(imageBytes);
					fileOutputStream.close();
				}
				p.addAttribute("promodel", f);
				return "redirect:/productadd";
			} else {
				p.addAttribute("protable" ,g.showall());
				p.addAttribute("promodel", f);
				return "productadd";
			}

		}
	}
    
	@RequestMapping("/supplieradd")
	String supplieraddPage(Model l) {
		l.addAttribute("supmodel", new suppliermodel());
		l.addAttribute("suptable" ,h.showall());
		l.addAttribute("check", true);
		return "supplieradd";
		
	}
	
	

	
	
	
	@RequestMapping("/supadd")
	String supadd(@Valid @ModelAttribute("supmodel") suppliermodel b, BindingResult br, Model l) {
		if (br.hasErrors()) {

			l.addAttribute("supmodel", b);
			return "supplieradd";
		}

		else {
			if (h.insertuser(b)) {
				l.addAttribute("supmodel", b);
				return "redirect:/supplieradd";
			} else {
				l.addAttribute("suptable" ,h.showall());
				l.addAttribute("supmodel", b);
				return "supplieradd";
			}

		}
	}
	
	
	
	@RequestMapping("/plogin")
	String loginPage(@RequestParam(value="error",required=false)String Error,@RequestParam(value="logout",required=false)String Log,Model m)
	{
		
		if(Error!=null)
			m.addAttribute("msg","Username or password incorrect");
		else if(Log!=null)
			m.addAttribute("msg","You are successfully logout");
		return "login";
	}

	@RequestMapping("/loginsuccess")
	public String loginsuccess(HttpSession session,Model M) 
	{
		String role = "ROLE_USER";
		String userid = SecurityContextHolder.getContext().getAuthentication().getName();
		System.out.println(userid);
		userreg us=d.showuser(userid);
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		for (GrantedAuthority authority : authorities) 
		{
			if (authority.getAuthority().equals(role)) 
			{
				session.setAttribute("UserLoggedIn", us.getUsername());
			}
			else
			{
				session.setAttribute("AdminLoggedIn", us.getUsername());
			}
			
		}
		return "redirect:/home";
	}
}
