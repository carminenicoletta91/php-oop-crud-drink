<?php
  include "db-popo.php";
  include "db-connection.php";
  include "db-query.php";

  $res = $conn -> query($query_getAllDrinks);

  $drinks=[];
  if ($res && $res -> num_rows >0){
    while($row = $res -> fetch_assoc() ){
      $drinks[]=new Drink($row);
    }
  }

  for($i=0;$i<sizeof($drinks);$i++){
    $drink = $drinks[$i];
    echo $drink."<br>";
  }


  $min = $drinks[0];
  $max = $drinks[0];
  $sum = 0;
  echo("<br>------Before read object------ <br>");
  echo( "Min=".$min."<br>"
       ."Max=".$max."<br>"
       ."Sum=".$sum."<br>"
      );

  for($i=0;$i<sizeof($drinks);$i++){
    $drink = $drinks[$i];
    $sum += $drink ->getPrice();
    if($drink -> getPrice() < $min -> getPrice()){
      $min =$drink;
    }
    if($drink -> getPrice() > $max -> getPrice()){
      $max =$drink;
    }

  }
  echo("<br>------After read object------ <br>");
  echo( "Min=".$min."<br>"
       ."Max=".$max."<br>"
       ."Sum=".$sum."<br>"
      );
  $conn ->close();
?>
