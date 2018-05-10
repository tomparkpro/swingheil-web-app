package pro.tompark.swingheil.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import pro.tompark.swingheil.model.Event;
import pro.tompark.swingheil.service.EventService;

import java.util.List;

@RestController
public class WebRestController {

    @Autowired
    EventService eventService;

    @GetMapping("/hello")
    public String hello() {
        return "HelloWorld";
    }

    @GetMapping("/events")
    public String events() {
        List<Event> events = eventService.getEvents();
        System.out.println(events.size());
        return "HelloWorld";
    }
}