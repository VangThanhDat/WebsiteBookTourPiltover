import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AuthorizationsComponent } from './authorizations.component';

describe('AuthorizationsComponent', () => {
  let component: AuthorizationsComponent;
  let fixture: ComponentFixture<AuthorizationsComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [AuthorizationsComponent]
    });
    fixture = TestBed.createComponent(AuthorizationsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
