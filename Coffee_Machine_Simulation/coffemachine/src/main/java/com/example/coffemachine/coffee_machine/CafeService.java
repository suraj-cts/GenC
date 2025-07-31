package com.example.coffemachine.coffee_machine;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.stereotype.Component;

@Service
public class CafeService {
    private final CoffeeMachine coffeeMachine;

    @Autowired
    public CafeService(@Qualifier("espressoMachine") CoffeeMachine coffeeMachine) {
        this.coffeeMachine = coffeeMachine;
        System.out.println("CafeService costructor called");
    }

    public void serveCoffee() {
        coffeeMachine.makeCoffee();
    }

    @PostConstruct
    public void init() {
        System.out.println("CafeService @PostConstruct called");
    }

    @PreDestroy
    public void destroy() {
        System.out.println("CafeService @PreDestroy called");
    }
}