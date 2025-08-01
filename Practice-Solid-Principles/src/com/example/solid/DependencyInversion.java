package com.example.solid;

// High-level module
public class DependencyInversion {

    public static void main(String[] args) {
        // Create a new instance of the EmailService
        MessageService emailService = new EmailService();
        
        // Create a new instance of the MessageProcessor with the email service
        MessageProcessor messageProcessor = new MessageProcessor(emailService);
        
        // Send a message
        messageProcessor.sendMessage("Hello, Dependency Inversion!");
    }
}

// Abstraction for message services
interface MessageService {
    void sendMessage(String message);
}

// Low-level module
class EmailService implements MessageService {
    @Override
    public void sendMessage(String message) {
        System.out.println("Email sent: " + message);
    }
}

// High-level module that depends on the abstraction
class MessageProcessor {
    private final MessageService messageService;

    // Constructor Injection
    public MessageProcessor(MessageService messageService) {
        this.messageService = messageService;
    }

    public void sendMessage(String message) {
        messageService.sendMessage(message);
    }
}