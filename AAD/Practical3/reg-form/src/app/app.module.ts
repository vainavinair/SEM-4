import { NgModule } from '@angular/core';
import { ReactiveFormsModule } from '@angular/forms';

import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { FormBodyComponent } from "./form-body/form-body.component";




@NgModule({
    declarations: [
        AppComponent,
        FormBodyComponent
    ],
    providers: [],
    bootstrap: [AppComponent],
    imports: [
        BrowserModule,
        ReactiveFormsModule
    ]
})
export class AppModule { }
