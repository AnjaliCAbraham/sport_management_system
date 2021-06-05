<?php
unset($_SESSION['id']);
unset($_SESSION['name']);
unset($_SESSION['user_type']);
unset($_SESSION['username']);
session_destroy();
?>
<script>
	window.location = "login.php";
</script>