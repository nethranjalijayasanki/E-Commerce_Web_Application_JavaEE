package com.example.ecommerce_web_applicationjavaee.utils;

public class Regex {
    // Validate email format
    public static boolean validateEmail(String email) {
        if (email == null || email.isEmpty()) {
            return false;
        }
        return email.matches("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$");
    }

    // Validate password strength
    public static boolean validatePassword(String password) {
        if (password == null || password.isEmpty()) {
            return false;
        }
        // At least one uppercase, one lowercase, one digit, one special character, and 8-20 characters long
        return password.matches("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,20}$");
    }

    // Validate phone number
    public static boolean validatePhoneNumber(String phoneNumber) {
        if (phoneNumber == null || phoneNumber.isEmpty()) {
            return false;
        }
        // Match 10 digits (for example, US phone numbers)
        return phoneNumber.matches("^\\d{10}$");
    }

    // Validate name (letters and spaces only)
    public static boolean validateName(String name) {
        if (name == null || name.isEmpty()) {
            return false;
        }
        return name.matches("^[A-Za-z\\s]+$");
    }

    // Validate numeric values (integer or decimal)
    public static boolean validateNumeric(String input) {
        if (input == null || input.isEmpty()) {
            return false;
        }
        return input.matches("^-?\\d+(\\.\\d+)?$");
    }

    // Validate non-empty strings
    public static boolean validateNonEmpty(String input) {
        return input != null && !input.trim().isEmpty();
    }

    // Validate date in the format YYYY-MM-DD
    public static boolean validateDate(String date) {
        if (date == null || date.isEmpty()) {
            return false;
        }
        return date.matches("^\\d{4}-\\d{2}-\\d{2}$");
    }

    // Validate username (alphanumeric, 5-15 characters)
    public static boolean validateUsername(String username) {
        if (username == null || username.isEmpty()) {
            return false;
        }
        return username.matches("^[A-Za-z0-9]{5,15}$");
    }
}
