import { Component, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
    selector: 'app-fetch-data',
    templateUrl: './fetch-data.component.html'
})
export class FetchDataComponent {
    public cars: CarTable[];

    constructor(http: HttpClient, @Inject('BASE_URL') baseUrl: string) {
        http.get<CarTable[]>(baseUrl + 'api/cars').subscribe(result => {
            this.cars = result;
        }, error => console.error(error));
        http.get<CarTable[]>(baseUrl + 'api/cars/horse_power').subscribe(result => {
            
        }, error => console.error(error));
    }
}

interface CarTable {
    manufacturer: string;
    modell: string;
    horse_power: number;
    design: string;
    manufactured: Date;
    engine_cc: number;
    established_at: Date;
    place: string;
}
