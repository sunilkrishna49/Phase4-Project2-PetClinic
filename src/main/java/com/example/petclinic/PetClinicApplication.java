package com.example.petclinic;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class PetClinicApplication {

	public static void main(String[] args) {
//		System.setProperty("spring.config.location", "application.properties");
		// System.setProperty("spring.config.location", "file:/C:/Users/sunil/Desktop/Simplilearn-CourseEnd-Projects/cloud-automation/Phase4-Project2-PetClinic/petclinic/target/app/application.properties");

		SpringApplication.run(PetClinicApplication.class, args);
	}

}
