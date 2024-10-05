<?php require_once 'core/dbconfig.php';?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>

        <?php

        //DEMONSTRATION OF FETCH ALL
        /*$stmt = $pdo->prepare("SELECT * FROM patients);

        if($stmt-> execute()) {
            echo "<pre>";
            print_r($stmt->fetchALL());
            echo "<pre>";*/


        //DEMONSTRATION OF FETCH
        /*$stmt = $pdo->prepare("SELECT * FROM appointments 
                               WHERE patient_id = 5");

        if($stmt-> execute()) {
            echo "<pre>";
            print_r($stmt->fetch());
            echo "<pre>";
        }*/


        //DEMONSTRATION OF INSERTION
        /*$query = "INSERT INTO patients(patient_id, first_name, last_name,
                  date_of_birth, contact_info, address) VALUES 
                  (?,?,?,?,?,?)";

        $stmt = $pdo->prepare($query);

        $executeQuery = $stmt->execute(
            [13,"Janimah","Abdul", '2003-07-28', '+30 916 616 3605', "Dasmarinas City"]
        );

        if ($executeQuery){
            echo "Query Successful!";
        }
        else{
            echo "Query failed";
        }*/


        //DEMONSTRATION OF DELETION
        /*$query ="DELETE FROM appointments WHERE patient_id = 8";

        $stmt = $pdo->prepare($query);

        $executeQuery = $stmt->execute();

        if ($executeQuery) {
            echo "Deletion Successful!";
        }
        else {
            echo "Query failes";
        }*/


        //DEMONSTRATION OF UPDATING USERS INFORMATION
        /*$query = "UPDATE patients SET first_name = ?, last_name = ? 
                  WHERE patient_id = 2";

        $stmt = $pdo->prepare($query);

        $executeQuery = $stmt->execute(["Tanleigh", "Floquet"]);

        if ($executeQuery){
            echo "Update Successful!";
        }
        else {
            echo "Query Failed";
        }
        */

        //DEMONSTRATION 8.SQL QUERY’S RESULT SET RENDERED ON AN HTML TABLE
        /*$query = "SELECT Patients.patient_id,  Patients.last_name, 
                  Medications.medication_name 
                  FROM Patients
                  JOIN Medical_records ON 
                  Patients.patient_id = Medical_records.patient_id
                  JOIN Medications ON 
                  Medical_records.med_record_id = Medications.med_record_id
                  ";
        
        $stmt = $pdo->prepare($query);

        $executeQuery = $stmt->execute();

        if ($executeQuery) {
            $MedicationsRecord = $stmt->fetchAll();
        }
        else {
            echo "Query Failed";
        }
        ?>

        <table>
            <tr>
                <th>Patient ID</th>
                <th>Surname</th>
                <th>Medications</th>
            </tr>
            <?php foreach ($MedicationsRecord as $row) { ?>
            <tr>
                <td><?php echo $row['patient_id']; ?></td>
                <td><?php echo $row['last_name']; ?></td>
                <td><?php echo $row['medication_name']; ?></td>
            </tr>
            <?php } 
        </table>
        <style>
          th,td{
             border-style: solid;
             width: 30%; 
             text-align: center;
          }
        </style>*/

        ?>
 

    </body>
</html>