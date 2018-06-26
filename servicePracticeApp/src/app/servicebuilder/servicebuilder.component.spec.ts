import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ServicebuilderComponent } from './servicebuilder.component';

describe('ServicebuilderComponent', () => {
  let component: ServicebuilderComponent;
  let fixture: ComponentFixture<ServicebuilderComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ServicebuilderComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ServicebuilderComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
