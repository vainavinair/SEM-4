import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';


@Component({
  selector: 'app-form-body',
  templateUrl: './form-body.component.html',
  styleUrls: ['./form-body.component.css']
})
export class FormBodyComponent {
  registerForm!:FormGroup;
  title="Vaianvi Nair";
  submitted=false;

  constructor(private formBuilder: FormBuilder){}


  ngOnInit(){
    //validations
    this.registerForm=this.formBuilder.group({
      firstName:['',Validators.required],
      lastName:['',Validators.required],
      email: ['', [Validators.required, Validators.email]],
      pass: ['', [Validators.required, Validators.minLength(8)]]
    })
  }
  get f() { return this.registerForm.controls; }
  onSubmit(){
    this.submitted= true
    if (this.registerForm.invalid){
      return
    }
    alert("Success");
  }
}
