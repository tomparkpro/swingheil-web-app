package pro.tompark.swingheil.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import pro.tompark.swingheil.code.EventType;
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
        Event event = new Event();
        event.setTitle("test title");
        event.setEventType(EventType.Notice);
        eventService.createEvent(event);
        return "HelloWorld";
    }
}