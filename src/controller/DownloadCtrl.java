package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.FileUtil;

public class DownloadCtrl extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//서버에 저장된 파일명
		String filename = req.getParameter("filename");
		
		
		String idx = req.getParameter("idx");
		
		
		
		/*
		서버에 저장된 파일을 무조건 "원본파일명.jps"로 이름을 변경하여 다운로드한다.
		차후 DB처리 해야함.
		 */
		//FileUtil.download(req, resp, "/Upload", filename, "원본파일명.jpg");
		
		//원래파일명으로 다운로드 받게된다.
		FileUtil.download(req, resp, "/Upload", filename, filename);
		
		DataroomDAO dao = new DataroomDAO();
		dao.downCountPlus(idx);
		dao.close();
		
	}
}
