package guest;
 
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class GuestController {
 
    @Autowired
    private GuestDao guestDao;
 
    @RequestMapping(value="/guest")
    public ModelAndView guestbook(HttpServletRequest request) {
        // Handle a new guest (if any):
        
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String freq = request.getParameter("freq");
        String lecname = request.getParameter("lectname");
        String maxatt = request.getParameter("maxatt");
        String compul = request.getParameter("compul");
        String venue = request.getParameter("venue");
        if ( lecname != null)
            guestDao.persist(new Guest(date,time,freq,lecname,maxatt,compul,venue));
 
        // Prepare the result view (guest.jsp):
        return new ModelAndView("guest.jsp", "guestDao", guestDao);
    }
    
    @RequestMapping(value="/admin")
    public ModelAndView viewAdmin(HttpServletRequest request) {
    	return new ModelAndView("admin.jsp", "guestDao", guestDao);
    }
}