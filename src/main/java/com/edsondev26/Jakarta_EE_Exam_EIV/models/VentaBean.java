/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.edsondev26.Jakarta_EE_Exam_EIV.models;

import com.edsondev26.Jakarta_EE_Exam_EIV.models.Venta;
import jakarta.ejb.Singleton;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author EDSON
 */
@Singleton
public class VentaBean {

    private final List<Venta> ventas = new ArrayList<>();

    public void agregarVenta(Venta venta) {
        ventas.add(venta);
    }

    public List<Venta> obtenerVentas() {
        return ventas;
    }
}