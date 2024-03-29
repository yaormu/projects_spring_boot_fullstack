package com.yomdev.ecommerce.controller;

import com.yomdev.ecommerce.model.DetalleOrden;
import com.yomdev.ecommerce.model.Orden;
import com.yomdev.ecommerce.model.Producto;
import com.yomdev.ecommerce.model.Usuario;
import com.yomdev.ecommerce.service.DetalleOrdenService;
import com.yomdev.ecommerce.service.OrdenService;
import com.yomdev.ecommerce.service.ProductoService;
import com.yomdev.ecommerce.service.UsuarioService;
import jakarta.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.*;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/")
public class HomeController {
    private final Logger log = LoggerFactory.getLogger(HomeController.class);
    @Autowired
    private ProductoService productoService;
    @Autowired
    private UsuarioService usuarioService;
    @Autowired
    private OrdenService ordenService;
    @Autowired
    private DetalleOrdenService detalleOrdenService;

    //Almacenar los detalles de la orden
    List<DetalleOrden> detalles = new ArrayList<>();

    //Datos de orden
    Orden orden = new Orden();

    @GetMapping("")
    public String home(Model model, HttpSession session) {

        log.info("Sesion del usuario: {}", session.getAttribute("idusuario"));

        model.addAttribute("productos", productoService.findAll());

        //session
        model.addAttribute("sesion", session.getAttribute("idusuario"));

        return "usuario/home";
    }

    @GetMapping("productohome/{id}")
    public String productoHome(@PathVariable Integer id, Model model) {
        log.info("Id producto enviado como parámetro {}", id);
        Producto producto;
        Optional<Producto> productoOptional = productoService.get(id);
        producto = productoOptional.get();

        model.addAttribute("producto", producto);

        return "usuario/productohome";
    }

    @PostMapping("/cart")
    public String addCart(@RequestParam Integer id, @RequestParam Integer cantidad, Model model) {

        DetalleOrden detalleOrden = new DetalleOrden();

        Producto producto;

        Optional<Producto> optionalProducto = productoService.get(id);
        log.info("Producto añadido: {}", optionalProducto.get());
        log.info("Cantidad: {}", cantidad);
        producto = optionalProducto.get();

        detalleOrden.setCantidad(cantidad);
        detalleOrden.setPrecio(producto.getPrecio());
        detalleOrden.setNombre(producto.getNombre());
        detalleOrden.setTotal(producto.getPrecio() * cantidad);
        detalleOrden.setProducto(producto);

        //validar que le producto no se añada 2 veces
        Integer idProducto=producto.getId();
        boolean ingresado=detalles.stream().anyMatch(p -> Objects.equals(p.getProducto().getId(), idProducto));

        if (!ingresado) {
            detalles.add(detalleOrden);
        }

        double sumaTotal = detalles.stream().mapToDouble(DetalleOrden::getTotal).sum();

        orden.setTotal(sumaTotal);
        model.addAttribute("cart", detalles);
        model.addAttribute("orden", orden);

        return "usuario/carrito";
    }

    // quitar un producto del carrito
    @GetMapping("/delete/cart/{id}")
    public String deleteProductoCart(@PathVariable Integer id, Model model) {

        // lista nueva de prodcutos
        List<DetalleOrden> ordenesNueva = new ArrayList<>();

        for (DetalleOrden detalleOrden : detalles) {
            if (!Objects.equals(detalleOrden.getProducto().getId(), id)) {
                ordenesNueva.add(detalleOrden);
            }
        }

        // poner la nueva lista con los productos restantes
        detalles = ordenesNueva;

        double sumaTotal = detalles.stream().mapToDouble(DetalleOrden::getTotal).sum();

        orden.setTotal(sumaTotal);
        model.addAttribute("cart", detalles);
        model.addAttribute("orden", orden);

        return "usuario/carrito";
    }

    @GetMapping("/getCart")
    public String getCart(Model model, HttpSession session) {

        model.addAttribute("cart", detalles);
        model.addAttribute("orden", orden);

        //sesion
        model.addAttribute("sesion", session.getAttribute("idusuario"));
        return "/usuario/carrito";
    }

    @GetMapping("/order")
    public String order(Model model, HttpSession session) {

        Usuario usuario =usuarioService.findById( Integer.parseInt(session.getAttribute("idusuario").toString())).get();

        model.addAttribute("cart", detalles);
        model.addAttribute("orden", orden);
        model.addAttribute("usuario", usuario);

        return "usuario/resumenorden";
    }

    //Guardar orden
    @GetMapping("/saveOrder")
    public String saveOrder(HttpSession session ) {
        Date fechaCreacion = new Date();
        orden.setFechaCreacion(fechaCreacion);
        orden.setNumero(ordenService.generarNumeroOrden());

        //Usuario
        Usuario usuario =usuarioService.findById( Integer.parseInt(session.getAttribute("idusuario").toString())  ).get();

        orden.setUsuario(usuario);
        ordenService.save(orden);

        //Guardar detalles
        for (DetalleOrden dt:detalles) {
            dt.setOrden(orden);
            detalleOrdenService.save(dt);
        }

        //Limpiar lista y orden
        orden = new Orden();
        detalles.clear();

        return "redirect:/";
    }

    @PostMapping("/search")
    public String searchProduct(@RequestParam String nombre, Model model) {
        log.info("Nombre del producto: {}", nombre);
        List<Producto> productos= productoService.findAll().stream().filter( p -> p.getNombre().contains(nombre)).collect(Collectors.toList());
        model.addAttribute("productos", productos);
        return "usuario/home";
    }

}