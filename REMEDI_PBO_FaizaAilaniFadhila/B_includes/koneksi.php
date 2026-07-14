<?php
// koneksi.php
class Database {
    private $host = "localhost";
    private $username = "root";
    private $password = "";
    private $database = "DB_REMEDI_PBO_TRPL1B_FaizaAilaniFadhila";
    public $connection;

    public function __construct() {
        $this->connection = new mysqli($this->host, $this->username, $this->password, $this->database);
        if ($this->connection->connect_error) {
            die("Koneksi gagal: " . $this->connection->connect_error);
        }
    }
}

// Abstract Class Reservasi
abstract class Reservasi {
    protected $idReservasi;
    protected $namaPelanggan;
    protected $tanggalBooking;
    protected $durasiJam;
    protected $tarifDasarPerJam;
    protected $jenisPaket;

    public function __construct($idReservasi, $namaPelanggan, $tanggalBooking, $durasiJam, $tarifDasarPerJam, $jenisPaket) {
        $this->idReservasi = $idReservasi;
        $this->namaPelanggan = $namaPelanggan;
        $this->tanggalBooking = $tanggalBooking;
        $this->durasiJam = $durasiJam;
        $this->tarifDasarPerJam = $tarifDasarPerJam;
        $this->jenisPaket = $jenisPaket;
    }

    abstract public function hitungTotalBiaya();
    abstract public function tampilkanSpesifikasiPaket();
}
?>