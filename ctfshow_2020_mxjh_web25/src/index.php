<?php
error_reporting(0);
session_start();
include('db.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>示例博客</title>
</head>
<body style="text-align:center">
	<div>
    <form action="/" method="post">
				<h2>登录界面</h2>
		    <label>用户名：<input type="text" name="username"/></label><br>
				<label>密　码：<input type="password" name="password"/></label><br><br>
				<input type="submit" value="登录"/>
				<?php
					if(isset($_POST['username']) && isset($_POST['password'])){
						$username = $_POST['username'];
						$password = $_POST['password'];
						$sql = "SELECT password FROM users WHERE username = '$username' limit 1";
						$result = $conn->query($sql);
						if ($result->num_rows > 0) {
							$row = $result->fetch_assoc();
							if($row['password'] === md5($password)){
								$_SESSION['user'] = $username;
								echo '<script>window.location.href="page.php";</script>';
							}else{
								echo '<br><br>用户不存在或密码错误';
							}
						} else {
						    echo '<br><br>用户不存在或密码错误';
						}
						$conn->close();
					}
				?>
		</form>
	</div>
	<!-- ?source -->
	<?php if(isset($_GET['source'])){
		echo '<div style="text-align:left">';
		show_source(__FILE__);
		echo '</div>';
	}?>
</body>
</html>
