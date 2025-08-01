package com.example.coffemachine.coffee_machine;


import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")
class LatteMachine implements CoffeeMachine {
    @Override
    public void makeCoffee() {
        System.out.println("Making Lattee coffee.");
    }
}