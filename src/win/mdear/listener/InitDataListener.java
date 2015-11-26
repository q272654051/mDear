package win.mdear.listener;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.ServletContextAware;






/**
 * @author HP
 * @date 2015/5/13 10:24
 * @description 描述 项目启动初始化加载数据库的一些数据
 */
public class InitDataListener implements InitializingBean, ServletContextAware {

    @Autowired
    
	public void setServletContext(ServletContext servletContext) {
    }
    public void afterPropertiesSet() throws Exception {
	}

}
