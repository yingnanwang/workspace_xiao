package servlets;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.PictureDB;

/**
 * Servlet implementation class IncreaFavor
 */
@WebServlet("/IncreaFavor")
public class IncreaFavor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IncreaFavor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String favor = request.getParameter("favor");
		String id = request.getParameter("id");
		//ServletContext myapplication=this.getServletContext();
		//long time = System.currentTimeMillis();
		//String addr = myapplication.getRealPath("") + "/PIC/"+uid + id+Long.toString(time)+"/images";	
		//File fileimage = new File(addr);
		PictureDB.setFav(id, Integer.parseInt(favor));
		//fileimage.mkdirs();
	}

}
