<?php
require "DataBaseConfig.php";

class DataBase
{
    public $connect;
    public $data;
    public $consulta;
    private $sql;
    protected $servername;
    protected $username;
    protected $password;
    protected $databasename;

    public function __construct()
    {
        $this->connect = null;
        $this->data = null;
        $this->sql = null;
        $this->consulta = null;
        $dbc = new DataBaseConfig();
        $this->servername = $dbc->servername;
        $this->username = $dbc->username;
        $this->password = $dbc->password;
        $this->databasename = $dbc->databasename;
    }

    function dbConnect()
    {
        $this->connect = mysqli_connect($this->servername, $this->username, $this->password, $this->databasename);
        return $this->connect;
    }

    function prepareData($data)
    {
        return mysqli_real_escape_string($this->connect, stripslashes(htmlspecialchars($data)));
    }

    function logIn($table, $username, $password)
    {
        $username = $this->prepareData($username);
        $password = $this->prepareData($password);
        $this->sql = "select * from " . $table . " where username = '" . $username . "'";
        $result = mysqli_query($this->connect, $this->sql);
        $row = mysqli_fetch_assoc($result);
        if (mysqli_num_rows($result) != 0) {
            $dbusername = $row['username'];
            $dbpassword = $row['password'];
            if ($dbusername == $username && password_verify($password, $dbpassword)) {
                $login = true;
            } else $login = false;
        } else $login = false;

        return $login;
    }

    function signUp($table, $fullname, $email, $username, $password, $typeuser)
    {
        $fullname = $this->prepareData($fullname);
        $username = $this->prepareData($username);
        $password = $this->prepareData($password);
        $email = $this->prepareData($email);
        $typeuser = $this->prepareData($typeuser);
        $password = password_hash($password, PASSWORD_DEFAULT);
        $this->sql =
            "INSERT INTO " . $table . " (fullname, username, password, email, typeuser) VALUES ('" . $fullname . "','" . $username . "','" . $password . "','" . $email . "','" . $typeuser . "')";
        if (mysqli_query($this->connect, $this->sql)) {
            return true;
        } else return false;
    }
     function tipoUsuario($username){
        $this -> sql = "SELECT * FROM users WHERE username = '".$username."'";
        $result = mysqli_query($this->connect, $this->sql);
        while($consulta = mysqli_fetch_array($result)){
    
        echo $consulta['typeuser'];
    }
    return $consulta;
    
    }

}

?>
