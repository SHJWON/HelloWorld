package com.jooBang.project.service;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;

import org.springframework.stereotype.Service;

@Service
public class GreenEyeService {

	public String PornPrevention(String pornImg) throws IOException {
		URL url = new URL("https://clovagreeneye.apigw.ntruss.com/custom/v1/46/ed1c7ee8c4f5857752c56eb351a5ba5e6bb7692b097e21968301ca77137df95d/predict");
		HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
		httpConn.setRequestMethod("POST");

		httpConn.setRequestProperty("X-GREEN-EYE-SECRET", "S09kelFxbW9tSFRuemZad05uU2tWTFVXS2JjSWJmcEI=");
		httpConn.setRequestProperty("Content-Type", "application/json");

		httpConn.setDoOutput(true);
		OutputStreamWriter writer = new OutputStreamWriter(httpConn.getOutputStream());
		writer.write(
				"{\"version\":\"V1\","
				+ "\"requestId\":\"xxx\","
				+ "\"timestamp\":0,"
				+ "\"images\":[{\"name\":\"demo\","
				+ "\"url\":\""+pornImg+"\"}]}");
		writer.flush();
		writer.close();
		httpConn.getOutputStream().close();

		InputStream responseStream = httpConn.getResponseCode() / 100 == 2 ? httpConn.getInputStream()
				: httpConn.getErrorStream();
		Scanner s = new Scanner(responseStream).useDelimiter("\\A");
		String response = s.hasNext() ? s.next() : "";
		System.out.println(response);
		return response;
	}
}

