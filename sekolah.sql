CREATE TABLE siswa (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    umur INT,
    jurusan VARCHAR(100)
);

CREATE TABLE nilai (
    id SERIAL PRIMARY KEY,
    siswa_id INT REFERENCES siswa(id),
    mata_pelajaran VARCHAR(100),
    nilai INT
);

INSERT INTO siswa (nama, umur, jurusan)
VALUES
('Andi', 16, 'IPA'),
('Budi', 17, 'IPS'),
('Citra', 16, 'IPA'),
('Dewi', 17, 'IPS'),
('Eko', 16, 'IPA'),
('Fajar', 17, 'IPS');

INSERT INTO nilai (siswa_id, mata_pelajaran, nilai)
VALUES
(1, 'Matematika', 82),
(1, 'Bahasa Inggris', 90),
(1, 'Fisika', 76),
(1, 'Kimia', 88),
(1, 'Biologi', 95),
(1, 'Ekonomi', 84),

(2, 'Matematika', 79),
(2, 'Bahasa Inggris', 85),
(2, 'Fisika', 80),
(2, 'Kimia', 91),
(2, 'Biologi', 87),
(2, 'Ekonomi', 90),

(3, 'Matematika', 88),
(3, 'Bahasa Inggris', 77),
(3, 'Fisika', 83),
(3, 'Kimia', 90),
(3, 'Biologi', 92),
(3, 'Ekonomi', 81),

(4, 'Matematika', 75),
(4, 'Bahasa Inggris', 89),
(4, 'Fisika', 78),
(4, 'Kimia', 82),
(4, 'Biologi', 85),
(4, 'Ekonomi', 80),

(5, 'Matematika', 90),
(5, 'Bahasa Inggris', 88),
(5, 'Fisika', 91),
(5, 'Kimia', 87),
(5, 'Biologi', 93),
(5, 'Ekonomi', 89),

(6, 'Matematika', 84),
(6, 'Bahasa Inggris', 86),
(6, 'Fisika', 79),
(6, 'Kimia', 88),
(6, 'Biologi', 90),
(6, 'Ekonomi', 85);
