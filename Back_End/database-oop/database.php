<?php
require_once 'config.php';
class DB
{
    public $conn;

    function __construct()
    {
        $this->connection();
    }

    function connection()
    {
        $this->conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
        if ($this->conn->connect_error) {
            echo 'kết nối không thành công: ';
        } else {
            // echo'oki';
        }
    }

    function escape_string($str)
    {
        return $this->conn->real_escape_string($str);
    }

    function query($sql)
    {
        return $this->conn->query($sql);
    }

    function insert($table, $data)
    {
        foreach ($data as $k => $v) {
            $list_field[] = $k;
            $list_value[] = "'{$this->escape_string($v)}'";
        }

        $list_field = join(', ', $list_field);
        $list_value = join(', ', $list_value);

        $sql = "INSERT INTO $table ($list_field)
        VALUES ($list_value)";
        // echo $sql;
        if ($this->query($sql) == TRUE) {
            return $this->conn->insert_id;
        } else {
            echo "lỗi: " . $this->conn->error;
        }
    }
    function get($table, $field = array(), $where = "")
    {
        $field = !empty($field) ? join(',', $field) : "*";
        $where = !empty($where) ? "WHERE $where" : "";

        $sql = "SELECT $field
                FROM $table
                $where";

        echo $sql;
        $result = $this->query($sql);
        if ($result->num_rows > 0) {
            $data = array();
            while ($row = $result->fetch_assoc()) {
                $data[] = $row;
            }
            if (count($data) > 1) {
                return $data;
            }
            return $data[0];
        } else {
            echo "lỗi: " . $this->conn->error;
        }
    }
    //UPDATE $tabe
    //SET clum1 = value1, clum2 = value2..........
    //WHERE .....
    function update($table, $data = array(), $where)
    {
        $data_insert = array();
        foreach ($data as $k => $v) {
            $data_insert[] = "$k = '$v'";
        }
        $where = !empty($where) ? "WHERE $where" : "";
        $data_insert = join(',', $data_insert);
        $sql = "UPDATE $table
                SET $data_insert
                $where";
        if ($this->query($sql) == TRUE) {
            echo 'cap nhanh cong!';
        } else {
            echo "lỗi: " . $this->conn->error;
        }
    }
    //DELETE FROM table WHERE
    function delete ($table , $where){
        $where = !empty($where) ? "WHERE $where" : "";
        $sql = "DELETE FROM $table $where";
        if ($this->query($sql) == TRUE) {
            echo 'xoa thanh cong!';
        } else {
            echo "lỗi: " . $this->conn->error;
        }
    }
    
}


$db = new DB;;
$dataf = array(
    'username' => 'tng',
    'password' => md5('dunggggg')
);

// $db ->insert("users", $data);
// $db ->connection();
// echo 'hello';
$user = $db->get('users', array(), 'id = 1');
echo '<pre>';
print_r($user);
echo '</pre>';
// echo $db->update('users', $dataf, 'id = 1');
echo $db->delete('users','id = 1');
