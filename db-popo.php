<?php
class Drink{
  private $id;
  private $name;
  private $brand;
  private $price;
  private $expiry;

  public function __construct($row){
    $this -> setId($row['id']);
    $this -> setName($row['name']);
    $this -> setBrand($row['brand']);
    $this -> setPrice($row['price']);
    $this -> setExpiry($row['expiry']);
  }
  public function setId($id){
    $this -> id = $id;
  }
  public function setName($name){
    $this -> name = $name;
  }
  public function setBrand($brand){
    $this -> brand = $brand;
  }
  public function setPrice($price){
    $this -> price = $price;
  }
  public function setExpiry($expiry){
    $this -> expiry =$expiry;
  }
  public function getId(){
    return $this -> id;
  }
  public function getName(){
    return $this -> name;
  }
  public function getBrand(){
    return $this -> brand;
  }
  public function getPrice(){
    return $this -> price;
  }
  public function getExpiry(){
    return $this -> expiry;
  }

  public function __toString(){
    return "Id=".$this -> getId()." "
          ."Name=".$this -> getName()." "
          ."Brand=".$this -> getBrand()." "
          ."Price=".$this -> getPrice()." "
          ."Date-Expiry=".$this -> getExpiry() ;
  }
}




?>
