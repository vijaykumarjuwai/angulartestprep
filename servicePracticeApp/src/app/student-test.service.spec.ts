import { TestBed, inject } from '@angular/core/testing';

import { StudentTestService } from './student-test.service';

describe('StudentTestService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [StudentTestService]
    });
  });

  it('should be created', inject([StudentTestService], (service: StudentTestService) => {
    expect(service).toBeTruthy();
  }));
});
