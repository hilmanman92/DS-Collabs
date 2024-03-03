# HR Analytics

## Business Understanding

### Problem Statement

Dalam lingkungan bisnis yang semakin kompetitif, perusahaan menghadapi tantangan dalam memahami dan mengelola sumber daya manusia mereka secara efektif. Oleh karena itu, untuk meningkatkan kinerja organisasi dan memelihara lingkungan kerja yang sehat dan produktif, perusahaan perlu memahami secara menyeluruh demografi, kinerja, dan kepuasan karyawan.

#### Analisis Demografi Karyawan

Analisis demografi karyawan sangat penting bagi perusahaan untuk memahami karakteristik dan komposisi tenaga kerja mereka. Dengan memahami demografi ini, perusahaan dapat mengidentifikasi tren dan pola dalam struktur karyawan mereka. Misalnya, dengan mengetahui proporsi karyawan berdasarkan status perkawinan, pendidikan, dan frekuensi perjalanan dinas, perusahaan dapat mengidentifikasi area di mana mereka mungkin perlu menyesuaikan kebijakan atau program untuk mendukung kebutuhan karyawan mereka. Selain itu, dengan mengevaluasi distribusi usia karyawan dan tingkat attrition berdasarkan jabatan pekerjaan, manajemen dapat mengantisipasi kebutuhan rekrutmen, pengembangan, atau retensi karyawan di masa depan.

##### Business Questions:

1. Berapa proporsi karyawan berdasarkan status perkawinan?
2. Bagaimana distribusi karyawan berdasarkan tingkat pendidikan mereka?
3. Bagaimana proporsi karyawan berdasarkan frekuensi perjalanan dinas?
4. Bagaimana distribusi usia karyawan di perusahaan?
5. Bagaimana attrition rate berdasarkan jabatan pekerjaan?

##### Threshold Metrics:

1. Proporsi karyawan dengan pendidikan tingkat sarjana atau lebih tinggi: Minimal 70% dari total karyawan.
2. Persentase karyawan di setiap departemen yang memiliki pengalaman perjalanan dinas yang sering: Maksimal 20% dari total karyawan di setiap departemen.
3. Distribusi usia karyawan:
   - 20-30 tahun: Minimal 25%
   - 31-40 tahun: Minimal 30%
   - 41-50 tahun: Minimal 25%
   - Lebih dari 50 tahun: Maksimal 20%

#### Analisis Kinerja Karyawan

Analisis kinerja karyawan memungkinkan perusahaan untuk mengevaluasi produktivitas, loyalitas, dan keterlibatan karyawan. Dengan memperhatikan tingkat attrition berdasarkan lembur, perusahaan dapat menilai dampak beban kerja tambahan terhadap kepuasan dan retensi karyawan. Selain itu, mengidentifikasi karyawan yang loyal dan memiliki tingkat keterlibatan kerja yang tinggi memungkinkan manajemen untuk mengakui kontribusi mereka dan mengambil tindakan untuk mempertahankan mereka dalam organisasi. Dengan menetapkan kriteria promosi atau pensiun berdasarkan kinerja dan loyalitas, perusahaan dapat mengelola pengembangan karir dan penggunaan tenaga kerja dengan lebih efektif.

##### Business Questions

1. Bagaimana *attrition rate* berdasarkan overtime?
2. Berapa jumlah karyawan yang merupakan pegawai loyal (bekerja di perusahaan >10 tahun) dan memiliki job involvement yang tinggi?
3. Siapa saja karyawan yang direkomendasikan untuk mendapatkan promosi atau pensiun berdasarkan kriteria kinerja dan loyalitas mereka?
4. Siapa saja karyawan yang termasuk dalam kategori pegawai loyal dengan tingkat keterlibatan kerja yang tinggi?

##### Threshold Metrics:

1. Attrition rate di setiap departemen: Maksimal 10% per tahun.
2. Persentase karyawan yang menerima promosi dalam setahun terakhir: Minimal 5% dari total karyawan.
3. Jumlah karyawan yang merupakan loyal employee (bekerja di perusahaan lebih dari 10 tahun) dan memiliki tingkat keterlibatan kerja yang tinggi: Minimal 15% dari total karyawan.
4. Proporsi karyawan yang melakukan overtime: Maksimal 20% dari total karyawan.

#### Analisis Kepuasaan Karyawan

Analisis kepuasan karyawan merupakan indikator penting dari kesejahteraan dan kinerja organisasi secara keseluruhan. Dengan memahami tingkat kepuasan karyawan terhadap pekerjaan, hubungan, lingkungan, dan work-life balance, perusahaan dapat mengidentifikasi area-area di mana perbaikan mungkin diperlukan untuk mempertahankan atau meningkatkan kepuasan karyawan. Melalui pemahaman tentang distribusi kepuasan kerja berdasarkan jabatan pekerjaan dan keseimbangan kerja-hidup, manajemen dapat menyesuaikan strategi pengembangan karir, pengaturan lingkungan kerja, dan kebijakan fleksibilitas kerja untuk memenuhi kebutuhan dan preferensi karyawan. Dengan demikian, analisis kepuasan karyawan dapat menjadi dasar bagi perusahaan untuk mengambil langkah-langkah yang bertujuan meningkatkan kesejahteraan dan kinerja organisasi secara keseluruhan.

##### Business Questions:

1. Bagaimana proporsi karyawan berdasarkan kepuasan terhadap pekerjaan, hubungan, lingkungan, dan keseimbangan kerja-hidup?
2. Bagaimana distribusi karyawan berdasarkan satisfaction terhadap pekerjaan?
3. Bagaimana distribusi karyawan pada tingkat kepuasan terhadap pekerjaan berdasarkan job role?
4. Bagaimana distribusi karyawan berdasarkan work-life balance?
5. Bagaimana distribusi overtime berdasarkan job role?

##### Threshold Metrics:

1. Tingkat kepuasan rendah (low satisfaction) dalam aspek pekerjaan (job), lingkungan (environment), dan hubungan (relationship): Maksimal 15% untuk setiap aspek.
2. Tingkat kepuasan rendah (low satisfaction) dalam aspek work-life balance: Maksimal 15% dari total karyawan.
3. Distribusi tingkat kepuasan karyawan berdasarkan jabatan pekerjaan:
   - Manajer: Minimal 80% puas
   - Supervisor: Minimal 75% puas
   - Staff: Minimal 70% puas
4. Persentase karyawan yang merasa mendapatkan cukup dukungan dari manajemen: Minimal 80%.

#### Identifikasi Karyawan yang Melakukan Turnover/Attrition

Perusahaan juga perlu mampu mengidentifikasi karyawan yang cenderung melakukan turnover atau attrition. Tanpa kemampuan untuk mengenali pola-pola ini, perusahaan akan kesulitan dalam mengambil tindakan pencegahan atau penggantian yang tepat waktu. Identifikasi ini penting untuk meminimalkan kerugian yang disebabkan oleh kehilangan karyawan berpotensi tinggi atau berkinerja baik.

### Objective

1. Membuat visualisasi dalam bentuk dashboard, yang terbagi menjadi 3 bagian yakni Analisis Demografi Karyawan, Analisis Kinerja Karyawan, dan Analisis Kepuasaan Karyawan.
2. Membuat predictive modeling untuk memprediksi karyawan yang turnover/attrition

### Goals

1. Memberikan insight terkait business questions yang diajukan management dan mengacu kepada threshold metrics, apakah semua metrics berhasil tidak melebihi thresholdnya.
2. Menurunkan attrition rate karyawan, dan menemukan faktor terpenting yang mengacu pada attrition rate.

## Data Preprocessing

### Report Analysis (Dashboard)

### Predictive Modelling (Machine Learning)

## Data Analysis

### Report Analysis (Dashboard)

### Predictive Modelling (Machine Learning)

## Summary & Recommendation