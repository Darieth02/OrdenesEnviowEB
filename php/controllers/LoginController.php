<?php
require_once 'models/UserModel.php';

class LoginController
{
    public function login()
    {
        // Obtener los datos enviados por el formulario de inicio de sesión
        $username = $_POST['username'];
        $password = $_POST['password'];

        // Validar los datos del usuario
        $userModel = new UserModel();
        $user = $userModel->getUserByUsername($username);

        if ($user && password_verify($password, $user['password'])) {
            // Inicio de sesión exitoso, redirigir al usuario a la página principal
            header('Location: index.php');
        } else {
            // Mostrar mensaje de error en la vista de inicio de sesión
            $errorMessage = 'Credenciales inválidas. Inténtalo de nuevo.';
            require_once 'views/login.php';
        }
    }
}
?>
