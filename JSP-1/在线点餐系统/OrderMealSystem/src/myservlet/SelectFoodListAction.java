package myservlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybean.FoodDAO;
import mybean.FoodVO;

/**
 * Servlet implementation class SelectFoodListAction
 */
@WebServlet("/SelectFoodListAction")
public class SelectFoodListAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectFoodListAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//查询所有食物然后在网页输出
				FoodDAO fooddao = new FoodDAO();
				ArrayList<FoodVO> allfood = new ArrayList<FoodVO>();
				allfood = fooddao.getAllFood();
				request.setAttribute("allfood", allfood);
				request.getRequestDispatcher("selectfood.jsp").forward(request, response);
	}

}
