<?php



function get_business_data()
{
    $sql = "SELECT * FROM business_master";
$result = $conn->query($sql);

echo "<pre>";
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {

        print_r($row);

        // echo "<br> id: ". $row["id"]. " - Name: ". $row["firstname"]. " " . $row["lastname"] . "<br>";
    }
} else {
    echo "0 results";
}

$conn->close();
}