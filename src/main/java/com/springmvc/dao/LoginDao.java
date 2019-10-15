package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.pojo.Clubreg;
import com.pojo.Clubscore;
import com.pojo.Login;
import com.pojo.Matchclubs;
import com.pojo.Players;
import com.pojo.Playerscore;
import com.pojo.Schedulematch;
import com.pojo.Ticketbook; 
public class LoginDao {
	JdbcTemplate template;  
	  
	public void setTemplate(JdbcTemplate template) {  
	    this.template = template;  
	}  
	public int save(Login p){  
	    String sql="insert into login(username,password,category,email)values('"+p.getUsername()+"','"+p.getPassword()+"','"+p.getCategory()+"','"+p.getEmail()+"')";  
	    return template.update(sql);  
	}
	public List<Clubreg> getClubsHome() {
		 return template.query("select * from clubreg where status='1'",new RowMapper<Clubreg>(){  
		        public Clubreg mapRow(ResultSet rs, int row) throws SQLException {  
		        	Clubreg Appr=new Clubreg();  
					Appr.setId(rs.getInt(1));  
					Appr.setClubname(rs.getString(2));  
					Appr.setEmail(rs.getString(3)); 
					Appr.setLocation(rs.getString(4)); 
					Appr.setHistory(rs.getString(5));
					Appr.setStadium(rs.getString(6));
					Appr.setHeadcoach(rs.getString(7));
					Appr.setDirector(rs.getString(8));
					Appr.setManager(rs.getString(9));
		            return Appr;  
		        }  
		    });  
	}
	public Clubscore getClubhomeScore(String clubname){  
	    String sql="select * from clubscore where clubname=?";  
	    return template.queryForObject(sql, new Object[]{clubname},new BeanPropertyRowMapper<Clubscore>(Clubscore.class));  
	}
	public List<Players> getPlayersHome(){  
	    return template.query("select * from players where status='1'",new RowMapper<Players>(){  
	        public Players mapRow(ResultSet rs, int row) throws SQLException {  
	        	Players p=new Players();  
	            p.setId(rs.getInt(1));  
	            p.setFirstname(rs.getString(2));  
	            p.setLastname(rs.getString(3)); 
	            p.setEmail(rs.getString(4)); 
	            p.setAge(rs.getInt(6)); 
	            p.setState(rs.getString(8)); 
	            p.setPhoneno(rs.getString(9)); 
	            p.setClub(rs.getString(10));
	            p.setGameposition(rs.getString(12));
	            p.setHeight(rs.getString(13));
	            p.setWeight(rs.getString(14));   
	            p.setYear_exp(rs.getInt(15));  
	            p.setNo_match(rs.getInt(16));  
	            p.setNo_win(rs.getInt(17));  
	            p.setNo_loss(rs.getInt(18));  
	            p.setNo_goal(rs.getInt(19));  
	            p.setNo_assist(rs.getInt(20));  
	            p.setNo_redcards(rs.getInt(21));
	            p.setNo_yellowcards(rs.getInt(22));
	            p.setScore_rank(rs.getInt(23));
	            p.setUsername(rs.getString(24));
	            p.setPassword(rs.getString(25));
	            p.setStatus(rs.getInt(26));
	            return p;  
	        }  
	    });  
	} 
	public Playerscore getPlayerhomeScore(String name){  
	    String sql="select * from playerscore where name=?";  
	    return template.queryForObject(sql, new Object[]{name},new BeanPropertyRowMapper<Playerscore>(Playerscore.class));  
	}
	public Players getClubhomePlayers(String club){  
	    String sql="select * from players where club=?";  
	    return template.queryForObject(sql, new Object[]{club},new BeanPropertyRowMapper<Players>(Players.class));  
	}
	
	public List<Schedulematch>getmatchSchedule(){  
	    return template.query("select * from schedulematch order by id DESC limit 1;",new RowMapper<Schedulematch>(){  
	        public Schedulematch mapRow(ResultSet rs, int row) throws SQLException {  
	        	Schedulematch sm=new Schedulematch();  
	            sm.setId(rs.getInt(1));  
	            sm.setSchedulename(rs.getString(2)); 
	            sm.setScheduledate(rs.getString(3));
	            sm.setScheduletime(rs.getString(4)); 
	            return sm;  
	        }  
	    });  
	}  
	public Matchclubs getClubhomeScheduledate(String matchdate){  
	    String sql="select * from matchclubs where matchdate=?";  
	    return template.queryForObject(sql, new Object[]{matchdate},new BeanPropertyRowMapper<Matchclubs>(Matchclubs.class));  
	}
	public List<Matchclubs>getTicketBook(){  
	    return template.query("select * from matchclubs;",new RowMapper<Matchclubs>(){  
	        public Matchclubs mapRow(ResultSet rs, int row) throws SQLException {  
	        	Matchclubs mc=new Matchclubs();  
	            mc.setId(rs.getInt(1));  
	            mc.setMatchname(rs.getString(2)); 
	            mc.setMatchdate(rs.getString(3)); 
	            mc.setMatchtime(rs.getString(4));
	            mc.setClub1(rs.getString(5));
	            mc.setClub2(rs.getString(6));
	            return mc;  
	        }  
	    });  
	} 
	public int Ticketbooknow(Ticketbook tb){  
	    String sql="INSERT INTO `ticketbook`(`matchname`, `matchdate`, `matchtime`, `viewername`, `email`, `contact`, `noseats`, `cashamount`, `Bank`, `accountno`,`status`,`remark`) VALUES ('"+tb.getMatchname()+"','"+tb.getMatchdate()+"','"+tb.getMatchtime()+"','"+tb.getViewername()+"','"+tb.getEmail()+"','"+tb.getContact()+"','"+tb.getNoseats()+"','"+tb.getCashamount()+"','"+tb.getBank()+"','"+tb.getAccountno()+"','"+tb.getStatus()+"','"+tb.getRemark()+"')";  
	    return template.update(sql);  
	}
	
}
