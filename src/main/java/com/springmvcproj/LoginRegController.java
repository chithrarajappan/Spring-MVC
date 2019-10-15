package com.springmvcproj;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ipsr.service.LoginService;
import com.pojo.Clubreg;
import com.pojo.Clubscore;
import com.pojo.Login;
import com.pojo.Matchclubs;
import com.pojo.Players;
import com.pojo.Playerscore;
import com.pojo.Schedulematch;
import com.pojo.Ticketbook;
import com.springmvc.dao.LoginDao;

@Controller
public class LoginRegController {
	 @Autowired  
	    LoginDao dao;//will inject dao from xml file  
	      
	    /*It displays a form to input data, here "command" is a reserved request attribute 
	     *which is used to display object data into form 
	     */  
	 @RequestMapping(value ="/login", method = RequestMethod.GET) 
	    public ModelAndView login(){  
	        return new ModelAndView("login","command",new Login());  
	    }
	 @RequestMapping(value ="/admin", method = RequestMethod.GET) 
	    public ModelAndView admin(){  
	        return new ModelAndView("admin","command",new Login());  
	    }
	 @RequestMapping(value ="/club", method = RequestMethod.GET) 
	    public ModelAndView club(){  
	        return new ModelAndView("club","command",new Login());  
	    }
	 @RequestMapping(value ="/player", method = RequestMethod.GET) 
	    public ModelAndView player(){  
	        return new ModelAndView("player","command",new Login());  
	    }
	 @RequestMapping(value = "/logAction")
		public ModelAndView checkuser(@RequestParam("username")String username,@RequestParam("password")String password,@RequestParam("category")String category,HttpServletRequest req,HttpServletResponse res,HttpSession session)
		{
			if(new LoginService().check(username,password,category))
			{
				//return new ModelAndView("userPage", "command", new User());
			    ModelAndView model = new ModelAndView();
				//model.addObject("thought", username);
			    //ModelAndView cat=model.addObject("thought", category);
			    session.setAttribute("uname",username);
		    	if(category.equals("admin"))
		    	{
		    		
		    		 return new ModelAndView("redirect:/admin");
		    	}
		    	else if(category.equals("club")){
		    		 return new ModelAndView("redirect:/club");
		    	}
		    	else if(category.equals("player")){
		    		 return new ModelAndView("redirect:/player");
		    	}
		    	else{
		    		return new ModelAndView("redirect:/login");
		    	}		    
			}
			else
			{
				ModelAndView model1=new ModelAndView("login");
				//model1.setViewName("login");
				return model1;
			}			
		}
	 @RequestMapping(value ="/register", method = RequestMethod.GET) 
	    public ModelAndView register(){  
	        return new ModelAndView("register","command",new Login());  
	    }  
	 @RequestMapping(value="/saveRegister",method = RequestMethod.POST)  
	    public ModelAndView save(@ModelAttribute("login") Login emp){  
	        dao.save(emp);  
	        return new ModelAndView("redirect:/login");//will redirect to viewemp request mapping  
	    } 
	 @RequestMapping("/Logout")  
	    public ModelAndView logout(String uname,HttpSession session){  
		 session.setAttribute("uname",null);
			
	        return new ModelAndView("redirect:/login"); 
	    } 
	 @RequestMapping("/clubhome")  
	    public ModelAndView clubhome(){  
	        List<Clubreg> list=dao.getClubsHome();  
	        return new ModelAndView("clubhome","list",list);  
	    }
	 @RequestMapping(value="/clubhomescore/{clubname}")  
	    public ModelAndView clubhomescore(@PathVariable String clubname){  
		 Clubscore cs1=dao.getClubhomeScore(clubname);  
	        return new ModelAndView("clubhomescore","command",cs1); 
	    }
	 @RequestMapping("/playerhome")  
	    public ModelAndView playerhome(){  
	        List<Players> list=dao.getPlayersHome();  
	        return new ModelAndView("playerhome","list",list);  
	    }
	 @RequestMapping(value="/playerhomescore/{name}")  
	    public ModelAndView playerhomescore(@PathVariable String name){  
		 Playerscore cs1=dao.getPlayerhomeScore(name);  
	        return new ModelAndView("playerhomescore","command",cs1); 
	    }
	 
	 @RequestMapping(value="/clubhomeplayers/{clubname}")  
	    public ModelAndView clubhomeplayers(@PathVariable String clubname){  
		 Players cs1=dao.getClubhomePlayers(clubname);  
	        return new ModelAndView("clubhomeplayers","command",cs1); 
	    }
	 
	 @RequestMapping("/matchScheduleguest")  
	    public ModelAndView matchSchedule(){  
	        List<Schedulematch> list=dao.getmatchSchedule();  
	        return new ModelAndView("matchScheduleguest","list",list);  
	    }
	 @RequestMapping(value="/allplayclubs/{scheduledate}")  
	    public ModelAndView allplayclubs(@PathVariable String scheduledate){  
		 Matchclubs cs1=dao.getClubhomeScheduledate(scheduledate);  
	        return new ModelAndView("allplayclubs","command",cs1); 
	    }
	 @RequestMapping("/ticketbook")  
	    public ModelAndView ticketbook(){  
	        List<Matchclubs> list=dao.getTicketBook();  
	        return new ModelAndView("ticketbook","list",list);  
	    }
	 @RequestMapping(value="/ticketbookingnow/{scheduledate}")  
	    public ModelAndView ticketbookingnow(@PathVariable String scheduledate){  
		 Matchclubs cs1=dao.getClubhomeScheduledate(scheduledate);  
	        return new ModelAndView("ticketbookingnow","command",cs1); 
	    }
	 @RequestMapping(value ="/ticketbookingprocess",method = RequestMethod.POST)  
	    public ModelAndView ticketbookingprocess(@ModelAttribute("tb") Ticketbook tb){  
	        dao.Ticketbooknow(tb);  
	        return new ModelAndView("redirect:/ticketbook");  
	    } 
	 
}
