/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.edsondev26.Jakarta_EE_Exam_EIV.models;

import java.util.Date;
import java.util.List;

/**
 *
 * @author EDSON
 */
public class Venta {
    private String nitCliente;
    private String apellidoCliente;
    private Date fecha;
    private List<Producto> productos;

    public Venta(String nitCliente, String apellidoCliente, Date fecha, List<Producto> productos) {
        this.nitCliente = nitCliente;
        this.apellidoCliente = apellidoCliente;
        this.fecha = fecha;
        this.productos = productos;
    }

    public String getNitCliente() {
        return nitCliente;
    }

    public void setNitCliente(String nitCliente) {
        this.nitCliente = nitCliente;
    }

    public String getApellidoCliente() {
        return apellidoCliente;
    }

    public void setApellidoCliente(String apellidoCliente) {
        this.apellidoCliente = apellidoCliente;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public List<Producto> getProductos() {
        return productos;
    }

    public void setProductos(List<Producto> productos) {
        this.productos = productos;
    }

    
}
