<?php
// view.php
require_once 'reservasi_reguler.php';
require_once 'reservasi_premium.php';
require_once 'reservasi_event.php';

// Fungsi untuk menampilkan data reservasi
function tampilkanReservasi($reservasiObj, $title) {
    $data = $reservasiObj->getData();
    echo "<h2 style='color: #2c3e50; border-bottom: 3px solid #3498db; padding-bottom: 10px;'>$title</h2>";
    
    if ($data->num_rows > 0) {
        echo "<table style='width: 100%; border-collapse: collapse; margin-bottom: 30px;'>";
        echo "<tr style='background-color: #3498db; color: white;'>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>ID</th>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>Nama Pelanggan</th>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>Tanggal Booking</th>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>Durasi (Jam)</th>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>Tarif/Jam</th>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>Spesifikasi</th>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>Total Biaya</th>";
        echo "</tr>";
        
        while($row = $data->fetch_assoc()) {
            // Membuat objek reservasi sesuai jenis paket
            if ($row['jenis_paket'] == 'Reguler') {
                $reservasi = new ReservasiReguler(
                    $row['id_reservasi'],
                    $row['nama_pelanggan'],
                    $row['tanggal_booking'],
                    $row['durasi_jam'],
                    $row['tarif_dasar_per_jam'],
                    $row['tipe_backgroud'],
                    $row['cetak_foto_lembar']
                );
                $spesifikasi = $reservasi->tampilkanSpesifikasiPaket();
                $totalBiaya = $reservasi->hitungTotalBiaya();
                
                echo "<tr style='background-color: #e8f4f8;'>";
                echo "<td style='padding: 10px; border: 1px solid #ddd;'>{$row['id_reservasi']}</td>";
                echo "<td style='padding: 10px; border: 1px solid #ddd;'>{$row['nama_pelanggan']}</td>";
                echo "<td style='padding: 10px; border: 1px solid #ddd;'>{$row['tanggal_booking']}</td>";
                echo "<td style='padding: 10px; border: 1px solid #ddd;'>{$row['durasi_jam']}</td>";
                echo "<td style='padding: 10px; border: 1px solid #ddd;'>Rp " . number_format($row['tarif_dasar_per_jam'], 0, ',', '.') . "</td>";
                echo "<td style='padding: 10px; border: 1px solid #ddd;'>$spesifikasi</td>";
                echo "<td style='padding: 10px; border: 1px solid #ddd; font-weight: bold; color: #27ae60;'>Rp " . number_format($totalBiaya, 0, ',', '.') . "</td>";
                echo "</tr>";
            }
            // Tambahkan kondisi untuk Premium dan Event dengan cara yang sama
        }
        echo "</table>";
    } else {
        echo "<p style='color: #7f8c8d;'>Tidak ada data reservasi untuk paket ini.</p>";
    }
}

// Fungsi untuk menampilkan data premium
function tampilkanReservasiPremium() {
    $db = new Database();
    $query = "SELECT * FROM tabel_reservasi WHERE jenis_paket = 'Premium'";
    $data = $db->connection->query($query);
    
    echo "<h2 style='color: #2c3e50; border-bottom: 3px solid #e74c3c; padding-bottom: 10px;'>Reservasi Premium</h2>";
    
    if ($data->num_rows > 0) {
        echo "<table style='width: 100%; border-collapse: collapse; margin-bottom: 30px;'>";
        echo "<tr style='background-color: #e74c3c; color: white;'>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>ID</th>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>Nama Pelanggan</th>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>Tanggal Booking</th>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>Durasi (Jam)</th>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>Tarif/Jam</th>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>Spesifikasi</th>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>Total Biaya</th>";
        echo "</tr>";
        
        while($row = $data->fetch_assoc()) {
            $reservasi = new ReservasiPremium(
                $row['id_reservasi'],
                $row['nama_pelanggan'],
                $row['tanggal_booking'],
                $row['durasi_jam'],
                $row['tarif_dasar_per_jam'],
                $row['kuota_talent_orang'],
                $row['layanan_makeup']
            );
            $spesifikasi = $reservasi->tampilkanSpesifikasiPaket();
            $totalBiaya = $reservasi->hitungTotalBiaya();
            
            echo "<tr style='background-color: #fde8e8;'>";
            echo "<td style='padding: 10px; border: 1px solid #ddd;'>{$row['id_reservasi']}</td>";
            echo "<td style='padding: 10px; border: 1px solid #ddd;'>{$row['nama_pelanggan']}</td>";
            echo "<td style='padding: 10px; border: 1px solid #ddd;'>{$row['tanggal_booking']}</td>";
            echo "<td style='padding: 10px; border: 1px solid #ddd;'>{$row['durasi_jam']}</td>";
            echo "<td style='padding: 10px; border: 1px solid #ddd;'>Rp " . number_format($row['tarif_dasar_per_jam'], 0, ',', '.') . "</td>";
            echo "<td style='padding: 10px; border: 1px solid #ddd;'>$spesifikasi</td>";
            echo "<td style='padding: 10px; border: 1px solid #ddd; font-weight: bold; color: #c0392b;'>Rp " . number_format($totalBiaya, 0, ',', '.') . "</td>";
            echo "</tr>";
        }
        echo "</table>";
    } else {
        echo "<p style='color: #7f8c8d;'>Tidak ada data reservasi premium.</p>";
    }
}

// Fungsi untuk menampilkan data event
function tampilkanReservasiEvent() {
    $db = new Database();
    $query = "SELECT * FROM tabel_reservasi WHERE jenis_paket = 'Event'";
    $data = $db->connection->query($query);
    
    echo "<h2 style='color: #2c3e50; border-bottom: 3px solid #f39c12; padding-bottom: 10px;'>Reservasi Event</h2>";
    
    if ($data->num_rows > 0) {
        echo "<table style='width: 100%; border-collapse: collapse; margin-bottom: 30px;'>";
        echo "<tr style='background-color: #f39c12; color: white;'>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>ID</th>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>Nama Pelanggan</th>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>Tanggal Booking</th>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>Durasi (Jam)</th>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>Tarif/Jam</th>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>Spesifikasi</th>";
        echo "<th style='padding: 12px; border: 1px solid #ddd;'>Total Biaya</th>";
        echo "</tr>";
        
        while($row = $data->fetch_assoc()) {
            $reservasi = new ReservasiEvent(
                $row['id_reservasi'],
                $row['nama_pelanggan'],
                $row['tanggal_booking'],
                $row['durasi_jam'],
                $row['tarif_dasar_per_jam'],
                $row['nama_lokasi_luar'],
                $row['biaya_transportasi_tim']
            );
            $spesifikasi = $reservasi->tampilkanSpesifikasiPaket();
            $totalBiaya = $reservasi->hitungTotalBiaya();
            
            echo "<tr style='background-color: #fef9e7;'>";
            echo "<td style='padding: 10px; border: 1px solid #ddd;'>{$row['id_reservasi']}</td>";
            echo "<td style='padding: 10px; border: 1px solid #ddd;'>{$row['nama_pelanggan']}</td>";
            echo "<td style='padding: 10px; border: 1px solid #ddd;'>{$row['tanggal_booking']}</td>";
            echo "<td style='padding: 10px; border: 1px solid #ddd;'>{$row['durasi_jam']}</td>";
            echo "<td style='padding: 10px; border: 1px solid #ddd;'>Rp " . number_format($row['tarif_dasar_per_jam'], 0, ',', '.') . "</td>";
            echo "<td style='padding: 10px; border: 1px solid #ddd;'>$spesifikasi</td>";
            echo "<td style='padding: 10px; border: 1px solid #ddd; font-weight: bold; color: #e67e22;'>Rp " . number_format($totalBiaya, 0, ',', '.') . "</td>";
            echo "</tr>";
        }
        echo "</table>";
    } else {
        echo "<p style='color: #7f8c8d;'>Tidak ada data reservasi event.</p>";
    }
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manajemen Reservasi Studio Foto</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 20px;
        }
        .container {
            max-width: 1400px;
            margin: 0 auto;
            background: white;
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 20px 60px rgba(0,0,0,0.3);
        }
        .header {
            text-align: center;
            margin-bottom: 30px;
            padding: 20px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border-radius: 10px;
            color: white;
        }
        .header h1 {
            font-size: 2.5em;
            margin-bottom: 10px;
        }
        .header p {
            font-size: 1.1em;
            opacity: 0.9;
        }
        .total-info {
            background: #ecf0f1;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 20px;
            text-align: center;
            font-weight: bold;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }
        th {
            padding: 12px;
            text-align: left;
            font-weight: bold;
        }
        td {
            padding: 10px;
            border: 1px solid #ddd;
        }
        .footer {
            text-align: center;
            margin-top: 30px;
            padding: 20px;
            color: #7f8c8d;
            border-top: 2px solid #ecf0f1;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>📸 Manajemen Reservasi Studio Foto</h1>
            <p>Faiza Ailani Fadhila - PBO TRPL 1B</p>
        </div>

        <div class="total-info">
            Total Data Reservasi: 
            <?php 
                $db = new Database();
                $result = $db->connection->query("SELECT COUNT(*) as total FROM tabel_reservasi");
                $row = $result->fetch_assoc();
                echo $row['total'] . " Data";
            ?>
        </div>

        <?php
        // Menampilkan data reservasi reguler
        tampilkanReservasiPremium();
        
        // Menampilkan data reservasi premium
        tampilkanReservasiEvent();
        
        // Menampilkan data reservasi event
        $db = new Database();
        $query = "SELECT * FROM tabel_reservasi WHERE jenis_paket = 'Reguler'";
        $data = $db->connection->query($query);
        
        if ($data->num_rows > 0) {
            echo "<h2 style='color: #2c3e50; border-bottom: 3px solid #2ecc71; padding-bottom: 10px;'>Reservasi Reguler</h2>";
            echo "<table style='width: 100%; border-collapse: collapse; margin-bottom: 30px;'>";
            echo "<tr style='background-color: #2ecc71; color: white;'>";
            echo "<th style='padding: 12px; border: 1px solid #ddd;'>ID</th>";
            echo "<th style='padding: 12px; border: 1px solid #ddd;'>Nama Pelanggan</th>";
            echo "<th style='padding: 12px; border: 1px solid #ddd;'>Tanggal Booking</th>";
            echo "<th style='padding: 12px; border: 1px solid #ddd;'>Durasi (Jam)</th>";
            echo "<th style='padding: 12px; border: 1px solid #ddd;'>Tarif/Jam</th>";
            echo "<th style='padding: 12px; border: 1px solid #ddd;'>Spesifikasi</th>";
            echo "<th style='padding: 12px; border: 1px solid #ddd;'>Total Biaya</th>";
            echo "</tr>";
            
            while($row = $data->fetch_assoc()) {
                $reservasi = new ReservasiReguler(
                    $row['id_reservasi'],
                    $row['nama_pelanggan'],
                    $row['tanggal_booking'],
                    $row['durasi_jam'],
                    $row['tarif_dasar_per_jam'],
                    $row['tipe_backgroud'],
                    $row['cetak_foto_lembar']
                );
                $spesifikasi = $reservasi->tampilkanSpesifikasiPaket();
                $totalBiaya = $reservasi->hitungTotalBiaya();
                
                echo "<tr style='background-color: #eafaf1;'>";
                echo "<td style='padding: 10px; border: 1px solid #ddd;'>{$row['id_reservasi']}</td>";
                echo "<td style='padding: 10px; border: 1px solid #ddd;'>{$row['nama_pelanggan']}</td>";
                echo "<td style='padding: 10px; border: 1px solid #ddd;'>{$row['tanggal_booking']}</td>";
                echo "<td style='padding: 10px; border: 1px solid #ddd;'>{$row['durasi_jam']}</td>";
                echo "<td style='padding: 10px; border: 1px solid #ddd;'>Rp " . number_format($row['tarif_dasar_per_jam'], 0, ',', '.') . "</td>";
                echo "<td style='padding: 10px; border: 1px solid #ddd;'>$spesifikasi</td>";
                echo "<td style='padding: 10px; border: 1px solid #ddd; font-weight: bold; color: #27ae60;'>Rp " . number_format($totalBiaya, 0, ',', '.') . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        }
        ?>
        
        <div class="footer">
            <p>&copy; 2026 - Faiza Ailani Fadhila | Sistem Reservasi Studio Foto</p>
            <p>Dibangun dengan PHP & MySQL - PBO TRPL 1B</p>
        </div>
    </div>
</body>
</html>