package in.suriya.util;

import java.util.List;

import in.suriya.model.Staff;
import in.suriya.model.Student;


public class Search {

	
	/**
	 * Searching Mobile Number in staffList
	 * 
	 * @param MobNo
	 * @return
	 */
	public static boolean searchMobNo(long mobNo,List<Staff> staffList) {
		
		boolean exist=false;
		for(Staff staff:staffList) {
			if(staff.getMobNo()==mobNo) {
				exist=true;
				break;
			}
		}
		return exist;
	}
	
	
	/**
	 * Searching  password in staffList
	 * @param password
	 * @return
	 */
	public static boolean searchPassword(String password,List<Staff> staffList){     
		boolean exist=false;
		for(Staff staff:staffList) {
			if(staff.getPassword().equals(password)){
			  exist=true;
			  break;}
		}
		return exist;
	}
	
   
	
	
	public static  boolean searchRollNo(long rollNo,List<Student> studentList) {
		boolean isExist=false;
		for(Student student:studentList) {
			if(student.getRollNo()==rollNo) {
				isExist=true;
				break;}
		}
		return isExist;

		
		
		
	}

}
