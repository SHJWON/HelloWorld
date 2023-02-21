package com.jooBang.project;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.apache.catalina.connector.Connector;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.boot.web.servlet.server.ServletWebServerFactory;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
@PropertySources({
		@PropertySource(value = "file:c:/springWorkspace/configure.properties", ignoreResourceNotFound = true),
		@PropertySource(value = "file:/Users/ddukco/springWorkspace/configure.properties", ignoreResourceNotFound = true),
		@PropertySource(value = "file:/usr/local/project/properties/configure.properties", ignoreResourceNotFound = true) })
@ComponentScan(basePackages = { "com.jooBang.project" })
@MapperScan(basePackages = { "com.jooBang.project" })
public class JooBangProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(JooBangProjectApplication.class, args);
	}

	@Bean
	public ServletWebServerFactory serveltContainer() {
		TomcatServletWebServerFactory tomcat = new TomcatServletWebServerFactory();
		tomcat.addAdditionalTomcatConnectors(createStandardConnector());
		return tomcat;
	}

	private Connector createStandardConnector() {
		Connector connector = new Connector("org.apache.coyote.http11.Http11NioProtocol");
		connector.setPort(8080);
		return connector;
	}

}
