package post.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/**
 * Servlet implementation class FindCoordinates
 */
@WebServlet("/FindCoordinatesServlet")
public class FindCoordinatesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindCoordinatesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String searchaddr = request.getParameter("address");
		searchaddr = URLEncoder.encode(searchaddr,"UTF-8");
		
		//필수는 query로 주소만..나머지 옵션은 api참고.
		String api = "https://openapi.naver.com/v1/map/geocode?query=" + searchaddr;
		StringBuffer sb = new StringBuffer();

		try {
			URL url = new URL(api);
			HttpsURLConnection http = (HttpsURLConnection)url.openConnection();
			http.setRequestProperty("X-Naver-Client-Id", "JVmBHBSdqNcd5JKBkRhO");
			http.setRequestProperty("X-Naver-Client-Secret", "eg9UxPaF2b");
			//http.setDoOutput(true);
			//네이버는 반드시 GET방식으로 호출해야함.
			http.setRequestMethod("GET");
			http.connect();
			
			InputStreamReader in = new InputStreamReader(http.getInputStream(),"utf-8");
			BufferedReader br = new BufferedReader(in);

			String line;
			while ((line = br.readLine()) != null) {
				sb.append(line).append("\n");
			}

			JSONParser parser = new JSONParser();
			
			JSONObject jsonObject;
			JSONObject jsonObject2;
			JSONObject jsonObjectPoint;
			
			JSONArray jsonArray;
			
			String x = "";
			String y = "";
			
			jsonObject = (JSONObject)parser.parse(sb.toString());
			//디버깅을 해보면 알겠지만 json구조가 트리형태로 리턴되서 몇번 파싱 해야 원하는 좌표가 나온다.
			jsonObject = (JSONObject)jsonObject.get("result");
			jsonArray = (JSONArray)jsonObject.get("items");
			
			for(int i=0;i<jsonArray.size();i++){
				jsonObject2 = (JSONObject) jsonArray.get(i);
				if (null != jsonObject2.get("point")){
					jsonObjectPoint = (JSONObject) jsonObject2.get("point");
					x = (String) jsonObjectPoint.get("x").toString();
					y = (String) jsonObjectPoint.get("y").toString();
				}
			}
			
			//System.out.println(sb.toString());
			System.out.println("x좌표==" + x + " y좌표==" + y);
			
			br.close();
			in.close();
			http.disconnect();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
