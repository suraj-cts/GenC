package com.example.coffemachine.coffee_machine;


import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("singleton")
public class EspressoMachine implements CoffeeMachine{
    @Override
    public void makeCoffee() {
        System.out.println("Making Espresso Coffee.");
    }
}