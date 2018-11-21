package com.contaller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.MYwife;

@Controller
public class Tjson {
	@RequestMapping("/toye")
	public String toye(){
		return "ye";
		
	}
	@RequestMapping("/tojson")
	@ResponseBody
	public List<MYwife>list(){
		List<MYwife>list=new ArrayList<>();
		list.add(new MYwife(1, "myw1"));
		list.add(new MYwife(2, "2myw1"));
		list.add(new MYwife(3, "3myw1"));
		return list;
		
	}
}
