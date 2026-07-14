<?php
// reservasi_reguler.php
require_once 'koneksi.php';

class ReservasiReguler extends Reservasi {
    private $tipeBackgroud;
    private $cetakFotoLembar;

    public function __construct($idReservasi, $namaPelanggan, $tanggalBooking, $durasiJam, $tarifDasarPerJam, $tipeBackgroud, $cetakFotoLembar) {
        parent::__construct($idReservasi, $namaPelanggan, $tanggalBooking, $durasiJam, $tarifDasarPerJam, 'Reguler');
        $this->tipeBackgroud = $tipeBackgroud;
        $this->cetakFotoLembar = $cetakFotoLembar;
    }

    public function hitungTotalBiaya() {
        return ($this->durasiJam * $this->tarifDasarPerJam) + 50000;
    }

    public function tampilkanSpesifikasiPaket() {
        return "Tipe Background: {$this->tipeBackgroud}, Cetak Foto: {$this->cetakFotoLembar} lembar";
    }

    public function getDataReguler() {
        $db = new Database();
        $query = "SELECT * FROM tabel_reservasi WHERE jenis_paket = 'Reguler'";
        return $db->connection->query($query);
    }
}