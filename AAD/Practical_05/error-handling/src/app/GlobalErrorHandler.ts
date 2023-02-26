import { ErrorHandler, Injectable } from '@angular/core';

//The Injectable decorator in Angular is used to mark a class as a service that can be injected into other components
@Injectable()
//export creates a module
export class GlobalErrorHandler implements ErrorHandler {

    constructor() {}
    handleError(error: TypeError) {
        // your custom error handling logic
        console.log("error", error);
        this.displayError(error);
    }
    private displayError(error: TypeError): void {
        // call error logging API or display error
        alert(error.message);
    }
}
