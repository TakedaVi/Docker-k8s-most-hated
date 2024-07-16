<html lang="en">
<head>
<title>My classmates of SF</title>
        <link rel="stylesheet" href="style.css" type="text/css"/>
</head>
<body>
<h1>classmates</h1>
<table>
        <tr><th>surname</th><th>name</th><th>second_name</th><th>year_of_birth</th></tr>
<?php
$host = getenv('DB_URL');
$user = getenv('USER_NAME');
$pass = getenv('USER_PASSWORD');
$name = getenv('DB');

$mysqli = new mysqli($host, $user, $pass, $name);
$result = $mysqli->query("SELECT * FROM classmates");
foreach ($result as $row){
        echo "<tr><td>{$row['surname']}</td><td>{$row['name']}</td><td>{$row['second_name']}</td><td>{$row['year_of_birth']}</td></tr>";
}
?>
</table>
<?php
phpinfo();
?>
</body>
</html>
