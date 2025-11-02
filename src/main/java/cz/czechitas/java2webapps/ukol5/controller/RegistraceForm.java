package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

import java.time.LocalDate;

public class RegistraceForm {
    @NotBlank
    private String jmeno;

    @NotBlank
     private String prijmeni;

    @NotNull
     private LocalDate datumNarozeni;

    @NotNull
     private Pohlavi pohlavi;

    @NotNull
     private Turnus turnus;

     private String email;

    private String telefon;

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Turnus getTurnus() {
        return turnus;
    }

    public void setTurnus(Turnus turnus) {
        this.turnus = turnus;
    }

    public Pohlavi getPohlavi() {
        return pohlavi;
    }

    public void setPohlavi(Pohlavi pohlavi) {
        this.pohlavi = pohlavi;
    }

    public LocalDate getDatumNarozeni() {
        return datumNarozeni;
    }

    public void setDatumNarozeni(LocalDate datumNarozeni) {
        this.datumNarozeni = datumNarozeni;
    }

    public String getPrijmeni() {
        return prijmeni;
    }

    public void setPrijmeni(String prijmeni) {
        this.prijmeni = prijmeni;
    }

    public String getJmeno() {
        return jmeno;
    }

    public void setJmeno(String jmeno) {
        this.jmeno = jmeno;
    }


}
