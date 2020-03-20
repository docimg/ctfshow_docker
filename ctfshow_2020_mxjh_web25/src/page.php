<?php
error_reporting(0);
session_start();
if(!isset($_SESSION['user']))
{
    header('location:/');
}
include('db.php');
if(isset($_GET['id'])){
  $id = str_replace("("," ",$_GET['id']);
  $id = str_ireplace("union"," ",$id);
  $sql = "SELECT id, title, content, time FROM blogs WHERE id = ".$id;
  echo $sql.'<hr>';
  $result = $conn->query($sql);
  if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo '<h1>'.$row['title'].'</h1>';
    echo '<p>'.$row['content'].'</p>';
    echo '<p>创建时间：'.date("Y-m-d H:i:s",$row['time']).'</p>';
  }else{
    echo '<h1>no result</h1>';
  }
}else{
  echo '<ul>';
  $sql = "SELECT id, title FROM blogs";
  $result = $conn->query($sql);
  if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
      echo '<li><a href="/page.php?id=' .$row["id"]. '">' .$row["title"]. '</a></li>';
    }
  }
  echo '</ul>';
}
?>
