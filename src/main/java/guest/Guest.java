package guest;
 
import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
 
@Entity
public class Guest implements Serializable {
    private static final long serialVersionUID = 1L;
 
    // Persistent Fields:
    @Id @GeneratedValue
    Long id;
    private String date;
    private String time;
    private String freq;
    private String lecname;
    private String maxatt;
    private String compul;
    private String venue;
    
    
    public Guest(){
    	
    }
    public Guest(String date, String time, String freq, String lecname,String maxatt,String compul,String venue){
    	this.date=date;
    	this.time=time;
    	this.freq=freq;
    	this.lecname=lecname;
    	this.maxatt=maxatt;
    	this.compul=compul;
    	this.venue=venue;
    	
    }
       
    
    // String Representation:
    @Override
    public String toString() {
        return "Lecture Name: " + this.lecname + "	" + "Venue: " + this.venue + "	" + "Date: " + this.date + " " + "Time: " + this.time + "	" +"Frequency: " + this.freq + "	" + "Max Attendance: " + this.maxatt + "	" +"Compulsory: " + this.compul;
    }
}