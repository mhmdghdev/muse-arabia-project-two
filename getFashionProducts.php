<?php
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");

// i removed my login data
// $con = mysqli_connect("localhost", "", "", "");

// Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$sql = "SELECT fashionp.pid, fashionp.name, fashionp.production, fashionp.price, fashionp.brand, fashionp.photo_url, categories.name AS category FROM fashionp 
        INNER JOIN categories ON fashionp.cid = categories.cid";

if ($result = mysqli_query($con, $sql)) {
    $emparray = array();
    while ($row = mysqli_fetch_assoc($result))
        $emparray[] = $row;

    echo(json_encode($emparray));
    // Free result set
    mysqli_free_result($result);
    mysqli_close($con);
}
?>
