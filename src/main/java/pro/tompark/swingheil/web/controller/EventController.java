package pro.tompark.swingheil.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pro.tompark.swingheil.code.EventType;
import pro.tompark.swingheil.model.Event;
import pro.tompark.swingheil.service.EventService;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/event")
public class EventController {

    @Autowired
    EventService eventService;

    @GetMapping("/list")
    public String events(Model model) {
        List<Event> events = eventService.getEvents();

        model.addAttribute("events", events);

        return "event/list-events";
    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model model) {
        model.addAttribute("event", new Event());
        model.addAttribute("eventTypes", EventType.values());
        return "event/event-form";
    }

    @PostMapping("/saveEvent")
    public String saveEvent(@ModelAttribute("event") Event event) {

        eventService.createEvent(event);

        return "redirect:/event/list";
    }

    @GetMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("eventSn") long eventSn, Model model) {

        Optional<Event> event = eventService.getEvent(eventSn);

        event.ifPresent(it -> model.addAttribute("event", it));
        model.addAttribute("eventTypes", EventType.values());

        return "event/event-form";
    }

    @GetMapping("/delete")
    public String deleteEvent(@RequestParam("eventSn") long eventSn) {

        eventService.deleteEvent(eventSn);

        return "redirect:/event/list";
    }
}