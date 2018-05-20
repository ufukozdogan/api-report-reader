package com.ozdogan;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer {

    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/").setViewName("restingapi");
        registry.addViewController("/").setViewName("home");
        registry.addViewController("/user/login").setViewName("login");
        //registry.addViewController("/login").setViewName("login");
    }

}
