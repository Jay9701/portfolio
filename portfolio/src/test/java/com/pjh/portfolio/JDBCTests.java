package com.pjh.portfolio;

import static org.junit.Assert.fail;
import java.sql.Connection;
import java.sql.DriverManager;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class JDBCTests {
	private static final Logger logger = LoggerFactory.getLogger(JDBCTests.class);
	//private static final Logger logger = LoggerFactory.getLogger(JDBCTests.class);
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	@Test
	public void testConnetction() {
		try(Connection con=DriverManager.getConnection(
								// url주소
								"jdbc:mysql://localhost:3306/exam?serverTimezone=Asia/Seoul",
								// username
								"root",
								// password
								"1234")) {
			logger.info(""+con);
			//logger.info(""+con);
			
		}catch(Exception e) {
			fail(e.getMessage());
		}
	}
	
}
