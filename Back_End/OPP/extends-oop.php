<?php
class A{
    protected $a = 10;
}

class B extends A{
    public function getA(){
        return $this->a;
    }
}

$kq = new B();
echo $kq->getA();

?>