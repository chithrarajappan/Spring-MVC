package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.pojo.Clubreg;
import com.pojo.Clubscore;
import com.pojo.Matchclubs;
import com.pojo.Matchregister;
import com.pojo.Players;
import com.pojo.Playerscore;
import com.pojo.Schedulematch;
import com.pojo.Ticketbook;

public class ClubDao {
	JdbcTemplate template;  
	  
	public void setTemplate(JdbcTemplate template) {  
	    this.template = template;  
	}  
	
	public int savePlayer(Players pl)
	{
		String sql="INSERT INTO `players`(`firstname`, `lastname`, `email`, `address`, `age`, `dob`, `state`, `phoneno`, `club`, `manager`, `gameposition`, `height`, `weight`, `year_exp`, `no_match`, `no_win`, `no_loss`, `no_goal`, `no_assist`, `no_redcards`, `no_yellowcards`, `score_rank`, `username`,`password`,`status`) values('"+pl.getFirstname()+"','"+pl.getLastname()+"','"+pl.getEmail()+"','"+pl.getAddress()+"','"+pl.getAge()+"','"+pl.getDob()+"','"+pl.getState()+"','"+pl.getPhoneno()+"','"+pl.getClub()+"','"+pl.getManager()+"','"+pl.getGameposition()+"','"+pl.getHeight()+"','"+pl.getWeight()+"','"+pl.getYear_exp()+"','"+pl.getNo_match()+"','"+pl.getNo_win()+"','"+pl.getNo_loss()+"','"+pl.getNo_goal()+"','"+pl.getNo_assist()+"','"+pl.getNo_redcards()+"','"+pl.getNo_yellowcards()+"','"+pl.getScore_rank()+"','"+pl.getUsername()+"','"+pl.getPassword()+"','"+pl.getStatus()+"')";  
	    return template.update(sql);  
	}
	public int saveClub(Clubreg cr)
	{
		String sql="INSERT INTO `clubreg`(`clubname`, `email`, `location`, `history`, `stadium`, `headcoach`, `director`, `manager`, `username`, `status`) values('"+cr.getClubname()+"','"+cr.getEmail()+"','"+cr.getLocation()+"','"+cr.getHistory()+"','"+cr.getStadium()+"','"+cr.getHeadcoach()+"','"+cr.getDirector()+"','"+cr.getManager()+"','"+cr.getUsername()+"','"+cr.getStatus()+"')";
		return template.update(sql);  
	}

	public List<Clubreg> getClubs(){  
	    return template.query("select * from clubreg where status='1'",new RowMapper<Clubreg>(){  
	        public Clubreg mapRow(ResultSet rs, int row) throws SQLException {  
	        	Clubreg e=new Clubreg();  
	            e.setId(rs.getInt(1));  
	            e.setClubname(rs.getString(2));  
	            e.setEmail(rs.getString(3)); 
	            e.setLocation(rs.getString(4)); 
	            e.setHistory(rs.getString(5));
	            e.setStadium(rs.getString(6));
	            e.setHeadcoach(rs.getString(7));
	            e.setDirector(rs.getString(8));
	            e.setManager(rs.getString(9));
	            return e;  
	        }  
	    });  
	}  
	public List<Clubreg> getViewClubsAll(){  
	    return template.query("select * from clubreg where status='1'",new RowMapper<Clubreg>(){  
	        public Clubreg mapRow(ResultSet rs, int row) throws SQLException {  
	        	Clubreg e=new Clubreg();  
	            e.setId(rs.getInt(1));  
	            e.setClubname(rs.getString(2));  
	            e.setEmail(rs.getString(3)); 
	            e.setLocation(rs.getString(4)); 
	            e.setHistory(rs.getString(5));
	            e.setStadium(rs.getString(6));
	            e.setHeadcoach(rs.getString(7));
	            e.setDirector(rs.getString(8));
	            e.setManager(rs.getString(9));
	            return e;  
	        }  
	    });  
	}  
	
	public List<Clubreg>getClubApprove()
	{
		 return template.query("select * from clubreg where status='0'",new RowMapper<Clubreg>(){	
			public Clubreg mapRow(ResultSet rs, int rowNum) throws SQLException {
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
	public int approveregclub(int id){  
	    String sql="update clubreg set status='1' where id="+id+"";  
	    return template.update(sql);  
	} 
	public int rejectregclub(int id){  
	    String sql="delete from clubreg where id="+id+"";  
	    return template.update(sql);  
	} 
	
	public List<Players> getPlayers(){  
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
	            return p;  
	        }  
	    });  
	} 
	public List<Players> getPlayersAll(){  
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
	            return p;  
	        }  
	    });  
	} 
	
	public Players getplayerdetails(int id){  
	    String sql="select * from players where id=?";  
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Players>(Players.class));  
	}
	public List<Players> getPlayerApprove(){  
	    return template.query("select * from players where status='0'",new RowMapper<Players>(){  
	        public Players mapRow(ResultSet rs, int row) throws SQLException {  
	        	Players p=new Players();  
	            p.setId(rs.getInt(1));  
	            p.setFirstname(rs.getString(2));  
	            p.setLastname(rs.getString(3)); 
	            p.setEmail(rs.getString(4)); 
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
	public int approveplayerreg(int id){  
	    String sql="update players set status='1' where id="+id+"";  
	    return template.update(sql);  
	} 
	
	public int rejectregplayer(int id){  
	    String sql="delete from player where id="+id+"";  
	    return template.update(sql);  
	} 
	public int scheduledateprocess(Schedulematch sm)
	{
		String sql="INSERT INTO `schedulematch`(`scheduledate`,`schedulename`,`scheduletime`) values ('"+sm.getScheduledate()+"','"+sm.getSchedulename()+"','"+sm.getScheduletime()+"')";  
	    return template.update(sql);  
	}
	public List<Schedulematch>getMatchSchedule(){  
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
	public Schedulematch getMatchregister(int id){  
	    String sql="select * from schedulematch where id=?";  
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Schedulematch>(Schedulematch.class));  
	}
	public int matchReg(Matchregister mr)
	{   
		String sql="INSERT INTO `matchregister`(`schedulename`, `scheduledate`, `clubname`, `manager`, `email`, `phoneno`, `no_players`, `no_attendmatch`, `win`, `goal`, `score_rank`) VALUES ('"+mr.getSchedulename()+"','"+mr.getScheduledate()+"','"+mr.getClubname()+"','"+mr.getManager()+"','"+mr.getEmail()+"','"+mr.getPhoneno()+"','"+mr.getNo_players()+"','"+mr.getNo_attendmatch()+"','"+mr.getWin()+"','"+mr.getGoal()+"','"+mr.getScore_rank()+"')";
		return template.update(sql);	
	}
	public List<Matchregister> getViewMatchRegister(){  
	    return template.query("select * from matchregister where status='0'",new RowMapper<Matchregister>(){  
	        public Matchregister mapRow(ResultSet rs, int row) throws SQLException {  
	        	Matchregister mr=new Matchregister();  
	            mr.setId(rs.getInt(1));  
	            mr.setSchedulename(rs.getString(2));  
	            mr.setScheduledate(rs.getString(3)); 
	            mr.setClubname(rs.getString(4)); 
	            mr.setManager(rs.getString(5));
	            mr.setEmail(rs.getString(6));
	            mr.setPhoneno(rs.getString(7));
	            mr.setNo_players(rs.getInt(8));   
	            mr.setNo_attendmatch(rs.getInt(9));  
	            mr.setWin(rs.getInt(10));  
	            mr.setGoal(rs.getInt(11));  
	            mr.setScore_rank(rs.getInt(12));  
	            return mr;  
	        }  
	    });  
	} 
	public int approvematchreg(int id){
		String sql="update matchregister set status='1' and remark='Your Match Registeration Accepted' where id="+id+"";  
	    return template.update(sql);  
	}
	public int rejectmatchreg(int id){
		String sql="update matchregister set status='2' and remark='Your Match Registeration Rejected' where id="+id+"";  
	    return template.update(sql);  
	}
	public int clubScore(Clubscore cs){
		String sql="INSERT INTO `clubscore`(`clubname`, `gameplayed`, `win`, `draw`, `loss`, `goalfor`, `goalagainst`, `score`) VALUES ('"+cs.getClubname()+"','"+cs.getGameplayed()+"','"+cs.getWin()+"','"+cs.getDraw()+"','"+cs.getLoss()+"','"+cs.getGoalfor()+"','"+cs.getGoalagainst()+"','"+cs.getScore()+"')";
		return template.update(sql);
	}
	public int playerScore(Playerscore ps){
		String sql="INSERT INTO `playerscore`(`name`, `club`, `win`, `loss`, `goal`, `assist`, `redcard`, `yellowcard`, `rank`) VALUES ('"+ps.getName()+"','"+ps.getClub()+"','"+ps.getWin()+"','"+ps.getLoss()+"','"+ps.getGoal()+"','"+ps.getAssist()+"','"+ps.getRedcard()+"','"+ps.getYellowcard()+"','"+ps.getRank()+"')";
		return template.update(sql);
	}
	public List<Clubscore> getViewClubsScore(){  
	    return template.query("select * from clubscore",new RowMapper<Clubscore>(){  
	        public Clubscore mapRow(ResultSet rs, int row) throws SQLException {  
	        	Clubscore cs=new Clubscore();  
	            cs.setId(rs.getInt(1));  
	            cs.setClubname(rs.getString(2));  
	            cs.setGameplayed(rs.getInt(3)); 
	            cs.setWin(rs.getInt(4)); 
	            cs.setDraw(rs.getInt(5));
	            cs.setLoss(rs.getInt(6));
	            cs.setGoalfor(rs.getInt(7));
	            cs.setGoalagainst(rs.getInt(8));
	            cs.setScore(rs.getInt(9));
	           	return cs;  
	        }  
	    });  
	}  
	public List<Playerscore>getViewPlayersScore(){
		return template.query("select * from playerscore",new RowMapper<Playerscore>(){  
	        public Playerscore mapRow(ResultSet rs, int row) throws SQLException {  
	        	Playerscore ps=new Playerscore();  
	            ps.setId(rs.getInt(1));  
	            ps.setName(rs.getString(2));  
	            ps.setClub(rs.getString(3)); 
	            ps.setWin(rs.getInt(4)); 
	            ps.setLoss(rs.getInt(5));
	            ps.setGoal(rs.getInt(6));
	            ps.setAssist(rs.getInt(7));
	            ps.setRedcard(rs.getInt(8));
	            ps.setYellowcard(rs.getInt(9));
	            ps.setRank(rs.getInt(10));
	           	return ps;  
	        }  
	    });  
		
	}
	public Clubreg getClubProfile(String username){  
	    String sql="select * from clubreg where username=?";  
	    return template.queryForObject(sql, new Object[]{username},new BeanPropertyRowMapper<Clubreg>(Clubreg.class));  
	}
	public Players getPlayerProfile(String username){  
	    String sql="select * from players where username=?";  
	    return template.queryForObject(sql, new Object[]{username},new BeanPropertyRowMapper<Players>(Players.class));  
	}
	public Playerscore getPlayerScore(String name){  
	    String sql="select * from playerscore where name=?";  
	    return template.queryForObject(sql, new Object[]{name},new BeanPropertyRowMapper<Playerscore>(Playerscore.class));  
	}
	
	public int updateplayerscore(Playerscore p){  
	    String sql="update playerscore set name='"+p.getName()+"', club='"+p.getClub()+"', win='"+p.getWin()+"', loss='"+p.getLoss()+"', goal='"+p.getGoal()+"', assist='"+p.getAssist()+"', redcard='"+p.getRedcard()+"', yellowcard='"+p.getYellowcard()+"', rank='"+p.getRank()+"' where id="+p.getId()+"";  
	    return template.update(sql);  	
	} 
	public Clubscore getClubScore(String clubname){  
	    String sql="select * from clubscore where clubname=?";  
	    return template.queryForObject(sql, new Object[]{clubname},new BeanPropertyRowMapper<Clubscore>(Clubscore.class));  
	}
	public int updateclubscore(Clubscore c){  
	    String sql="update clubscore set clubname='"+c.getClubname()+"', gameplayed='"+c.getGameplayed()+"',win='"+c.getWin()+"',draw='"+c.getDraw()+"',loss='"+c.getLoss()+"',goalfor='"+c.getGoalfor()+"',goalagainst='"+c.getGoalagainst()+"',score='"+c.getScore()+"' where id="+c.getId()+"";  
	    return template.update(sql);  	
	}
	public Matchregister getMatchStatus(String clubname){  
	    String sql="select * from matchregister where clubname=?";  
	    return template.queryForObject(sql, new Object[]{clubname},new BeanPropertyRowMapper<Matchregister>(Matchregister.class));  
	}
	public int matchClub(Matchclubs mc){
		String sql="INSERT INTO `matchclubs`(`matchname`, `matchdate`,`matchtime`, `club1`, `club2`) VALUES ('"+mc.getMatchname()+"','"+mc.getMatchdate()+"','"+mc.getMatchtime()+"','"+mc.getClub1()+"','"+mc.getClub2()+"')";
		return template.update(sql);
	}
	public List<Matchclubs>getViewPlayClubs(){  
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

	public List<Ticketbook> getViewTicketBook() {
		return template.query("select * from ticketbook where status='0';",new RowMapper<Ticketbook>(){  
	        public Ticketbook mapRow(ResultSet rs, int row) throws SQLException {  
	        	Ticketbook tb=new Ticketbook();  
	            tb.setId(rs.getInt(1));  
	            tb.setMatchname(rs.getString(2)); 
	            tb.setMatchdate(rs.getString(3)); 
	            tb.setMatchtime(rs.getString(4));
	            tb.setViewername(rs.getString(5));
	            tb.setEmail(rs.getString(6));
	            tb.setContact(rs.getString(7));
	            tb.setNoseats(rs.getInt(8));
	            tb.setCashamount(rs.getInt(9));
	            tb.setBank(rs.getString(10));
	            tb.setAccountno(rs.getInt(11));
	            tb.setStatus(rs.getInt(12));
	            tb.setRemark(rs.getString(13));
	            return tb;  
	        }  
	    });  
	}
	public Ticketbook getticketbookdetails(int id) {
		 String sql="select * from ticketbook where id=?";  
		 return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Ticketbook>(Ticketbook.class));  
	}
	/*public int ApproveTicket(Ticketbook p){  
	    String sql="update ticketbook set status='"+p.getStatus()+"'and remark='"+p.getRemark()+"' where id="+p.getId()+"";  
	    return template.update(sql);  
	}*/

	public void ApproveTicket(Ticketbook p) {
		String sql="update ticketbook set status='"+p.getStatus()+"'and remark='"+p.getRemark()+"' where id="+p.getId()+"";  
	    return; 
		
	}
	
}
