package com.ssafy.safefood.config;

import java.io.IOException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@Configuration
public class MyBatisConfig {
	// 원래 DataSource를 등록해야하지만, 스프링 부트에서 자동 주입해준다.
	
	
	// SqlSessionFactory 등록 => 1. DataSource 주입, 2. 앨리어스 등록 3. 매퍼 링크
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
		// SqlSessionFactory 구현체 SqlSessionFactoryBean 등록
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
		// 1. DataSource 주입
		sqlSessionFactoryBean.setDataSource(dataSource);
		// 2. 앨리어스 등록
		sqlSessionFactoryBean.setTypeAliasesPackage("com.ssafy.safefood.model.vo");
		// 3. 매퍼 링크
		sqlSessionFactoryBean.setMapperLocations(new PathMatchingResourcePatternResolver()
				.getResources("classpath:/mybatis/mapper/*.xml"));
//		sqlSessionFactoryBean.setConfigLocation(new PathMatchingResourcePatternResolver()
//				.getResource("classpath:/mybatis/mybatis-config.xml")); // 없어도 동작하지만, 추가 설정을 하고싶을때 사용한단다.. 뭔추가설정?
		
		return sqlSessionFactoryBean.getObject();
	}
	
	
	// SqlSessionTemplate 등록(sqlSessionFactory 주입), 레파지토리에서 사용하는 객체, SqlSession 대신 사용.. 더 좋다나
	@Bean
	public SqlSessionTemplate sqlSession(SqlSessionFactory sqlSessionFactory) {
		return new SqlSessionTemplate(sqlSessionFactory);
	}
	
}
