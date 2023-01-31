DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.planos(
      plano_id INT AUTO_INCREMENT PRIMARY KEY,
      plano VARCHAR(15) NOT NULL,
      valor_plano DOUBLE NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.usuario(
      usuario_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      plano_id INT NOT NULL,
      usuario VARCHAR(100) NOT NULL,
      idade tinyint(200) UNSIGNED,
      data_assinatura DATE NOT NULL,
      FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
  ) engine = InnoDB;

   CREATE TABLE SpotifyClone.artista(
      artista_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      artista VARCHAR(100)
  ) engine = InnoDB;

   CREATE TABLE SpotifyClone.seguindo_artista(
      usuario_id INT NOT NULL,
      artista_id INT NOT NULL,
      CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
      FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
      FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.album(
      album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      artista_id INT NOT NULL,
      album VARCHAR(100) NOT NULL,
      ano_lancamento YEAR NOT NULL,
      FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.cancoes(
      cancao_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      album_id INT NOT NULL,
      cancoes VARCHAR(200) NOT NULL,
      FOREIGN KEY (album_id) REFERENCES album (album_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.duracao_cancoes(
      duracao_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      cancao_id INT NOT NULL,
      duracao INT NOT NULL,
      FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.reproducao(
      usuario_id INT NOT NULL,
      cancao_id INT NOT NULL,
      data_repro DATETIME NOT NULL,
      CONSTRAINT PRIMARY KEY(usuario_id, cancao_id),
      FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
      FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.planos (plano, valor_plano)
  VALUES
    ('gratuito'	,	0.00),
    ('familiar'	,	7.99),
    ('universitário'	,	5.99),
    ('pessoal'	,	6.99);


  INSERT INTO SpotifyClone.usuario (plano_id, usuario, idade, data_assinatura)
  VALUES
    (1, 'Barbara Liskov',	82,'2019-10-20' ),
    (1, 'Robert Cecil Martin',	58,'2017-01-06' ),
    (2, 'Ada Lovelace',	37,'2017-12-30' ),
    (2, 'Martin Fowler', 46,'2017-01-17' ),
    (2,'Sandi Metz',	58,'2018-04-29' ),
    (3,'Paulo Freire',	19,'2018-02-14' ),
    (3,'Bell Hooks',	26,'2018-01-05' ),
    (4,'Christopher Alexander', 85, '2019-06-05' ),
    (4,'Judith Butler',	45,'2020-05-13' ),
    (4, 'Jorge Amado',	58,'2017-02-17' );

  INSERT INTO SpotifyClone.artista (artista)
  VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');

  INSERT INTO SpotifyClone.album (artista_id, album, ano_lancamento)
  VALUES
    (1, 'Renaissance', 2022),
    (2, 'Jazz', 1978),
    (2, 'Hot Space', 1982),
    (3, 'Falso Brilhante', 1998),
    (3, 'Vento de Maio', 2001),
    (4, 'QVVJFA?', 2003),
    (5, 'Somewhere Far Beyond', 2007),
    (6, 'I Put A Spell On You', 2012);

  INSERT INTO SpotifyClone.cancoes (album_id, cancoes)
  VALUES
    (6, 'Samba em Paris'),
    (1, 'VIRGO`S GROOVE'),
    (8, 'Feeling Good'),
    (5,'O Medo de Amar é o Medo de Ser Livre'),
    (3, 'Under Pressure'),
    (1, 'BREAK MY SOUL'),
    (4, 'Como Nossos Pais'),
    (2, 'Don`t Stop Me Now'),
    (7, 'The Bard`s Song'),
    (1, 'ALIEN SUPERSTAR');

  INSERT INTO SpotifyClone.duracao_cancoes (cancao_id, duracao)
  VALUES
    (1, 279),
    (2, 369),
    (3, 116),
    (4, 203),
    (5, 152),
    (6, 105),
    (7, 207),
    (8, 267),
    (9, 244),
    (10, 100);

  INSERT INTO SpotifyClone.seguindo_artista (usuario_id, artista_id)
  VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (4, 4),
    (5, 5),
    (5, 6),
    (6, 6),
    (6, 1),
    (7, 6),
    (9, 3),
    (10, 2);

  INSERT INTO SpotifyClone.reproducao (usuario_id, cancao_id, data_repro)
  VALUES
    (1, 1,'2022-02-28 10:45:55' ),
    (1, 2, '2020-05-02 05:30:35' ),
    (1, 3, '2020-03-06 11:22:33' ),
    (2, 3, '2022-08-05 08:05:17' ),
    (2, 4, '2020-01-02 07:40:33' ),
    (3, 3,	'2020-11-13 16:55:13' ),
    (3, 2,	'2020-12-05 18:38:30' ),
    (4, 1, '2021-08-15 17:10:10' ),
    (5, 1, '2022-01-09 01:44:33' ),
    (5, 5, '2020-08-06 15:23:43' ),
    (6, 4, '2017-01-24 00:31:17'),
    (6, 6, '2017-10-12 12:35:20'),
    (7, 8, '2011-12-15 22:30:49'),
    (8, 8, '2012-03-17 14:56:41'),
    (9, 9, '2022-02-24 21:14:22'),
    (10, 10, '2015-12-13 08:30:22');