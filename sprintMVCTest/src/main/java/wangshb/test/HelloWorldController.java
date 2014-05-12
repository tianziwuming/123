package wangshb.test;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/helloworld")
public class HelloWorldController {

	@RequestMapping("/{name}/{name2}")
	public ModelAndView helloWorld( @PathVariable("name") String name , @PathVariable("name2") String name2, @RequestParam("message") String msg){
		ModelAndView mw= new ModelAndView();
		mw.addObject("message", "hello! "+name +" 和 "+ name2+" come on");
		mw.setViewName("hello");
		//这是新加的！！！！！！！！
		//这是1.2分支增加的
		return mw;
	}
	
	@RequestMapping("/params")
	public ModelAndView helloParams(@RequestParam Map<String,String> map){
		ModelAndView mw= new ModelAndView();
		for(String key: map.keySet()){
			String value = map.get(key);
			map.put(key, "hello! "+value);
		}
		map.put("新增", "这是新增的参数");
		mw.addAllObjects(map);
		mw.setViewName("hello_123");
		return mw;
	}
}

