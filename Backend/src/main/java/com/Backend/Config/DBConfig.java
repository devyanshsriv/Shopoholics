package com.Backend.Config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan("com.Backend")
@EnableTransactionManagement

public class DBConfig {
	
	private static final String DriverClass = "org.h2.Driver";
	private static final String DBURL = "jdbc:h2:tcp://localhost/~/ShopoholicsBack";
	private static final String Username = "sa";
	private static final String Password = "";
	private static final String DBDileact = "org.hibernate.dialect.H2Dialect";

	@Bean("dataSource")
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(DriverClass);
		dataSource.setUrl(DBURL);
		dataSource.setUsername(Username);
		dataSource.setPassword(Password);
		return dataSource;
	}

	@Bean("sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder lsfb = new LocalSessionFactoryBuilder(dataSource);
		lsfb.addProperties(getHibernateProp());
		lsfb.scanPackages("com.Backend");
		return lsfb.buildSessionFactory();
	}

	private Properties getHibernateProp() {
		Properties prop = new Properties();

		prop.put("hibernate.dialect", DBDileact);
		// optional
		prop.put("hibernate.hbm2ddl.auto", "update");// create,update,create-drop,validate
		// This property will tell Hibernate to create table automatically
		prop.put("hibernate.show_sql", "true");
		prop.put("hibernate.format_sql", "true");
		// optional
		return prop;
	}

	@Bean
	public HibernateTransactionManager getTM(SessionFactory sessionFctory) {
		return new HibernateTransactionManager(sessionFctory);
	}
}