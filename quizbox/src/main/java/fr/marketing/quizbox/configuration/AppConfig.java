package fr.marketing.quizbox.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.PathMatchConfigurer;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

import fr.marketing.quizbox.dao.ChoiceDao;
import fr.marketing.quizbox.dao.ChoiceDaoImpl;
import fr.marketing.quizbox.service.ChoiceService;
import fr.marketing.quizbox.service.ChoiceServiceImpl;
import fr.marketing.quizbox.service.QuestionService;
import fr.marketing.quizbox.service.QuestionServiceImpl;
import fr.marketing.quizbox.service.QuizService;
import fr.marketing.quizbox.service.QuizServiceImpl;
import fr.marketing.quizbox.service.ResultCorrelationService;
import fr.marketing.quizbox.service.ResultCorrelationServiceImpl;
import fr.marketing.quizbox.service.ResultService;
import fr.marketing.quizbox.service.ResultServiceImpl;



@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "fr.marketing.quizbox")
public class AppConfig extends WebMvcConfigurerAdapter{
	

	@Bean
	public TilesConfigurer tilesConfigurer(){
	    TilesConfigurer tilesConfigurer = new TilesConfigurer();
	    tilesConfigurer.setDefinitions(new String[] {"/WEB-INF/tiles/tiles-definitions.xml"});
	    tilesConfigurer.setCheckRefresh(true);
	    return tilesConfigurer;
	}

	/**
     * Configure ViewResolvers to deliver preferred views.
     */
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		TilesViewResolver viewResolver = new TilesViewResolver();
		registry.viewResolver(viewResolver);
	}
	
	/**
     * Configure ResourceHandlers to serve static resources like CSS/ Javascript etc...
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
        registry.addResourceHandler("/scripts/**").addResourceLocations("/scripts/");
    }
    
    
    /**Optional. It's only required when handling '.' in @PathVariables which otherwise ignore everything after last '.' in @PathVaidables argument.
     * It's a known bug in Spring [https://jira.spring.io/browse/SPR-6164], still present in Spring 4.1.7.
     * This is a workaround for this issue.
     */
    @Override
    public void configurePathMatch(PathMatchConfigurer matcher) {
        matcher.setUseRegisteredSuffixPatternMatch(true);
    }
    @Bean
    public QuizService quizService() {
        return new QuizServiceImpl();
    }
    @Bean
    public ChoiceService choiceService() {
        return new ChoiceServiceImpl();
    }
    @Bean
    public QuestionService questionService() {
        return new QuestionServiceImpl();
    }
    @Bean
    public ResultService resultService() {
        return new ResultServiceImpl();
    }
    @Bean
    public ResultCorrelationService correlationService() {
        return new ResultCorrelationServiceImpl();
    }
    
    @Bean
    public ChoiceDao choiceDao() {
        return new ChoiceDaoImpl();
    }
    
    
}

