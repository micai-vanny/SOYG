package co.mini.soyg.calendar.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CalendarController {
	
	@RequestMapping("/calendar.do")
	public String calendar() {
		return "calendar/calendarList";
	}
}
