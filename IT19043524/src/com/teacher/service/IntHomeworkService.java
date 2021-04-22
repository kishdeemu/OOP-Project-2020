package com.teacher.service;

import java.util.ArrayList;
import com.teacher.model.Homework;

public interface IntHomeworkService {

	//Add new hw 
	
		public boolean addHomework(Homework HW);
		
	//Get all hw
		
		public ArrayList<Homework> getHomework(String HWID);
		
	//Update hw data
		
		public boolean updateHomework(Homework HW);
		
	//Delete HW 
		
		public boolean deleteHomework(String HWID);
}
