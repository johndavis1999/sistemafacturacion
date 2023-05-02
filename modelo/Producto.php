    <?php
    class Producto{
        private $PDO;
        public function __construct()
        {
            require_once("c://xampp/htdocs/sistemafacturacion/base/database.php");
            $con = new database();
            $this->PDO = $con->conexion();
        }
        public function index(){
            require_once("c://xampp/htdocs/sistemafacturacion/base/database.php");
            $con = new database();
            $PDO = $con->conexion();
        
            $statement = $PDO->prepare("SELECT * FROM producto ");
            return ($statement->execute()) ? $statement->fetchAll() : false;  
        }
        
    }

?>