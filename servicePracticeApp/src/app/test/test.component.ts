import { Component, OnInit } from '@angular/core';
import { StudentTest } from '../student_test';
import { StudentTestService } from '../student-test.service';
import { Http } from '@angular/http';

@Component({
  selector: 'app-test',
  templateUrl: './test.component.html',
  styleUrls: ['./test.component.css']
})

export class TestComponent implements OnInit {
tests;
sections;
	studenttest: StudentTest[];
  constructor(private t: StudentTestService, private http: Http) {
		http.get('http://localhost:3000/tests.json')
		  		.subscribe(res=> this.tests = res.json());
    http.get('http://localhost:3000/sections.json')
          .subscribe(res=> this.sections = res.json());      
   }

  ngOnInit() {
 		this.studenttest = this.t.getStudentTests();

  }

}
