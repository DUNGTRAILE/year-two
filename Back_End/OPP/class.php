<?php
class HinhChuNhat{
    private $width;
    private $height;
    private static $int = 30;

    public function __construct($width = 0 , $height = 0){
        $this->width = $width;
        $this->height = $height;
    }

    public static function getSo(){
        return self::$int;
    }
    public function setHeight($height){
        $this->height = $height;
    }
    public function setWidth($width){
        $this->width = $width;
    }
    public function getChuVi(){
        return 2*($this->width + $this->height);
    }
}


$ketQua = new HinhChuNhat(20,30);
// $ketQua->setHeight(20);

echo $ketQua->getChuVi();
echo HinhChuNhat::getSo();
?>