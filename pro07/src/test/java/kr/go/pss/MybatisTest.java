package kr.go.pss;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.go.pss.dto.SampleDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })

public class MybatisTest {
	private static final Logger Loger = LoggerFactory.getLogger(MybatisTest.class);

	@Inject
	SqlSession sqlSession;
	
	@Test
	public void test2() {
		List<SampleDTO> list = sqlSession.selectList("sample.sampleList");
		for(SampleDTO sample : list) {
			Loger.info(sample.toString());
		}
	}
}
