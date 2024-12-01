<?php
// Buat pemanggilan database disini
// Koneksi ke database
// include '../koneksi/koneksi.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Benings Laundry</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <!-- Script JS untuk Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
 
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="js/script.js">
</head>
<body>

    <!-- Header Section -->
    <header>
        <img src="https://placehold.co/150x50" alt="Benings Laundry logo">
        <nav>
            <a href="#">Beranda</a>
            <a href="#">Layanan</a>
            <a href="#">Pemesanan</a>
            <a href="#">Testimoni</a>
        </nav>
        <a href="#" class="login-btn">Masuk</a>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-text">
            <h1>Benings Laundry</h1>
            <p>Anda sibuk? Cucian numpuk? Percayakan kepada kami, Cucian anda pasti bersih, rapi dan nyaman saat beraktifitas.</p>
            <button class="btn btn-primary">Pesan Sekarang!</button>
            <button class="btn btn-secondary">Testimoni</button>
        </div>
        <img src="https://placehold.co/600x400" alt="Benings Laundry signboard">
    </section>

    <!-- Section Layanan -->
    <section class="services">
        <h2>Layanan</h2>
        <p>Kami Memberikan Pelayanan Terbaik</p>
        <div class="service-cards">
            <?php
            // Menampilkan layanan dari tb_paket
            if ($result_paket->num_rows > 0) {
                while($row = $result_paket->fetch_assoc()) {
                    echo '<div class="service-card">';
                    echo '<img src="https://placehold.co/50x50" alt="' . $row['nama_paket'] . ' icon">';
                    echo '<h3>' . strtoupper($row['nama_paket']) . '</h3>';
                    echo '<p>' . $row['jenis'] . '</p>'; // Menampilkan jenis layanan
                    echo '<a href="#">Selengkapnya</a>';
                    echo '</div>';
                }
            } else {
                echo 'Tidak ada layanan yang tersedia.';
            }
            ?>
        </div>
    </section>

    <!-- Order Section -->
    <section class="order-section">
        <img src="https://placehold.co/600x400" alt="Laundry basket with clean clothes">
        <div class="order-text">
            <h2>Solusi Tepat Untuk Pakaian Bersih Anda</h2>
            <p>Kami menghadirkan Laundry Express kami untuk memberikan Anda pengalaman laundry yang cepat dan tepat. Dalam hitungan jam, pakaian Anda akan bersih, rapi, dan siap dipakai.</p>
            <button class="btn btn-primary">Pesan Sekarang!</button>
        </div>
    </section>
  
    <!-- Section Produk -->
    <!-- tambahkan kode untuk memanggil produk di sini pastikan sesuai dengan database anda -->


    <!-- Section Komentar --> 
    <!-- buat section untuk menambahkan komentar disini -->

    <!-- Daftar Komentar -->
    <!-- buat pemanggilan komentar disini -->


    <!-- Footer Section -->
    <footer class="footer">
        <div class="footer-top">
            <div class="footer-column">
                <h3>Benings Laundry</h3>
                <p>Memberikan layanan laundry terbaik dengan proses cepat, kualitas terbaik, dan harga yang terjangkau.</p>
            </div>
            <div class="footer-column">
                <h3>Menu</h3>
                <ul>
                    <li><a href="#">Beranda</a></li>
                    <li><a href="#">Layanan</a></li>
                    <li><a href="#">Pemesanan</a></li>
                    <li><a href="#">Kontak Kami</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Kontak Kami</h3>
                <p>Jl. Raya Laundry No. 1, Jakarta</p>
                <p>Telepon: (021) 123-4567</p>
                <p>Email: info@beningslaundry.com</p>
            </div>
            <div class="footer-column">
                <h3>Follow Us</h3>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
        </div>

        <div class="footer-bottom">
            <p>&copy; 2024 Benings Laundry - All Rights Reserved</p>
        </div>
    </footer>

 
    <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script>
        var swiper = new Swiper('.testimonial-slider', {
            slidesPerView: 'auto',  // Menyesuaikan jumlah slide berdasarkan ukuran layar
            spaceBetween: 20,       // Memberikan jarak antar slide
            loop: true,             // Mengaktifkan loop slide
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            }
        });
    </script>

</body>
</html>
