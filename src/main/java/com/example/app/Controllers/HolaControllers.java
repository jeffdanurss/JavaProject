package com.example.app.Controllers;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;



@RestController
public class HolaControllers {
    @GetMapping("/")
    String hola(){
        return "Hola mundo distribuida";
    }
    
    
}
