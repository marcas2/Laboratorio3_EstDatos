/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.umariana.mundo;

/**
 *
 * @author Maria
 */
public class Video {
    /*
      Declaracion de variables
    */
    private int idVideo;
    private String titulo;
    private String autor;

    private String anio;
    private String categoria; 
    private String url;
    private String letra;
    
    /**
     * Constructor 
     */
    public Video() {
    }

    public Video(int idVideo, String titulo, String autor, String anio, String categoria, String url, String letra) {
        this.idVideo = idVideo;
        this.titulo = titulo;
        this.autor = autor;
        this.anio = anio;
        this.categoria = categoria;
        this.url = url;
        this.letra = letra;
    }
    /**
     * Getter y Setter
     * @return 
     */
    public int getIdVideo() {
        return idVideo;
    }

    public void setIdVideo(int idVideo) {
        this.idVideo = idVideo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getAnio() {
        return anio;
    }

    public void setAnio(String anio) {
        this.anio = anio;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getLetra() {
        return letra;
    }

    public void setLetra(String letra) {
        this.letra = letra;
    }
    
    
}
