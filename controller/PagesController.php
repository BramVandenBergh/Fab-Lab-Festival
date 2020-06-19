<?php

require_once __DIR__ . '/Controller.php';
require_once __DIR__ . '/../dao/TicketDAO.php';
require_once __DIR__ . '/../dao/TruckDAO.php';

class PagesController extends Controller {

  function __construct() {
    $this->TicketDAO = new TicketDAO();
    $this->TruckDAO = new TruckDAO();
}
  
  public function index() {
    $this->set('title', 'Home');
    $this->set('currentPage', 'home');
  }

  public function trucks() {

    $truckinfo = $this->TruckDAO->selectAllTruckInformation();

    $this->set('title', 'Trucks');
    $this->set('currentPage', 'trucks');
    $this->set('truckinfo', $truckinfo);
  }

  public function map() {
    $this->set('title', 'Map');
    $this->set('currentPage', 'map');
  }

  public function tickets() {
    $kinds = $this->TicketDAO->selectAllKinds();
    $locations = $this->TicketDAO->selectAllLocations();
    $trucks = $this->TicketDAO->selectAllTrucks();
    $timeslots = $this->TicketDAO->selectAllTimeslots();

    $this->set('title', 'Tickets');
    $this->set('currentPage', 'tickets');
    $this->set('kinds', $kinds);
    $this->set('locations', $locations);
    $this->set('trucks', $trucks);
    $this->set('timeslots', $timeslots);
    
  }

  public function ticket() {
    $kind = $this->TicketDAO->selectKindById($_GET['id']);
    $locations = $this->TicketDAO->selectAllLocations();
    $trucks = $this->TicketDAO->selectAllTrucks();
    $timeslots = $this->TicketDAO->selectAllTimeslots();

    
    $this->set('title', 'Tickets');
    $this->set('currentPage', 'tickets');
    $this->set('kind',$kind);
    $this->set('locations', $locations);
    $this->set('trucks', $trucks);
    $this->set('timeslots', $timeslots);
  }

  public function cart() {
    $this->set('title', 'Cart');
    $this->set('currentPage', 'cart');
    
    if (!empty($_POST['action'])) {
      if ($_POST['action'] == 'add') {
        $this->_handleAdd();
        header('Location: index.php?page=cart');
        exit();
      }
      if ($_POST['action'] == 'empty') {
        $_SESSION['cart'] = array();
      }
      if ($_POST['action'] == 'update') {
        $this->_handleUpdate();
      }
      header('Location: index.php?page=cart');
      exit();
    }
    if (!empty($_POST['remove'])) {
      $this->_handleRemove();
      header('Location: index.php?page=cart');
      exit();
    }
  }

  private function _handleCheckout() {
    header('Location: https://stripe.com/checkout');
    exit();
  }

  private function _handleAdd() {
    if (empty($_SESSION['cart'][$_POST['id']])) {
      $kind = $this->TicketDAO->selectKindById($_POST['id']);
      $location = $this->TicketDAO->selectLocationById($_POST['id']);
      $truck = $this->TicketDAO->selectTruckById($_POST['id']);
      if (empty($kind)) {
        return;
      }
      $_SESSION['cart'][$_POST['id']] = array(
        'kind' => $kind,
        'location' => $location,
        'truck' => $truck,
        'quantity' => 0
      );
    }
    $_SESSION['cart'][$_POST['id']]['quantity']++;
  }

  private function _handleRemove() {
    if (isset($_SESSION['cart'][$_POST['remove']])) {
      unset($_SESSION['cart'][$_POST['remove']]);
    }
  }

  private function _handleUpdate() {
    foreach ($_POST['quantity'] as $ticketId => $quantity) {
      if (!empty($_SESSION['cart'][$ticketId])) {
        $_SESSION['cart'][$ticketId]['quantity'] = $quantity;
      }
    }
    $this->_removeWhereQuantityIsZero();
  }

  private function _removeWhereQuantityIsZero() {
    foreach($_SESSION['cart'] as $ticketId => $info) {
      if ($info['quantity'] <= 0) {
        unset($_SESSION['cart'][$ticketId]);
      }
    }
  }

  

}
