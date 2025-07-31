package com.example.coffemachine.coffee_machine;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class CoffeeMain {
    public static void main(String[] args) {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);

        CafeService cafeService = context.getBean(CafeService.class);
        cafeService.serveCoffee();

        context.close();
    }
}
