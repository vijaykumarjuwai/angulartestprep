import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { ServicebuilderComponent } from './servicebuilder/servicebuilder.component';
import { PostService } from './post.service';
import { TestComponent } from './test/test.component';
import { StudentTestService } from './student-test.service';
import { HttpModule } from '@angular/http';

@NgModule({
  declarations: [
    AppComponent,
    ServicebuilderComponent,
    TestComponent
  ],
  imports: [
    BrowserModule, HttpModule
  ],
  providers: [PostService, StudentTestService],
  bootstrap: [AppComponent]
})
export class AppModule { }
