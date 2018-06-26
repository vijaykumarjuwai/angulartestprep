import { Injectable } from '@angular/core';
import { StudentTest } from './student_test';

@Injectable()
export class StudentTestService {
	studenttests: StudentTest[]

  constructor() { 
  	this.studenttests = [
	  	{
		  	name: "test 1",
		  	id: 1,
		  	question_list: ["hello", "goodbye"],
	     },
	   ] 
	 }

	getStudentTests(): StudentTest[] {
		console.log('Fetching post from service . . .');
		return this.studenttests;
	}  

}
