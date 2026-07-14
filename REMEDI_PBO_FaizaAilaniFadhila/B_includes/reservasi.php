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

// reservasi_premium.php
class ReservasiPremium extends Reservasi {
    private $kuotaTalentOrang;
    private $layananMakeup;

    public function __construct($idReservasi, $namaPelanggan, $tanggalBooking, $durasiJam, $tarifDasarPerJam, $kuotaTalentOrang, $layananMakeup) {
        parent::__construct($idReservasi, $namaPelanggan, $tanggalBooking, $durasiJam, $tarifDasarPerJam, 'Premium');
        $this->kuotaTalentOrang = $kuotaTalentOrang;
        $this->layananMakeup = $layananMakeup;
    }

    public function hitungTotalBiaya() {
        return ($this->durasiJam * $this->tarifDasarPerJam) * 1.20;
    }

    public function tampilkanSpesifikasiPaket() {
        return "Kuota Talent: {$this->kuotaTalentOrang} orang, Layanan Makeup: {$this->layananMakeup}";
    }

    public function getDataPremium() {
        $db = new Database();
        $query = "SELECT * FROM tabel_reservasi WHERE jenis_paket = 'Premium'";
        return $db->connection->query($query);
    }
}

// reservasi_event.php
class ReservasiEvent extends Reservasi {
    private $namaLokasiLuar;
    private $biayaTransportasiTim;

    public function __construct($idReservasi, $namaPelanggan, $tanggalBooking, $durasiJam, $tarifDasarPerJam, $namaLokasiLuar, $biayaTransportasiTim) {
        parent::__construct($idReservasi, $namaPelanggan, $tanggalBooking, $durasiJam, $tarifDasarPerJam, 'Event');
        $this->namaLokasiLuar = $namaLokasiLuar;
        $this->biayaTransportasiTim = $biayaTransportasiTim;
    }

    public function hitungTotalBiaya() {
        return ($this->durasiJam * $this->tarifDasarPerJam) + $this->biayaTransportasiTim;
    }

    public function tampilkanSpesifikasiPaket() {
        return "Lokasi: {$this->namaLokasiLuar}, Biaya Transportasi: Rp " . number_format($this->biayaTransportasiTim, 0, ',', '.');
    }

    public function getDataEvent() {
        $db = new Database();
        $query = "SELECT * FROM tabel_reservasi WHERE jenis_paket = 'Event'";
        return $db->connection->query($query);
    }
}
?>