package fr.marketing.quizbox.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.PathMatchConfigurer;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

import fr.marketing.quizbox.dao.ChoiceDao;
import fr.marketing.quizbox.dao.ChoiceDaoImpl;
import fr.marketing.quizbox.dao.QuestionDao;
import fr.marketing.quizbox.dao.QuestionDaoImpl;
import fr.marketing.quizbox.dao.QuizDao;
import fr.marketing.quizbox.dao.QuizDaoImpl;
import fr.marketing.quizbox.dao.ResultCorrelationDao;
import fr.marketing.quizbox.dao.ResultCorrelationDaoImpl;
import fr.marketing.quizbox.dao.ResultDao;
import fr.marketing.quizbox.dao.ResultDaoImpl;
import fr.marketing.quizbox.model.Choice;
import fr.marketing.quizbox.model.Profile;
import fr.marketing.quizbox.model.Question;
import fr.marketing.quizbox.model.Quiz;
import fr.marketing.quizbox.model.Result;
import fr.marketing.quizbox.model.ResultCorelation;
import fr.marketing.quizbox.model.User;
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
@EnableTransactionManagement
@EnableWebMvc
@ComponentScan(basePackages = "fr.marketing.quizbox")
@PropertySource(value = { "classpath:application.properties" })
public class AppConfig extends WebMvcConfigurerAdapter{
	
	@Autowired
    private Environment environment;
	
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
    
    
    @Bean(name = "dataSource")
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(environment.getRequiredProperty("jdbc.driverClassName"));
        dataSource.setUrl(environment.getRequiredProperty("jdbc.url"));
        dataSource.setUsername(environment.getRequiredProperty("jdbc.username"));
        dataSource.setPassword(environment.getRequiredProperty("jdbc.password"));
        return dataSource;
    }
    
//    public DataSource getDataSource() {
//    	BasicDataSource dataSource = new BasicDataSource();
//    	dataSource.setDriverClassName("com.mysql.jdbc.Driver");
//    	dataSource.setUrl("jdbc:mysql://localhost:3306/mqb");
//    	dataSource.setUsername("root");
//    	dataSource.setPassword("admin");
//    	
//    	return dataSource;
//    }
//    
    
    private Properties getHibernateProperties() {
    	Properties properties = new Properties();
    	properties.put("hibernate.show_sql", "true");
    	properties.put("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
    	return properties;
    }
    
    @Autowired
    @Bean(name = "sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource) {
    	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
    	sessionBuilder.addProperties(getHibernateProperties());
    	sessionBuilder.addPackages(new String[]{"fr.marketing.quizbox.model"});
    	sessionBuilder.addAnnotatedClasses(Quiz.class);
    	sessionBuilder.addAnnotatedClasses(Question.class);
    	sessionBuilder.addAnnotatedClasses(Result.class);
    	sessionBuilder.addAnnotatedClasses(User.class);
    	sessionBuilder.addAnnotatedClasses(Profile.class);
    	sessionBuilder.addAnnotatedClasses(ResultCorelation.class);
    	sessionBuilder.addAnnotatedClasses(Choice.class); 
    	return sessionBuilder.buildSessionFactory();
    }
    
	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(
			SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(
				sessionFactory);

		return transactionManager;
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
    public QuizDao quizDao() {
        return new QuizDaoImpl();
    }
    
    @Bean
    public ChoiceDao choiceDao() {
        return new ChoiceDaoImpl();
    }

    @Bean
    public QuestionDao questionDao() {
        return new QuestionDaoImpl();
    }
    
    @Bean
    public ResultDao resultDao () {
        return new ResultDaoImpl();
    }
    
    @Bean
    public ResultCorrelationDao correlationDao(){
        return new ResultCorrelationDaoImpl();
    }
}

