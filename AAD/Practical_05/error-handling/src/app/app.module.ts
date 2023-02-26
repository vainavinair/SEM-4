import { ErrorHandler,NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { GlobalErrorHandler } from './GlobalErrorHandler';

@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  //provide property specifies the token that will be used to look up the service, and the useClass property specifies the class that provides the service
  
  providers: [ {provide: ErrorHandler, useClass:GlobalErrorHandler}],
  bootstrap: [AppComponent]
})
export class AppModule { }
