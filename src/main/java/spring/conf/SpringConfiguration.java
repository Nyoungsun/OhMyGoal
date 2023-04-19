package spring.conf;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@PropertySource("classpath:database/db.properties")
@EnableTransactionManagement
public class SpringConfiguration {
	
	@Autowired
	private ApplicationContext context;
	
	@Value("${jdbc.driver}") String driver;
	@Value("${jdbc.url}") String url;
	@Value("${jdbc.username}") String username;
	@Value("${jdbc.password}") String password;
	
	@Bean
	public BasicDataSource dataSource() { //spring에서 정의하거나 선택사항
		BasicDataSource basicDataSource = new BasicDataSource();
		
		basicDataSource.setDriverClassName(driver);
		basicDataSource.setUrl(url);
		basicDataSource.setUsername(username);
		basicDataSource.setPassword(password);
		
		return basicDataSource;
	}
	
	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception {
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
		sqlSessionFactoryBean.setDataSource(dataSource());
		sqlSessionFactoryBean.setConfigLocation(new ClassPathResource("database/mybatis-config.xml")); //resource로 주는 방식 단점 무조건 1개밖에 못줌
		sqlSessionFactoryBean.setMapperLocations(context.getResources("classpath:*/dao/*Mapper.xml"));
		
		return sqlSessionFactoryBean.getObject(); //SqlSessionFactory를 return해주는 메소드
	}
	
	@Bean
	public SqlSessionTemplate sqlSession() throws Exception {
		SqlSessionTemplate sqlSessionTemplate = new SqlSessionTemplate(sqlSessionFactory());
		return sqlSessionTemplate;
	}
	
	@Bean
	public DataSourceTransactionManager transactionManager() {
		return new DataSourceTransactionManager(dataSource());
	}
}

/*
SpringConfiguration 일반 자바 파일이 아니다. applicationContext같은 환경설정 파일이다.

만약에 mapper.xml이 여러개일 경우

방법1)
sqlSessionFactoryBean.setMapperLocations(new ClassPathResource("user/dao/userMapper.xml"),
										 new ClassPathResource("user/dao/userMapper.xml"),
										 new ClassPathResource("user/dao/userMapper.xml"),
										 ...);
방법2)
@Autowired
private ApplicationContext context;
*/
//sqlSessionFactoryBean.setMapperLocations(context.getResources("classpath:*/dao/*Mapper.xml"));