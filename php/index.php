<php

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['login'])) {
    require_once 'controllers/LoginController.php';
    $controller = new LoginController();
    $controller->login();
} else {
    
    require_once 'views/login.php';
}
?>