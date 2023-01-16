package kr.go.pss;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class JDBCTest {
	private static final Logger log = LoggerFactory.getLogger(JDBCTest.class);

	@Inject
	DataSource dataSource;

	
	@Test
	public void test1() throws Exception {
		Connection con = dataSource.getConnection();
		log.info(con.toString());
		con.close();
	}

}
