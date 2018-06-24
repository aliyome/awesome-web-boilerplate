import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from '../environments/environment';
import { Observable } from 'rxjs';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
})
export class AppComponent implements OnInit {
  values: Observable<any>;

  constructor(private http: HttpClient) {}

  ngOnInit() {
    this.values = this.http.get(environment.apiUrl + 'api/values');
  }
}
