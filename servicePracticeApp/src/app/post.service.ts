import { Injectable } from '@angular/core';
import { Post } from './post';

@Injectable()
export class PostService {
	posts: Post[];

  constructor() { 
  	this.posts = [
      {
        title: 'Awesome 1',
        desc: 'Awesome post 1'
      },
      {
        title: 'Awesome 2',
        desc: 'Awesome post 2'
      },
      {
        title: 'Awesome 3',
        desc: 'Awesome post 3'
      },
    ];
  }

	getPosts(): Post[] {
		console.log('Fetching post from service . . .');
		return this.posts;
	}  

}
