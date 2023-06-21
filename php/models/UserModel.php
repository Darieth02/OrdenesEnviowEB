<?php
class UserModel
{
    // Simulación de una base de datos con un usuario de prueba
    private $users = [
        [
            'id' => 1,
            'username' => 'usuario',
            'password' => '$2y$10$Z5Se7NvYjF4b/WR8rP4aO.Ghe4rMS.vOaVx4zSn/UdtFt8feg7dS2' // contraseña: password123
        ]
    ];

    public function getUserByUsername($username)
    {
        foreach ($this->users as $user) {
            if ($user['username'] === $username) {
                return $user;
            }
        }
        return null;
    }
}
?>

