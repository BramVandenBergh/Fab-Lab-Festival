<?php
require_once __DIR__ . '/DAO.php';
class TruckDAO extends DAO {

  public function selectAllTruckInformation(){
    $sql = "SELECT * FROM `int2herex_truckinfo`";
    $stmt = $this->pdo->prepare($sql);
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
  }

}
