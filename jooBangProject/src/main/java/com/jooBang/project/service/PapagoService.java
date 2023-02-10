package com.jooBang.project.service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.springframework.stereotype.Service;
@Service
public class PapagoService {

	
	   
	    public String translateToEngHtml(String name) {
			//papago translation API 여기에 복사
			String result="";		
        	 String clientId = "lf6un2enzh";//애플리케이션 클라이언트 아이디값";
		        String clientSecret = "dRpvvMREg6bJhhUNcUI6v9SWqdiH0lU71u50ivLE";//애플리케이션 클라이언트 시크릿값";
		        try {
		       	 String html = URLEncoder.encode(name, "UTF-8");
		            String apiURL = "https://naveropenapi.apigw.ntruss.com/web-trans/v1/translate";
		            URL url = new URL(apiURL);
		            HttpURLConnection con = (HttpURLConnection)url.openConnection();
		            con.setRequestMethod("POST");
		            con.setRequestProperty("X-NCP-APIGW-API-KEY-ID", clientId);
		            con.setRequestProperty("X-NCP-APIGW-API-KEY", clientSecret);
		            // post request
		            String postParams = "source=ko&target=en&html=" + html;
		            con.setDoOutput(true);
		            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
		            wr.writeBytes(postParams);
		            wr.flush();
		            wr.close();
		            int responseCode = con.getResponseCode();
		            BufferedReader br;
		            if(responseCode==200) { // 정상 호출
		                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		            } else {  // 오류 발생
		                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
		            }
		            String inputLine;
		            StringBuffer response = new StringBuffer();
		            while ((inputLine = br.readLine()) != null) {
		                response.append(inputLine);
		            }
		            br.close();
		            System.out.println(response.toString());//결과 반환
		            //파파고 번역 결과 JSON을 JSON파싱 메소드 호출하면 전달하고 결과 받아옴
		        result= response.toString();
		        } catch (Exception e) {
		            System.out.println(e);
		        }
		        return result;
	    }
	    public String translateToKoHtml(String name) {
			//papago translation API 여기에 복사
			String result="";		
        	 String clientId = "lf6un2enzh";//애플리케이션 클라이언트 아이디값";
		        String clientSecret = "dRpvvMREg6bJhhUNcUI6v9SWqdiH0lU71u50ivLE";//애플리케이션 클라이언트 시크릿값";
		        try {
		       	 String html = URLEncoder.encode(name, "UTF-8");
		            String apiURL = "https://naveropenapi.apigw.ntruss.com/web-trans/v1/translate";
		            URL url = new URL(apiURL);
		            HttpURLConnection con = (HttpURLConnection)url.openConnection();
		            con.setRequestMethod("POST");
		            con.setRequestProperty("X-NCP-APIGW-API-KEY-ID", clientId);
		            con.setRequestProperty("X-NCP-APIGW-API-KEY", clientSecret);
		            // post request
		            String postParams = "source=en&target=ko&html=" + html;
		            con.setDoOutput(true);
		            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
		            wr.writeBytes(postParams);
		            wr.flush();
		            wr.close();
		            int responseCode = con.getResponseCode();
		            BufferedReader br;
		            if(responseCode==200) { // 정상 호출
		                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		            } else {  // 오류 발생
		                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
		            }
		            String inputLine;
		            StringBuffer response = new StringBuffer();
		            while ((inputLine = br.readLine()) != null) {
		                response.append(inputLine);
		            }
		            br.close();
		            System.out.println(response.toString());//결과 반환
		            //파파고 번역 결과 JSON을 JSON파싱 메소드 호출하면 전달하고 결과 받아옴
		        result= response.toString();
		        } catch (Exception e) {
		            System.out.println(e);
		        }
		        return result;
	    }
}

		   
		
	
	

