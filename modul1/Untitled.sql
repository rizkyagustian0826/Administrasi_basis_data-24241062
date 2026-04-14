CREATE TABLE `DOKTOR` (
  `id_dokter` int PRIMARY KEY,
  `nama` varchar(255),
  `sp` varchar(255),
  `no_tlpn` varchar(255),
  `kode_poli` int
);

CREATE TABLE `POLIKLINIK` (
  `kode_poli` int PRIMARY KEY,
  `nama_poli` varchar(255)
);

CREATE TABLE `PASIEN` (
  `nik` int PRIMARY KEY,
  `nama` varchar(50),
  `alamat` varchar(50),
  `BOD` deatline
);

CREATE TABLE `DAFTAR` (
  `no_antrean` int PRIMARY KEY,
  `tgl_antrean` deatline,
  `nik` int,
  `kode_poli` int
);

CREATE TABLE `REKAM_MEDIS` (
  `no_rm` int PRIMARY KEY,
  `nik` int,
  `kode_obat` int
);

CREATE TABLE `OBAT` (
  `kode_obat` int PRIMARY KEY,
  `nama_obat` varchar(255),
  `harga` int
);

ALTER TABLE `DOKTOR` ADD FOREIGN KEY (`kode_poli`) REFERENCES `POLIKLINIK` (`kode_poli`);

ALTER TABLE `DAFTAR` ADD FOREIGN KEY (`kode_poli`) REFERENCES `POLIKLINIK` (`kode_poli`);

ALTER TABLE `DAFTAR` ADD FOREIGN KEY (`nik`) REFERENCES `PASIEN` (`nik`);

ALTER TABLE `REKAM_MEDIS` ADD FOREIGN KEY (`nik`) REFERENCES `DAFTAR` (`nik`);

ALTER TABLE `REKAM_MEDIS` ADD FOREIGN KEY (`kode_obat`) REFERENCES `OBAT` (`kode_obat`);
