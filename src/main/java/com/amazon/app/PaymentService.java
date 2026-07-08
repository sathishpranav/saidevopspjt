package com.amazon.app;

public class PaymentService {
    public String processPayment(double amount) {
        if (amount <= 0) {
            return "FAILED";
        }
        return "SUCCESS";
    }
}


