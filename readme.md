# HR Analytics

## Business Understanding

### Problem Statement

Dalam lingkungan bisnis yang semakin kompetitif, perusahaan menghadapi tantangan dalam memahami dan mengelola sumber daya manusia mereka secara efektif. Oleh karena itu, untuk meningkatkan kinerja organisasi dan memelihara lingkungan kerja yang sehat dan produktif, perusahaan perlu memahami secara menyeluruh attrition, kinerja, dan kepuasan karyawan.

#### Analisis Attrition Karyawan

Analisis attrition sangat penting bagi perusahaan untuk memahami pola dan faktor-faktor yang menyebabkan karyawan meninggalkan perusahaan. Dengan memahami alasan di balik attrition, perusahaan dapat mengidentifikasi area-area yang memerlukan perbaikan dalam manajemen sumber daya manusia dan lingkungan kerja. Misalnya, dengan mengevaluasi tingkat attrition berdasarkan faktor-faktor seperti usia, jabatan pekerjaan, dan durasi pengalaman kerja, perusahaan dapat mengidentifikasi pola-pola tertentu yang mungkin mempengaruhi keputusan karyawan untuk meninggalkan perusahaan. Selain itu, dengan memperhatikan pola attrition di antara karyawan dengan tingkat pendidikan tertentu atau yang sering melakukan perjalanan dinas, manajemen dapat menyesuaikan strategi rekrutmen, pengembangan, dan retensi untuk mengurangi tingkat attrition di masa depan. Dengan demikian, analisis attrition dapat menjadi landasan bagi perusahaan untuk mengambil langkah-langkah proaktif dalam mempertahankan dan mengembangkan tenaga kerja mereka.

##### Business Questions:

1. Berapa tingkat attrition berdasarkan jabatan pekerjaan di perusahaan?
2. Apakah ada perbedaan tingkat attrition antara level jabatan yang berbeda?
3. Bagaimana distribusi attrition berdasarkan status perkawinan karyawan?
4. Apakah terdapat pola attrition yang berbeda antara karyawan dengan pendidikan tingkat sarjana dan yang lainnya?
5. Bagaimana proporsi karyawan yang melakukan perjalanan dinas sering mengalami attrition dibandingkan dengan yang tidak?

##### Threshold Metrics:

1. **Attrition Based on Job Role:**
   - Threshold: Maksimal 15% attrition rate untuk setiap jabatan pekerjaan.
   - Simulasi: Jika tingkat attrition untuk suatu jabatan pekerjaan melebihi 15%, maka perlu dilakukan evaluasi dan tindakan untuk mengidentifikasi penyebabnya dan mengurangi tingkat attrition.
2. **Attrition Based on Job Level:**
   - Threshold: Maksimal 10% attrition rate untuk setiap tingkatan jabatan.
   - Simulasi: Jika tingkat attrition untuk tingkatan jabatan tertentu melebihi 10%, perlu dilakukan analisis lebih lanjut untuk memahami alasan di baliknya dan mengambil langkah-langkah untuk mengurangi attrition.

#### Analisis Kinerja Karyawan

Analisis kinerja karyawan memungkinkan perusahaan untuk mengevaluasi produktivitas, loyalitas, dan keterlibatan karyawan. Dengan memperhatikan tingkat attrition berdasarkan lembur, perusahaan dapat menilai dampak beban kerja tambahan terhadap kepuasan dan retensi karyawan. Selain itu, mengidentifikasi karyawan yang loyal dan memiliki tingkat keterlibatan kerja yang tinggi memungkinkan manajemen untuk mengakui kontribusi mereka dan mengambil tindakan untuk mempertahankan mereka dalam organisasi. Dengan menetapkan kriteria promosi atau pensiun berdasarkan kinerja dan loyalitas, perusahaan dapat mengelola pengembangan karir dan penggunaan tenaga kerja dengan lebih efektif.

##### Business Questions

1. Berapa proporsi karyawan yang overtime?
2. Berapa jumlah karyawan yang merupakan pegawai loyal (bekerja di perusahaan >10 tahun) dan memiliki job involvement yang tinggi?
3. Siapa saja karyawan yang direkomendasikan untuk mendapatkan promosi atau pensiun berdasarkan kriteria kinerja dan loyalitas mereka?
4. Siapa saja karyawan yang termasuk dalam kategori pegawai loyal dengan tingkat keterlibatan kerja yang tinggi?

##### Threshold Metrics:

1. **Overtime:**
   - Threshold: Proporsi karyawan yang melakukan overtime: Maksimal 20% dari total karyawan.
   - Simulasi: Jika proporsi karyawan yang melakukan overtime melebihi 20% dari total karyawan, perusahaan perlu mengevaluasi beban kerja dan mencari cara untuk mengelola waktu kerja agar tidak berdampak negatif pada kesejahteraan dan produktivitas karyawan.
2. **Loyality:**
   - Threshold: Jumlah karyawan yang merupakan loyal employee (bekerja di perusahaan lebih dari 10 tahun) dan memiliki tingkat keterlibatan kerja yang tinggi: Minimal 15% dari total karyawan.
   - Simulasi: Jika jumlah karyawan yang memenuhi kriteria loyal employee dan memiliki tingkat keterlibatan kerja yang tinggi kurang dari 15%, perusahaan perlu memperhatikan strategi retensi dan pengembangan karyawan untuk meningkatkan tingkat keterlibatan dan loyalitas.
3. **Promotion:**
   - Threshold: Persentase karyawan yang menerima promosi dalam setahun terakhir: Minimal 5% dari total karyawan.
   - Simulasi: Jika persentase karyawan yang menerima promosi dalam setahun terakhir kurang dari 5%, perusahaan perlu mengevaluasi kebijakan promosi dan memastikan bahwa ada cukup kesempatan bagi karyawan untuk berkembang dan naik jabatan.
4. **Retirement:**
   - Threshold: Karyawan yang mendekati pensiun dan tidak lagi dapat memberikan kontribusi signifikan terhadap tujuan perusahaan.
   - Simulasi: Ketika seorang karyawan mendekati masa pensiun dan tidak lagi memberikan kontribusi yang signifikan terhadap tujuan perusahaan, maka perusahaan akan mempertimbangkan untuk melakukan pensiun.

#### Analisis Kepuasaan Karyawan

Analisis kepuasan karyawan merupakan indikator penting dari kesejahteraan dan kinerja organisasi secara keseluruhan. Dengan memahami tingkat kepuasan karyawan terhadap pekerjaan, hubungan, lingkungan, dan work-life balance, perusahaan dapat mengidentifikasi area-area di mana perbaikan mungkin diperlukan untuk mempertahankan atau meningkatkan kepuasan karyawan. Melalui pemahaman tentang distribusi kepuasan kerja berdasarkan jabatan pekerjaan dan keseimbangan kerja-hidup, manajemen dapat menyesuaikan strategi pengembangan karir, pengaturan lingkungan kerja, dan kebijakan fleksibilitas kerja untuk memenuhi kebutuhan dan preferensi karyawan. Dengan demikian, analisis kepuasan karyawan dapat menjadi dasar bagi perusahaan untuk mengambil langkah-langkah yang bertujuan meningkatkan kesejahteraan dan kinerja organisasi secara keseluruhan.

##### Business Questions:

1. Bagaimana proporsi karyawan berdasarkan kepuasan terhadap pekerjaan, hubungan, lingkungan, dan keseimbangan kerja-hidup?
2. Bagaimana distribusi karyawan berdasarkan satisfaction terhadap pekerjaan?
3. Bagaimana distribusi karyawan pada tingkat kepuasan terhadap pekerjaan berdasarkan job role?
4. Bagaimana distribusi karyawan berdasarkan work-life balance?
5. Bagaimana distribusi overtime berdasarkan job role?

##### Threshold Metrics:

1. **Satisfaction Level:**
   Threshold: Tingkat kepuasan rendah (low satisfaction) dalam aspek pekerjaan (job), lingkungan (environment), dan hubungan (relationship): Maksimal 15% untuk setiap aspek.
   Simulasi: Jika lebih dari 15% dari total karyawan mengungkapkan tingkat kepuasan yang rendah dalam salah satu aspek tersebut, perusahaan perlu melakukan analisis mendalam untuk mengidentifikasi masalah dan mengambil tindakan perbaikan yang diperlukan untuk meningkatkan kepuasan karyawan.
2. **Work-Life Balance:**
   Threshold: Tingkat kepuasan rendah (low satisfaction) dalam aspek work-life balance: Maksimal 15% dari total karyawan.
   Simulasi: Jika lebih dari 15% dari total karyawan mengungkapkan ketidakpuasan terhadap work-life balance, perusahaan perlu meninjau kebijakan dan praktik yang terkait dengan keseimbangan kerja-hidup, serta mengambil langkah-langkah untuk meningkatkan kesejahteraan karyawan.
3. **Job Satisfaction berdasarkan Job Role:**

   - Threshold:
     - Manajer: Minimal 80% puas
     - Supervisor: Minimal 75% puas
     - Staff: Minimal 70% puas
   - Simulasi: Jika tingkat kepuasan di salah satu level jabatan di bawah ambang batas minimum yang ditetapkan, perusahaan perlu mengevaluasi kondisi kerja dan memastikan bahwa manajemen di setiap tingkat memperhatikan kebutuhan dan masukan karyawan.

#### Identifikasi Karyawan yang Melakukan Turnover/Attrition

Perusahaan juga perlu mengidentifikasi karyawan yang cenderung melakukan turnover atau attrition. Tanpa kemampuan untuk mengenali pola-pola ini, perusahaan akan kesulitan dalam mengambil tindakan pencegahan atau penggantian yang tepat waktu. Identifikasi ini penting untuk meminimalkan kerugian yang disebabkan oleh kehilangan karyawan berpotensi tinggi atau berkinerja baik.

### Objective

1. Membuat visualisasi dalam bentuk dashboard, yang terbagi menjadi 3 bagian yakni Analisis Attrition Karyawan, Analisis Kinerja Karyawan, dan Analisis Kepuasaan Karyawan.
2. Membuat predictive modeling untuk membantu memprediksi karyawan yang turnover/attrition

### Goals

1. Memberikan insight terkait business questions yang diajukan management dan mengacu kepada threshold metrics, apakah semua metrics berhasil tidak melebihi thresholdnya.
2. Menurunkan attrition rate karyawan, dan menemukan faktor terpenting yang mengacu pada attrition rate.
