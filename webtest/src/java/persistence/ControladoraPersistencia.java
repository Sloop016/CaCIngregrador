/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistence;

import java.util.List;
import logica.Oradores;

/**
 *
 * @author gabyg
 */
public class ControladoraPersistencia {
    OradoresJpaController usuJpa = new OradoresJpaController();
    
    
    //create
    public void crearOrador(Oradores oro){
        usuJpa.create(oro);
    }
    
    //Lectura
    public List<Oradores> traerOradores(){
        return usuJpa.findOradoresEntities();
    }
}
