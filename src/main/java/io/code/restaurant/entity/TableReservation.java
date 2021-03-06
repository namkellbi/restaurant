package io.code.restaurant.entity;

import javax.persistence.*;

@Entity
@Table(name = "table_reservation")
public class TableReservation {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;
  @Column(name = "name")
  private String name;
  @Column(name = "email")
  private String email;
  @Column(name = "phone")
  private Long phone;
  @Column(name = "numberOfGuest")
  private Long numberOfGuest;
  @Column(name = "dateTable")
  private Long dateTable;
  @Column(name = "timeTable")
  private Long timeTable;
  @Column(name = "message")
  private String message;

  public TableReservation(int id, String name, String email, Long phone, Long numberOfGuest, Long dateTable,
    Long timeTable, String message) {
    this.id = id;
    this.name = name;
    this.email = email;
    this.phone = phone;
    this.numberOfGuest = numberOfGuest;
    this.dateTable = dateTable;
    this.timeTable = timeTable;
    this.message = message;
  }

  public TableReservation() {

  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public Long getPhone() {
    return phone;
  }

  public void setPhone(Long phone) {
    this.phone = phone;
  }

  public Long getNumberOfGuest() {
    return numberOfGuest;
  }

  public void setNumberOfGuest(Long numberOfGuest) {
    this.numberOfGuest = numberOfGuest;
  }

  public Long getDateTable() {
    return dateTable;
  }

  public void setDateTable(Long dateTable) {
    this.dateTable = dateTable;
  }

  public Long getTimeTable() {
    return timeTable;
  }

  public void setTimeTable(Long timeTable) {
    this.timeTable = timeTable;
  }

  public String getMessage() {
    return message;
  }

  public void setMessage(String message) {
    this.message = message;
  }
}
