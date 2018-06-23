/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Nandom Gusen
 */
@Entity
@Table(name = "userprofile")
@NamedQueries({
    @NamedQuery(name = "Userprofile.findAll", query = "SELECT u FROM Userprofile u")
    , @NamedQuery(name = "Userprofile.findByUserid", query = "SELECT u FROM Userprofile u WHERE u.userid = :userid")
    , @NamedQuery(name = "Userprofile.findByUsername", query = "SELECT u FROM Userprofile u WHERE u.username = :username")
    , @NamedQuery(name = "Userprofile.findByDob", query = "SELECT u FROM Userprofile u WHERE u.dob = :dob")
    , @NamedQuery(name = "Userprofile.findByEmail", query = "SELECT u FROM Userprofile u WHERE u.email = :email")
    , @NamedQuery(name = "Userprofile.findByInstitution", query = "SELECT u FROM Userprofile u WHERE u.institution = :institution")
    , @NamedQuery(name = "Userprofile.findByName", query = "SELECT u FROM Userprofile u WHERE u.name = :name")
    , @NamedQuery(name = "Userprofile.findByPassword", query = "SELECT u FROM Userprofile u WHERE u.password = :password")
    , @NamedQuery(name = "Userprofile.findByPhone", query = "SELECT u FROM Userprofile u WHERE u.phone = :phone")
    , @NamedQuery(name = "Userprofile.findByUsertype", query = "SELECT u FROM Userprofile u WHERE u.usertype = :usertype")
    , @NamedQuery(name = "Userprofile.findByYearsofexperience", query = "SELECT u FROM Userprofile u WHERE u.yearsofexperience = :yearsofexperience")
    , @NamedQuery(name = "Userprofile.findByRolesandresponsibilities", query = "SELECT u FROM Userprofile u WHERE u.rolesandresponsibilities = :rolesandresponsibilities")})
public class Userprofile implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "userid")
    private Integer userid;
    @Column(name = "username")
    private String username;
    @Column(name = "dob")
    @Temporal(TemporalType.DATE)
    private Date dob;
    @Column(name = "email")
    private String email;
    @Column(name = "institution")
    private String institution;
    @Column(name = "name")
    private String name;
    @Column(name = "password")
    private String password;
    @Column(name = "phone")
    private String phone;
    @Column(name = "usertype")
    private String usertype;
    @Column(name = "yearsofexperience")
    private String yearsofexperience;
    @Column(name = "rolesandresponsibilities")
    private String rolesandresponsibilities;

    public Userprofile() {
    }

    public Userprofile(Integer userid) {
        this.userid = userid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getInstitution() {
        return institution;
    }

    public void setInstitution(String institution) {
        this.institution = institution;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    public String getYearsofexperience() {
        return yearsofexperience;
    }

    public void setYearsofexperience(String yearsofexperience) {
        this.yearsofexperience = yearsofexperience;
    }

    public String getRolesandresponsibilities() {
        return rolesandresponsibilities;
    }

    public void setRolesandresponsibilities(String rolesandresponsibilities) {
        this.rolesandresponsibilities = rolesandresponsibilities;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (userid != null ? userid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Userprofile)) {
            return false;
        }
        Userprofile other = (Userprofile) object;
        if ((this.userid == null && other.userid != null) || (this.userid != null && !this.userid.equals(other.userid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nandom.app.entities.Userprofile[ userid=" + userid + " ]";
    }
    
}
