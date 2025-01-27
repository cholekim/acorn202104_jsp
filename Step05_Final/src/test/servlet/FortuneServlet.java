package test.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test_mvc/fortune")
public class FortuneServlet extends HttpServlet{
   @Override
   protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      //오늘의 운세를 얻어오는 비즈니스 로직을 수행한다.
      String fortuneToday="동쪽으로 가면 귀인을 만나요";
      //로직 수행결과 데이터 (Model) 을 request 영역에 담는다.
      req.setAttribute("fortuneToday", fortuneToday);
      // view page (jsp) 로 forward 이동해서 응답한다.
      RequestDispatcher rd=req.getRequestDispatcher("/views/fortune.jsp");
      rd.forward(req, resp);
   }
}
