package com.example.coffemachine.coffee_machine;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LoggingAspect {
    @Before("execution(* com.example.coffemachine.coffee_machine.CoffeeMachine.makeCoffee(..))")
    public void logBeforeMakeCoffee() {
        System.out.println("[AOP] Before making coffee");
    }

    @After("execution(* com.example.coffemachine.coffee_machine.CoffeeMachine.makeCoffee(..))")
    public void logAfterMakeCoffee() {
        System.out.println("[AOP] After making coffee");
    }
}
