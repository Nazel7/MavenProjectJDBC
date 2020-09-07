package com.mavenproject.securityconfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import javax.sql.DataSource;

import static org.springframework.security.core.userdetails.User.*;

@Configuration
@EnableWebSecurity
public class WebSecurityAdapterConfig extends WebSecurityConfigurerAdapter {
@Autowired
private DataSource securityDataSource;
    @Override
    protected void configure(AuthenticationManagerBuilder authenticationManagerBuilder) throws Exception {

        authenticationManagerBuilder.jdbcAuthentication().dataSource(securityDataSource);

    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/home-page").permitAll()
                .antMatchers("/Admins/**").hasRole("ADMIN")
                .antMatchers("/Leaders/**").hasRole("MANAGER")
                .and()
                .formLogin()
                .loginPage("/loginPage")
                .loginProcessingUrl("/loginAuthentication")
                .permitAll()
                .and()
                .logout()
                .permitAll();
    }
}
