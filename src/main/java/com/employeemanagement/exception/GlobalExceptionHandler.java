package com.employeemanagement.exception;



import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler(Exception.class)
    public String handleDatabaseException(Exception ex, Model model) {
        model.addAttribute("error", "Database connection failed: " + ex.getMessage());
        return "error";
    }
}
