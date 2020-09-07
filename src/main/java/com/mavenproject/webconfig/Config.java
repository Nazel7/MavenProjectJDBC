package com.mavenproject.webconfig;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import javax.sql.DataSource;
import java.beans.PropertyVetoException;
import java.util.Objects;
import java.util.logging.Logger;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.mavenproject")
@PropertySource("classpath:persistence-mysql.properties")
public class Config {
    @Autowired
    private Environment env;

    private Logger logger= Logger.getLogger(getClass().getName());

    @Bean
    public ViewResolver viewResolver(){
        InternalResourceViewResolver viewResolver= new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/view/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }

    @Bean
    public DataSource datasource(){
        ComboPooledDataSource securityDataSource= new ComboPooledDataSource();

        try{
//            MySQL class and properties setup
            securityDataSource.setDriverClass(env.getProperty("jdbc.driver"));
        }catch (PropertyVetoException exc){
            throw new RuntimeException(exc);
        }
        logger.info("JDBC url:"+ env.getProperty("jdbc.url"));
        logger.info("JDBC user:"+ env.getProperty("jdbc.user"));

        securityDataSource.setJdbcUrl(env.getProperty("jdbc.url"));
        securityDataSource.setUser(env.getProperty("jdbc.user"));
        securityDataSource.setPassword(env.getProperty("jdbc.password"));

//            DataSource threadPool Setup
        securityDataSource.setInitialPoolSize(Integer.parseInt((env.getProperty("connection.pool.initialPoolSize"))));
        securityDataSource.setMinPoolSize(Integer.parseInt((env.getProperty("connection.pool.minPoolSize"))));
        securityDataSource.setInitialPoolSize(Integer.parseInt((env.getProperty("connection.pool.maxPoolSize"))));
        securityDataSource.setInitialPoolSize(Integer.parseInt((env.getProperty("connection.pool.maxIdleTime"))));

        return securityDataSource;
    }
}
