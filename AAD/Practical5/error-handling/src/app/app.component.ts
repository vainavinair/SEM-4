import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'error-handling';

  ngOnInit(){
    //throws a error on initialization
    throw new Error("This error is meant to handled by the error handler service.")
  }

}
