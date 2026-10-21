# Kalkulator Nusantara 3.0 🇮🇩

Kalkulator Android offline dengan antarmuka modern, kalkulator ilmiah, riwayat, tema, dan konverter satuan.

## Fitur
- Operasi dasar, tanda kurung, persen, pangkat, akar, faktorial, `sin`, `cos`, `tan`, `asin`, `acos`, `atan`, `log`, `ln`, `π`, dan `e`.
- Mode derajat/radian.
- Riwayat perhitungan tersimpan lokal (maksimal 100).
- Tema gelap/terang tersimpan lokal.
- Konverter panjang, massa, suhu, luas, volume, kecepatan, dan data digital.
- Tombol salin hasil, hapus karakter, serta keyboard responsif.
- Berjalan offline; tidak memerlukan izin internet untuk fitur kalkulator.
- Workflow GitHub Actions untuk membangun APK debug.

## Cara membangun APK lewat GitHub
1. Buat repository baru di GitHub.
2. Upload seluruh isi folder proyek ini (bukan folder ZIP-nya) ke repository.
3. Buka tab **Actions** dan aktifkan workflow jika diminta.
4. Jalankan workflow **Build Android APK** lewat tombol **Run workflow**, atau push commit baru.
5. Setelah selesai, buka run yang berhasil, lalu unduh artifact **Kalkulator-Nusantara-debug-apk**.
6. Ekstrak ZIP artifact, lalu ambil `app-debug.apk`.
7. Pindahkan APK ke HP Android dan instal. Jika diminta, izinkan instalasi dari sumber tersebut.

## Build lokal
Butuh Android Studio/JDK 17 dan Android SDK. Buka folder proyek ini di Android Studio, tunggu Gradle Sync, lalu jalankan `app`.

## Catatan
- Proyek ini adalah source code + workflow builder; APK belum disertakan dan perlu dibangun.
- APK yang dihasilkan oleh workflow adalah APK debug untuk pengujian/pemasangan pribadi, bukan rilis Play Store yang ditandatangani.
- Periksa dan uji aplikasi pada perangkat sebelum distribusi. Gunakan Android Studio untuk membuat release signing yang aman bila ingin menerbitkan ke Play Store.
