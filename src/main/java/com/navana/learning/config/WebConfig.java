
package com.navana.learning;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class NavanaLearningApplication {

    public static void main(String[] args) {

        SpringApplication.run(
            NavanaLearningApplication.class, args
        );

        System.out.println(
            "Navana Learning Skills Started Successfully!"
        );
    }
}

