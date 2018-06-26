import { Component, OnInit } from '@angular/core';
import { Post } from '../post'
import { PostService } from '../post.service'

@Component({
  selector: 'app-servicebuilder',
  templateUrl: './servicebuilder.component.html',
  styleUrls: ['./servicebuilder.component.css']
})

export class ServicebuilderComponent implements OnInit {
	posts: Post[];
  constructor(private ps: PostService) { }

  ngOnInit() {
  	this.posts = this.ps.getPosts();
  }

}
