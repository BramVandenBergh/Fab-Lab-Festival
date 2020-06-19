<?php
session_start();
ini_set('display_errors', true);
error_reporting(E_ALL);

$routes = array(
  'home' => array(
      'controller' => 'Pages',
      'action' => 'index'
  ),
  'trucks' => array(
      'controller' => 'Pages',
      'action' => 'trucks'
  ),
  'map' => array(
    'controller' => 'Pages',
    'action' => 'map'
  ),
  'tickets' => array(
    'controller' => 'Pages',
    'action' => 'tickets'
  ),
  'cart' => array(
      'controller' => 'Pages',
      'action' => 'cart'
  ),
  'ticket' => array(
    'controller' => 'Pages',
    'action' => 'ticket'
  )
);

if (empty($_GET['page'])) {
  $_GET['page'] = 'home';
}
if (empty($routes[$_GET['page']])) {
  header('Location: index.php');
  exit();
}

$route = $routes[$_GET['page']];
$controllerName = $route['controller'] . 'Controller';

require_once __DIR__ . '/controller/' . $controllerName . ".php";

$controllerObj = new $controllerName();
$controllerObj->route = $route;
$controllerObj->filter();
$controllerObj->render();
