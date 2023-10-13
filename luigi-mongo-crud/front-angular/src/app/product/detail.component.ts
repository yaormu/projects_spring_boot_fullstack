import { Product } from './../model/product';
import { ProductService } from './../services/product.service';
import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-detail',
  templateUrl: './detail.component.html',
  styleUrls: ['./detail.component.css'],
})
export class DetailComponent implements OnInit {
  // Vamos a recibir un producto o no definido
  product: Product | undefined;

  // Inyectamos servicios y cosas necesarias
  constructor(
    private productService: ProductService,
    private toast: ToastrService,
    private router: Router,
    private activatedRoute: ActivatedRoute
  ) {}

  // Inicializamos el parametro
  ngOnInit(): void {
    this.getProduct();
  }

  getProduct(): void {
    // acceder al elemento con el parametro
    const id = this.activatedRoute.snapshot.params['id'];
    // acceder al metodo del servicio
    this.productService.detail(id).subscribe(
      (data) => {
        this.product = data;
        console.log(this.product);
      },
      (err) => {
        this.toast.error(err.error.message, 'Error', {
          timeOut: 3000,
          positionClass: 'toast-top-center',
        });
        this.router.navigate(['']);
      }
    );
  }
}
