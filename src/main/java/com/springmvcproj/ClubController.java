package com.springmvcproj;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.pojo.Players;
import com.pojo.Playerscore;
import com.pojo.Schedulematch;
import com.pojo.Ticketbook;
import com.springmvc.dao.ClubDao;

import com.pojo.Clubreg;
import com.pojo.Clubscore;
import com.pojo.Matchclubs;
import com.pojo.Matchregister;
@Controller
public class ClubController {
	 @Autowired  
	    ClubDao cdao;//will inject dao from xml file  
	 
	 @RequestMapping(value ="/Addnewplayer", method = RequestMethod.GET) 
	    public ModelAndView Addnewplayer(){  
	        return new ModelAndView("addnewplayer","command",new Players());  
	    }
	 @RequestMapping(value ="/clubprofile", method = RequestMethod.GET) 
	    public ModelAndView clubprofile(){  
	        return new ModelAndView("clubprofile","command",new Clubreg());  
	    }
	 
	 @RequestMapping(value="/playerprocess",method = RequestMethod.POST)  
	    public ModelAndView playersave(@ModelAttribute("play") Players play){  
	        cdao.savePlayer(play);  
	        return new ModelAndView("redirect:/addnewplayer");//will redirect to viewemp request mapping  
	    } 
	 @RequestMapping(value="/clubprofprocess",method = RequestMethod.POST)  
	    public ModelAndView clubsave(@ModelAttribute("club") Clubreg club){  
	        cdao.saveClub(club);  
	        return new ModelAndView("redirect:/clubprofile");//will redirect to viewemp request mapping  
	    } 
	 @RequestMapping("/viewclub")  
	    public ModelAndView viewclub(){  
	        List<Clubreg> list=cdao.getClubs();  
	        return new ModelAndView("viewclub","list",list);  
	    }
	 @RequestMapping("/viewclubonly")  
	    public ModelAndView viewclubonly(){  
	        List<Clubreg> list=cdao.getClubs();  
	        return new ModelAndView("viewclubonly","list",list);  
	    }
	 @RequestMapping("/clubviewall")  
	    public ModelAndView clubviewall(){  
	        List<Clubreg> list=cdao.getViewClubsAll();  
	        return new ModelAndView("clubviewall","list",list);  
	    }
	 
	 @RequestMapping("/approverejectclub")
	   public ModelAndView approverejectclub(){
		    List<Clubreg> list1=cdao.getClubApprove();
		    return new ModelAndView("approveclub","list",list1);
	 }
	 @RequestMapping(value="/approveclubreg/{id}",method = RequestMethod.GET)  
	    public ModelAndView approveregclub(@PathVariable int id){  
	        cdao.approveregclub(id);  
	        return new ModelAndView("redirect:/approverejectclub");  
	    }  
	 @RequestMapping(value="/rejectclubreg/{id}",method = RequestMethod.GET)  
	    public ModelAndView rejectregclub(@PathVariable int id){  
	        cdao.rejectregclub(id);  
	        return new ModelAndView("redirect:/approverejectclub");  
	    }  
	 @RequestMapping("/viewplayer")  
	    public ModelAndView viewplayer(){  
	        List<Players> list1=cdao.getPlayers();  
	        return new ModelAndView("viewplayer","list",list1);  
	    }
	 @RequestMapping("/viewplayeronly")  
	    public ModelAndView viewplayeronly(){  
	        List<Players> list1=cdao.getPlayers();  
	        return new ModelAndView("viewplayeronly","list",list1);  
	    }
	 @RequestMapping("/viewplayerall")  
	    public ModelAndView viewplayerall(){  
	        List<Players> list1=cdao.getPlayersAll();  
	        return new ModelAndView("viewplayerall","list",list1);  
	    }
	 
	 @RequestMapping(value="/playerdetails/{id}")  
	    public ModelAndView playerdetails(@PathVariable int id){  
	        Players ply=cdao.getplayerdetails(id);  
	        return new ModelAndView("moreplayerdetails","command",ply); 
	    }
	 @RequestMapping(value="/clubplayerdetails/{id}")  
	    public ModelAndView clubplayerdetails(@PathVariable int id){  
	        Players ply=cdao.getplayerdetails(id);  
	        return new ModelAndView("clubmoreplayerdetails","command",ply); 
	    }
	 @RequestMapping(value="/onlyplayerdetails/{id}")  
	    public ModelAndView onlyplayerdetails(@PathVariable int id){  
	        Players ply=cdao.getplayerdetails(id);  
	        return new ModelAndView("onlymoreplayerdetails","command",ply); 
	    }
	 @RequestMapping("/approverejectplayer")
	   public ModelAndView approverejectplayer(){
		    List<Players> list1=cdao.getPlayerApprove();
		    return new ModelAndView("approveplayer","list",list1);
	 }
	 @RequestMapping(value="/approveplayerreg/{id}",method = RequestMethod.GET)  
	    public ModelAndView approveplayerreg(@PathVariable int id){  
	        cdao.approveplayerreg(id);  
	        return new ModelAndView("redirect:/approverejectplayer");  
	    }
	 @RequestMapping(value="/rejectplayerreg/{id}",method = RequestMethod.GET)  
	    public ModelAndView rejectregplayer(@PathVariable int id){  
	        cdao.rejectregplayer(id);  
	        return new ModelAndView("redirect:/approverejectplayer");  
	    }
	 @RequestMapping(value ="/schedulematchdate", method = RequestMethod.GET) 
	    public ModelAndView schedulematchdate(){  
	        return new ModelAndView("schedulematch","command",new Schedulematch());  
	    }
	 
	 @RequestMapping(value="/scheduledateprocess",method = RequestMethod.POST)  
	    public ModelAndView scheduledateprocess(@ModelAttribute("sched") Schedulematch sched){  
	        cdao.scheduledateprocess(sched);  
	        return new ModelAndView("redirect:/schedulematchdate");//will redirect to viewemp request mapping  
	    } 
	 @RequestMapping("/matchschedule")  
	    public ModelAndView matchschedule(){  
	        List<Schedulematch> list=cdao.getMatchSchedule();  
	        return new ModelAndView("viewmatchschedule","list",list);  
	    } 
	 @RequestMapping("/viewplayermatchschedule")  
	    public ModelAndView playermatchschedule(){  
	        List<Schedulematch> list=cdao.getMatchSchedule();  
	        return new ModelAndView("viewplayermatchschedule","list",list);  
	    } 
	
	 @RequestMapping(value ="/matchregister", method = RequestMethod.GET) 
	    public ModelAndView matchregister(){  
	        return new ModelAndView("matchregister","command",new Matchregister());  
	    }
	  
	 @RequestMapping(value="/matchprocess",method = RequestMethod.POST)  
	    public ModelAndView matchregprocess(@ModelAttribute("matchreg") Matchregister matchreg){  
	        cdao.matchReg(matchreg);  
	        return new ModelAndView("redirect:/matchschedule");//will redirect to viewemp request mapping  
	    }
	 @RequestMapping("/viewmatchregister")
	   public ModelAndView viewmatchregister(){
		    List<Matchregister> list1=cdao.getViewMatchRegister();
		    return new ModelAndView("viewmatchregister","list",list1);
	 }
	 @RequestMapping(value="/approvematchreg/{id}",method = RequestMethod.GET)  
	    public ModelAndView approvematchreg(@PathVariable int id){  
	        cdao.approvematchreg(id);  
	        return new ModelAndView("redirect:/viewmatchregister");  
	    }
	 @RequestMapping(value="/rejectmatchreg/{id}",method = RequestMethod.GET)  
	    public ModelAndView rejectmatchreg(@PathVariable int id){  
	        cdao.rejectmatchreg(id);  
	        return new ModelAndView("redirect:/viewmatchregister");  
	    }
	 @RequestMapping(value ="/clubmatchscore", method = RequestMethod.GET) 
	    public ModelAndView clubmatchscore(){  
	        return new ModelAndView("clubmatchscore","command",new Clubscore());  
	    }
	 @RequestMapping(value="/clubscoreprocess",method = RequestMethod.POST)  
	    public ModelAndView clubscoreprocess(@ModelAttribute("clubscore") Clubscore clubscore){  
	        cdao.clubScore(clubscore);  
	        return new ModelAndView("redirect:/clubmatchscore");//will redirect to viewemp request mapping  
	    }
	 @RequestMapping(value ="/playermatchscore", method = RequestMethod.GET) 
	    public ModelAndView playermatchscore(){  
	        return new ModelAndView("playermatchscore","command",new Playerscore());  
	    }
	 @RequestMapping(value="/playerscoreprocess",method = RequestMethod.POST)  
	    public ModelAndView playerscoreprocess(@ModelAttribute("playerscore") Playerscore playerscore){  
	        cdao.playerScore(playerscore);  
	        return new ModelAndView("redirect:/playermatchscore");//will redirect to viewemp request mapping  
	    }
	 @RequestMapping("/viewclubscoreonly")  
	    public ModelAndView viewclubscoreonly(){  
	        List<Clubscore> list=cdao.getViewClubsScore();  
	        return new ModelAndView("viewclubscoreonly","list",list);  
	    }
	 @RequestMapping("/viewclubscoremore")  
	    public ModelAndView viewclubscoremore(){  
	        List<Clubscore> list=cdao.getViewClubsScore();  
	        return new ModelAndView("viewclubscoremore","list",list);  
	    }
	 @RequestMapping("/adminviewclubscoremore")  
	    public ModelAndView adminviewclubscoremore(){  
	        List<Clubscore> list=cdao.getViewClubsScore();  
	        return new ModelAndView("adminviewclubscoremore","list",list);  
	    
	 }
	 @RequestMapping("/adminviewclubscore")  
	    public ModelAndView adminviewclubscore(){  
	        List<Clubscore> list=cdao.getViewClubsScore();  
	        return new ModelAndView("adminviewclubscore","list",list);  
	    }
	 @RequestMapping("/viewclubscoredetail")  
	    public ModelAndView viewclubscoredetail(){  
	        List<Clubscore> list=cdao.getViewClubsScore();  
	        return new ModelAndView("viewclubscoredetail","list",list);  
	    }
	 @RequestMapping("/viewclubscoredetailmore")  
	    public ModelAndView viewclubscoredetailmore(){  
	        List<Clubscore> list=cdao.getViewClubsScore();  
	        return new ModelAndView("viewclubscoredetailmore","list",list);  
	    }
	 @RequestMapping("/adminviewplayerscore")  
	    public ModelAndView adminviewplayerscore(){  
	        List<Playerscore> list=cdao.getViewPlayersScore();  
	        return new ModelAndView("adminviewplayerscore","list",list);  
	    }
	 @RequestMapping("/adminviewplayerscoremore")  
	    public ModelAndView adminviewplayerscoremore(){  
	        List<Playerscore> list=cdao.getViewPlayersScore();  
	        return new ModelAndView("adminviewplayerscoremore","list",list);  
	    }
	 @RequestMapping("/viewplayerscoreonly")  
	    public ModelAndView viewplayerscoreonly(){  
	        List<Playerscore> list=cdao.getViewPlayersScore();  
	        return new ModelAndView("viewplayerscoreonly","list",list);  
	    }
	 @RequestMapping("/viewplayerscoreonlymore")  
	    public ModelAndView viewplayerscoreonlymore(){  
	        List<Playerscore> list=cdao.getViewPlayersScore();  
	        return new ModelAndView("viewplayerscoreonlymore","list",list);  
	    }
	 @RequestMapping("/viewplayerscoreonlyclub")  
	    public ModelAndView viewplayerscoreonlyclub(){  
	        List<Playerscore> list=cdao.getViewPlayersScore();  
	        return new ModelAndView("viewplayerscoreonlyclub","list",list);  
	    }
	 @RequestMapping("/viewplayerscoreclubmore")  
	    public ModelAndView viewplayerscoreclubmore(){  
	        List<Playerscore> list=cdao.getViewPlayersScore();  
	        return new ModelAndView("viewplayerscoreclubmore","list",list);  
	    }
	 @RequestMapping(value="/playerprofileview/{username}")  
	    public ModelAndView playerprofileview(@PathVariable String username){  
		 Players pl=cdao.getPlayerProfile(username);  
	        return new ModelAndView("playerprofileview","command",pl); 
	    }
	 @RequestMapping(value="/clubprofileview/{username}")  
	    public ModelAndView clubprofileview(@PathVariable String username){  
		 Clubreg cr=cdao.getClubProfile(username);  
	        return new ModelAndView("clubprofileview","command",cr); 
	    }
	 @RequestMapping(value="/updateplayermatchscore/{name}")  
	    public ModelAndView updateplayermatchscore(@PathVariable String name){  
		 Playerscore ps1=cdao.getPlayerScore(name);  
	        return new ModelAndView("updateplayermatchscore","command",ps1); 
	    }
	 @RequestMapping(value="/updateplayerscore",method = RequestMethod.POST)  
	    public ModelAndView updateplayerscore(@ModelAttribute("pl") Playerscore pl){  
	        cdao.updateplayerscore(pl);  
	        return new ModelAndView("redirect:/viewplayerscoreonly");  
	    } 
	 @RequestMapping(value="/updateclubmatchscore/{clubname}")  
	    public ModelAndView updateclubmatchscore(@PathVariable String clubname){  
		 Clubscore cs1=cdao.getClubScore(clubname);  
	        return new ModelAndView("updateclubmatchscore","command",cs1); 
	    }
	 @RequestMapping(value="/updateclubscore",method = RequestMethod.POST)  
	    public ModelAndView updateclubscore(@ModelAttribute("cs") Clubscore cs){  
	        cdao.updateclubscore(cs);  
	        return new ModelAndView("redirect:/viewclubscoredetail");  
	    } 
	 @RequestMapping(value="/matchstatus/{clubname}")  
	    public ModelAndView matchstatus(@PathVariable String clubname){ 
		 Matchregister mr=cdao.getMatchStatus(clubname);
	        return new ModelAndView("matchstatus","command",mr); 
	    }
	 @RequestMapping(value ="/addmatchclubs", method = RequestMethod.GET) 
	    public ModelAndView addmatchclubs(){  
	        return new ModelAndView("addmatchclubs","command",new Matchclubs());  
	    }
	  
	 @RequestMapping(value="/matchclubsprocess",method = RequestMethod.POST)  
	    public ModelAndView matchclubsprocess(@ModelAttribute("mc") Matchclubs mc){  
	        cdao.matchClub(mc);  
	        return new ModelAndView("redirect:/addmatchclubs");//will redirect to viewemp request mapping  
	    }
	 @RequestMapping("/viewplayclubs")  
	    public ModelAndView viewplayclubs(){  
	        List<Matchclubs> list=cdao.getViewPlayClubs();  
	        return new ModelAndView("viewplayclubs","list",list);  
	    }
	 
	 @RequestMapping("/matchplayStatus")  
	    public ModelAndView matchplayStatus(){  
	        List<Matchclubs> list=cdao.getViewPlayClubs();  
	        return new ModelAndView("matchplayStatus","list",list);  
	    }
	 @RequestMapping("/matchplayStatusmore")  
	    public ModelAndView matchplayStatusmore(){  
	        List<Matchclubs> list=cdao.getViewPlayClubs();  
	        return new ModelAndView("matchplayStatusmore","list",list);  
	    }
	 @RequestMapping("/viewticketbooking")  
	    public ModelAndView viewticketbooking(){  
	        List<Ticketbook> list=cdao.getViewTicketBook();  
	        return new ModelAndView("viewticketbooking","list",list);  
	    }
	 @RequestMapping(value="/ticketmoreview/{id}")  
	    public ModelAndView ticketmoreview(@PathVariable int id){  
	        Ticketbook ply=cdao.getticketbookdetails(id);  
	        return new ModelAndView("ticketmoreview","command",ply); 
	    }
	 @RequestMapping(value="/approveticket",method = RequestMethod.POST)  
	    public ModelAndView approveticket(@ModelAttribute("at") Ticketbook at){  
	        cdao.ApproveTicket(at);  
	        return new ModelAndView("redirect:/viewticketbooking");//will redirect to viewemp request mapping  
	    }
	 
}
