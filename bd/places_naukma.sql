DROP SCHEMA IF EXISTS `places_naukma` ;

CREATE SCHEMA IF NOT EXISTS `places_naukma` DEFAULT CHARACTER SET utf8 ;
USE `places_naukma` ;

CREATE TABLE IF NOT EXISTS `places` (
`id` INT NOT NULL AUTO_INCREMENT,
`type` VARCHAR(45) NOT NULL,
`name` VARCHAR(245) NOT NULL,
`building` VARCHAR(45) NOT NULL,
`stage` INT NULL,
`aud` VARCHAR(45) NULL,
`info` VARCHAR(245) NULL,
PRIMARY KEY (`id`));

INSERT INTO `places` (`type`, `name`, `building`, `stage`, `aud`, `info`) VALUES  
('деканат', 'Факультет Інформатики', 1, 3,315, null), 
('деканат', 'Факультет Гуманітарних Наук', 1, 2,203, null),
('деканат', 'Факультет Економічних Наук', 6, 4,407, null),
('деканат', 'Факультет Правничих Наук', 4, 3,305, null),
('деканат', 'Факультет Природничих Наук', 3, 2,217, null),
('деканат', 'Факультет Соціальних Наук і Соціальних Технологій', 6, 2, 211,null),

('кафедра', 'Кафедра Математики', 1, 3,308,null),
('кафедра', 'Кафедра Мультимедійних Систем', 1, 2,204,null),
('кафедра', 'Кафедра Мережних Технологій', 3, 2,223,null),
('кафедра', 'Кафедра Інформатики', 1, 3,302,null),

('кафедра', 'Кафедра загального та слов`янсткого мовознавства ', 3, 2,203, null),
('кафедра', 'Кафедра історії', 5, 1, 113, null),
('кафедра', 'Кафедра культорології', 3, 1,117,null),
('кафедра', 'Кафедра літературознавства', 1, 3,302,null),
('кафедра', 'Кафедра української мови', 3, 3,304,null),
('кафедра', 'Кафедра археології', 1, 3,302,null),
('кафедра', 'Кафедра філософії та релігієзнавства', 1, 3,327,null),
('кафедра', 'Кафедра англійської мови', 3, 4,410, null),

('кафедра', 'Кафедра економічної теорії', 6, 2, 208, null),
('кафедра', 'Кафедра маркетингу та управління бізнесом', 6, 3,309,null),
('кафедра', 'Кафедра фінансів', 6, 4,409, null),

('кафедра', 'Кафедра міжнародного права та спеціальних правових наук', 4, 3, 325, null),
('кафедра', 'Кафедра загальнотеоретичних та державно-правових наук', 4, 3, 322, null),
('кафедра', 'Кафедра галузевих правових наук', 4, 3,323,null),
('кафедра', 'Кафедра імені Жана Моне з права Європейсткого Союзу', 9, 1, 5, null),

('кафедра', 'Кафедра біології', 2, 4, 411, null),
('кафедра', 'Кафедра екології', 3, 2, 213, null),
('кафедра', 'Кафедра фізико-математичних наук', 2, 3,305,null),
('кафедра', 'Кафедра хімії', 2, 2,205, null),
('кафедра', 'Кафедра фізчного виховання', 3, 3,303,null),

('кафедра', 'Кафедра зв`язків із громадськістю ', 4, 2, 251, null),
('кафедра', 'Кафедра психології та педагогіки', 4, 2, 249, null),
('кафедра', 'Кафедра політології', 4, 2, 221, null),
('кафедра', 'Кафедра соціології', 4, 2,215, null),



('адміністрація', 'Студентський відділ кадрів', 1, 1, 110, null),
('адміністрація', 'Відділ по роботі зі студентами', 4, 1, 112, null),
  ('адміністрація', 'Планово-фінансовий відділ', 1, 3, 302, null),
('адміністрація', 'Служба президента НаУКМА', 1, 3, 302, null),
('адміністрація', 'Навчально-методичний відділ', 1, 2, 214, null),

('Відділи', 'Відділ міжнародного співробітництва', 5, 304, null, null),
  ('Відділи', 'Служба залучення коштів', 5, null, null, null),
  ('Відділи', 'Служба зв`язків з громадськістю ', 5, null, null, null),
  ('Відділи', 'Приймальна комісія', 4, null, null, null),
  ('Відділи', 'Відділ докторантури та аспірантури', 4, null, null, null),
('Відділи', 'Центр кар`єри та працевлаштування студентів', 4, 1, 115, null),
('Відділи', 'Редакційно-видавничий відділ', 3, 1, '115, 120, 311', null),
('Відділи', 'Інформаційно-обчислювальний відділ', 1, 2, 215, null),

('бібліотека', 'Філологічна бібліотека', 1, 1, null,null),
('бібліотека', 'Дослідницька бібліотека', 'Староакадемічний корпус', 2, null, null),
('бібліотека', 'Миcтецька бібліотека', 'Староакадемічний корпус', 0, null, null),
('бібліотека', 'Бакалаврська бібліотека', 'Бібліотека Тетяни та Омеляна Антоновичів', null, null, null),
('бібліотека', 'Бібліотека Центру польських та європейських досліджень', 6, 1, null, null),
('бібліотека', 'Бібліотека Центру польських та європейських досліджень', 6, 1, null, null),
('бібліотека', 'Бібліотека Підготовчого відділення',9, 1, null, null),
('бібліотека', 'Бібліотека-архів Дж.Мейса',4, 1, null, null),
('бібліотека', 'Бібліотека-архів О.Пріцака',4, 1, null, null),

('Коворкінг', 'KMArt Space', 4, -1, null, null),
('Коворкінг', 'Білий простір', 4, 1, null, null),
('Коворкінг', 'KNAry Yard', 'КМЦ', 1, null, null),

('Студорганізації', 'Радіо Квіт (1 плац)', 1, 2, 219, null),
('Студорганізації', 'Радіо Квіт (2 плац)', 4, 1, 106, null),
('Студорганізації', 'Спудейське братство', 4, 1, 104, null),
('Студорганізації', 'Студентська колегія', 4, 1, 105, null),

('Огранізації-Друзі', 'Жорнал `Кіно-театр`', 1, 2, 216, null),
('Огранізації-Друзі', 'СП `Імідж-освіта`', 5, 3, 301, null),
('Огранізації-Друзі', 'СП `Імідж-освіта`', 5, 3, 301, null),
('Огранізації-Друзі', 'Київськи1 міжнародний інститут соціології (КМІС)', 4, 2, '229, 230, 262', null),
('Огранізації-Друзі', 'Видавничий дім "Києво-Могилянська академія"', 2, 1, null, '4 під`їзд'),

('Здоров`я', 'Спортзал', 3, 3, null, null),
('Здоров`я', 'Тренажерний зал', 3, -1, null, null),
('Здоров`я', 'Соціально-психолонічна частина', 4, 1, 103, null),
('Здоров`я', 'Медична частина', 1, 1, null, null),


('Школи', 'Києво-Могилянська Бізнес Школа (KMBS)', 4, 4, null,null),
('Школи', 'Школа соціальної роботи', 4, 2, 299, null),
('Школи', 'Школа охорони здоров`я', 6, 1, 115, null),
('Школи', 'Могилянська школа журналістики', 4, -1, null,null),
('Школи', 'Докторська школа НаУКМА', 4, 2, 215, null),
('Школи', 'Українсько-канадська школа англійської мови', 3, 4, 408,null),
('Школи', 'Школа політичної аналітики при НаКАМА', 3, 4, 408,null),

('Банкомат', 'Банкомат ПриватБанк', 3, 1, null, null),
('Банкомат', 'Термінал ПриватБанк', 1, 1, null, null),
('Банкомат', 'Термінал ПриватБанк', 1, 1, null, null),

('Магазин', 'Магазин Канцтоварів', 1, 1, null, null),
('Магазин', 'KMA GIFT Shop', 3, 1,null, null),

('Принтер', 'Принтер', 1, 1,null,null),
('Принтер', 'Принтер', 'Бібліотека Тетяни та Омеляна Антоновичів', 2,null,null),

('Їдальня', 'Їдальня 1 плацу', 2, 1,null,null),
('Їдальня', 'Їдальня 2 плацу', 4, 1,null,null);


-- деканат
-- SELECT name, building, stage, aud, info FROM places WHERE type = 'деканат';

-- кафедра
-- SELECT name, building, stage, aud, info FROM places WHERE type = 'кафедра';

-- адміністрація
-- SELECT name, building, stage, aud, info FROM places WHERE type = 'адміністрація';

-- бібліотека
-- SELECT name, building, stage, aud, info  FROM places WHERE type = 'бібліотека';

-- Банкомат
-- SELECT name, building, stage, aud, info FROM places WHERE type = 'Банкомат';

-- Магазин
-- SELECT name, building, stage, aud, info FROM places WHERE type = 'Магазин';

-- Принтер
-- SELECT name, building, stage, aud, info FROM places WHERE type = 'Принтер';

-- Їдальня
-- SELECT name, building, stage, aud, info FROM places WHERE type = 'Їдальня';
