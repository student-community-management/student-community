import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.manage.entity.Discuss;

import com.manage.service.DiscussService;

public class Text {
	public static void main(String[] arg){
		ApplicationContext as = new ClassPathXmlApplicationContext("beans.xml");
		DiscussService service = as.getBean(DiscussService.class);
		Discuss d = new Discuss();
		d.setDiscussTitle("dadada");
		d.setDiscussContent("你猜不到");
		d.setDiscussDate("1999-1-1");
		d.setDiscussLabel("上下五百年");

		
		
	}
}
