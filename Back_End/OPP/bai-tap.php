<?php
class User{
    private $username;
    private $password;
    private $db_username = 'dung123tl';
    private $db_password = '123456789';

    //các phương thức
    public function setInfo($username,$password){
        $this->username = $username;
        $this->password = $password;
    }
    
    public function checkLogin(){
        if($this->username == $this->db_username && $this->password == $this->db_password){
            echo 'Hello ' ,$this->username; 
        }
        else{
            echo 'Nguoi dung khong tin tai';
        }
    }
}


$u = new User();
$u->setInfo('dung12tl','123456789');
$u->checkLogin();

?>