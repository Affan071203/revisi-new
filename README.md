# UAS-TI4C-Pemograman-Seluler

Proyek ini menggunakan Firebase sebagai server API dan Firestore sebagai basis data. Berikut adalah langkah-langkah untuk konfigurasi, instalasi, cara menjalankan proyek ini, serta cara melakukan backup database.

## Konfigurasi Firebase

1. **Buat Proyek di Firebase Console**:
   - Masuk ke [Firebase Console](https://console.firebase.google.com/).
   - Buat proyek baru atau pilih proyek yang sudah ada.

2. **Tambahkan Aplikasi ke Firebase**:
   - Untuk aplikasi web, pilih ikon web (`</>`), masukkan nama aplikasi, dan klik "Register app".
   - Ikuti petunjuk untuk mengonfigurasi Firebase SDK. Salin konfigurasi Firebase yang diberikan.

3. **Instal Firebase CLI**:
   ```bash
   npm install -g firebase-tools

4. **Login ke Firebase**:
   firebase login
5. **Inisialisasi Firebase di Proyek**:
   firebase init
   - Pilih fitur yang ingin Anda gunakan (Firestore, Authentication, Hosting, dll.).
   - Ikuti instruksi untuk menyelesaikan konfigurasi.

## Instalasi
1. **Clone Repositori**:
   git clone https://github.com/Affan071203/revisi-new.git
   cd UAS-TI4C-pemograman-seluler

2. **Instal Dependensi**:
   flutter pub get

3. **Tambahkan Konfigurasi Firebase**:
   -Tambahkan file google-services.json (untuk Android) atau GoogleService-Info.plist (untuk iOS) yang diunduh dari Firebase Console ke proyek Anda sesuai petunjuk.

4. **Jalankan Aplikasi**:
   -flutter run

## Cara Menjalankan Server API Firebase

1. **Deploy Firestore Rules (opsional)**
   firebase deploy --only firestore:rules

2. **Deploy Firebase Functions (jika menggunakan Cloud Functions)**
   cd functions
   npm install
   firebase deploy --only functions

3. **Deploy Hosting (opsional)**
   firebase deploy --only hosting

## Backup Database Firestore

1. Backup Manual melalui Firebase Console:

   -Buka Firebase Console.
   -Pilih proyek Anda.
   -Navigasikan ke Firestore Database.
   -Pilih "Export data" untuk mengekspor koleksi dan dokumen.

2.Backup Otomatis menggunakan gcloud:

   -Instal Google Cloud SDK.
   -Konfigurasikan gcloud dengan akun Firebase Anda:
    gcloud init
   -Buat bucket Google Cloud Storage untuk menyimpan backup:
    gsutil mb gs://NAMA_BUCKET
   -Jalankan perintah berikut untuk backup
    gcloud firestore export gs://NAMA_BUCKET


