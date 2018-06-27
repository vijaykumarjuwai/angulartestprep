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
passages;
paragraphs;
questions;
answers;
	studenttest: StudentTest[];
  constructor(private t: StudentTestService, private http: Http) {
		http.get('http://localhost:3000/tests.json')
		  		.subscribe(res=> this.tests = res.json());
    http.get('http://localhost:3000/sections.json')
          .subscribe(res=> this.sections = res.json());
    http.get('http://localhost:3000/passages.json')
          .subscribe(res=> this.passages = res.json());
    http.get('http://localhost:3000/paragraphs.json')
          .subscribe(res=> this.paragraphs = res.json());
    http.get('http://localhost:3000/questions.json')
          .subscribe(res=> this.questions = res.json());
    http.get('http://localhost:3000/answers.json')
          .subscribe(res=> this.answers = res.json());                                    
   }


  ngOnInit() {
 		this.studenttest = this.t.getStudentTests();

  }

}
