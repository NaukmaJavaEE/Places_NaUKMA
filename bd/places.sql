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
`status` VARCHAR(20) NOT NULL DEFAULT 'NEW',
PRIMARY KEY (`id`)) DEFAULT CHARSET=utf8 ;

INSERT INTO `places` (`type`, `name`, `building`, `stage`, `aud`, `info`, `status`) VALUES  
('dekanat', 'Факультет Інформатики', 1, 3,315, null , 'APPROVED' ), 
('dekanat', 'Факультет Гуманітарних Наук', 1, 2,203, null , 'APPROVED' ),
('dekanat', 'Факультет Економічних Наук', 6, 4,407, null , 'APPROVED' ),
('dekanat', 'Факультет Правничих Наук', 4, 3,305, null , 'APPROVED' ),
('dekanat', 'Факультет Природничих Наук', 3, 2,217, null , 'APPROVED' ),
('dekanat', 'Факультет Соціальних Наук і Соціальних Технологій', 6, 2, 211,null , 'APPROVED' ),

('kafedra', 'Кафедра Математики', 1, 3,308,null , 'APPROVED' ),
('kafedra', 'Кафедра Мультимедійних Систем', 1, 2,204,null , 'APPROVED' ),
('kafedra', 'Кафедра Мережних Технологій', 3, 2,223,null , 'APPROVED' ),
('kafedra', 'Кафедра Інформатики', 1, 3,302,null , 'APPROVED' ),

('kafedra', 'Кафедра загального та слов`янського мовознавства ', 3, 2,203, null , 'APPROVED' ),
('kafedra', 'Кафедра історії', 5, 1, 113, null , 'APPROVED' ),
('kafedra', 'Кафедра культорології', 3, 1,117,null , 'APPROVED' ),
('kafedra', 'Кафедра літературознавства', 1, 3,302,null , 'APPROVED' ),
('kafedra', 'Кафедра української мови', 3, 3,304,null , 'APPROVED' ),
('kafedra', 'Кафедра археології', 1, 3,302,null , 'APPROVED' ),
('kafedra', 'Кафедра філософії та релігієзнавства', 1, 3,327,null , 'APPROVED' ),
('kafedra', 'Кафедра англійської мови', 3, 4,410, null , 'APPROVED' ),

('kafedra', 'Кафедра економічної теорії', 6, 2, 208, null , 'APPROVED' ),
('kafedra', 'Кафедра маркетингу та управління бізнесом', 6, 3,309,null , 'APPROVED' ),
('kafedra', 'Кафедра фінансів', 6, 4,409, null , 'APPROVED' ),

('kafedra', 'Кафедра міжнародного права та спеціальних правових наук', 4, 3, 325, null , 'APPROVED' ),
('kafedra', 'Кафедра загальнотеоретичних та державно-правових наук', 4, 3, 322, null , 'APPROVED' ),
('kafedra', 'Кафедра галузевих правових наук', 4, 3,323,null , 'APPROVED' ),
('kafedra', 'Кафедра імені Жана Моне з права Європейського Союзу', 9, 1, 5, null , 'APPROVED' ),

('kafedra', 'Кафедра біології', 2, 4, 411, null , 'APPROVED' ),
('kafedra', 'Кафедра екології', 3, 2, 213, null , 'APPROVED' ),
('kafedra', 'Кафедра фізико-математичних наук', 2, 3,305,null , 'APPROVED' ),
('kafedra', 'Кафедра хімії', 2, 2,205, null , 'APPROVED' ),
('kafedra', 'Кафедра фізичного виховання', 3, 3,303,null , 'APPROVED' ),

('kafedra', 'Кафедра зв`язків із громадськістю ', 4, 2, 251, null , 'APPROVED' ),
('kafedra', 'Кафедра психології та педагогіки', 4, 2, 249, null , 'APPROVED' ),
('kafedra', 'Кафедра політології', 4, 2, 221, null , 'APPROVED' ),
('kafedra', 'Кафедра соціології', 4, 2,215, null , 'APPROVED' ),

('administration', 'Студентський відділ кадрів', 1, 1, 110, null , 'APPROVED' ),
('administration', 'Відділ по роботі зі студентами', 4, 1, 112, null , 'APPROVED' ),
('administration', 'Планово-фінансовий відділ', 1, 3, 302, null , 'APPROVED' ),
('administration', 'Служба президента НаУКМА', 1, 3, 302, null , 'APPROVED' ),
('administration', 'Навчально-методичний відділ', 1, 2, 214, null , 'APPROVED' ),

('departments', 'Відділ міжнародного співробітництва', 5, 304, null, 'тел. 425-50-16' , 'APPROVED' ),
('departments', 'Служба залучення коштів', 5, null, null, 'тел. 425-15-43' , 'APPROVED' ),
('departments', 'Служба зв`язків з громадськістю ', 5, null, null, 'тел. 417-82-15' , 'APPROVED' ),
('departments', 'Приймальна комісія', 4, null, null, 'тел. 417-51-55, 425-60-22' , 'APPROVED' ),
('departments', 'Відділ докторантури та аспірантури', 4, null, null, 'тел. 463-69-74' , 'APPROVED' ),
('departments', 'Центр кар`єри та працевлаштування студентів', 4, 1, 115, 'тел. 462-51-95, http://jcc.ukma.edu.ua' , 'APPROVED' ),
('departments', 'Редакційно-видавничий відділ', 3, 1, '115, 120, 311', 'тел. 425-45-44' , 'APPROVED' ),
('departments', 'Інформаційно-обчислювальний центр', 1, 2, 215, 'тел. 425-53-00' , 'APPROVED' ),
('departments', 'Правнича клініка', 9, 2, 15, null , 'APPROVED' ),
('departments', 'Центр урбаністичних студій', 4, -1,null ,'www.facebook.com/urbanstudieskma' , 'APPROVED' ),
('departments', 'Центр канадських студій', 9, 2, '25-В', 'тел. 463-69-30', 'APPROVED' ),
('departments', 'Центр інноваційних методик правничої освіти', 4, 3, 322 , 'тел. 425-77-74' , 'APPROVED' ),
('departments', 'Центр європейських гуманітарних досліджень', 5, 2, 209-211, 'тел. 425-60-20' , 'APPROVED' ),
('departments', 'Науково-дослідний центр кінематографічних студій', 1, 2, 216, 'тел. 425-60-96', 'APPROVED' ),
('departments', 'Центр досліджень екосистем, змін клімату та сталого розвитку', 3, 2, 211, 'тел. 425-60-57' , 'APPROVED' ),
('departments', 'Центр міжнародного захисту прав людини', 4, 3, 325 ,'тел. 425-60-73' , 'APPROVED' ),
('departments', 'Центр польських та європейських студій ім. Єжи Гедройця', 6, -1, null,'тел. 425-13-51 ' ,'APPROVED' ),
('departments', 'Центр розвитку інновацій', 5, 2, 206-207 , 'тел. 383-25-24, http://cid.ukma.edu.ua', 'APPROVED' ),
('departments', 'Центр міжкультурної комунікації', 6, 2, 205, 'тел. 425-02-64' , 'APPROVED' ),
('departments', 'Центр досліджень здоров`я та соціальної політики', 1, 2, 216, 'тел. 425-77-69' , 'APPROVED' ),


('library', 'Філологічна бібліотека', 1, 1, null,null , 'APPROVED' ),
('library', 'Дослідницька бібліотека', 'Староакадемічний корпус', 2, null, null , 'APPROVED' ),
('library', 'Миcтецька бібліотека', 'Староакадемічний корпус', 0, null, null , 'APPROVED' ),
('library', 'Бакалаврська бібліотека', 'Бібліотека Тетяни та Омеляна Антоновичів', null, null, null , 'APPROVED' ),
('library', 'Бібліотека Центру польських та європейських досліджень', 6, 1, null, null , 'APPROVED' ),
('library', 'Бібліотека Підготовчого відділення',9, 1, null, null , 'APPROVED' ),
('library', 'Бібліотека-архів Дж.Мейса',4, 1, null, null , 'APPROVED' ),
('library', 'Бібліотека-архів О.Пріцака',4, 1, null, null , 'APPROVED' ),

('friendorg', 'Журнал "Кіно-театр"', 1, 2, 216, null , 'APPROVED' ),
('friendorg', 'СП "Імідж-освіта"', 5, 3, 301, null , 'APPROVED' ),
('friendorg', 'Київський міжнародний інститут соціології (КМІС)', 4, 2, '229, 230, 262', null , 'APPROVED' ),
('friendorg', 'Видавничий дім "Києво-Могилянська академія"', 2, 1, null, '4 під`їзд' , 'APPROVED' ),

('health', 'Спортзал', 3, 3, null, null , 'APPROVED' ),
('health', 'Тренажерний зал', 3, -1, null, null , 'APPROVED' ),
('health', 'Соціально-психологічна частина', 4, 1, 103, null , 'APPROVED' ),
('health', 'Медична частина', 1, 1, null, null , 'APPROVED' ),

('school', 'Києво-Могилянська Бізнес Школа (KMBS)', 4, 4, null,null , 'APPROVED' ),
('school', 'Школа соціальної роботи', 4, 2, 299, null , 'APPROVED' ),
('school', 'Школа охорони здоров`я', 6, 1, 115, null , 'APPROVED' ),
('school', 'Могилянська школа журналістики', 4, -1, null,null , 'APPROVED' ),
('school', 'Докторська школа НаУКМА', 4, 2, 215, null , 'APPROVED' ),
('school', 'Українсько-канадська школа англійської мови', 3, 4, 408,null , 'APPROVED' ),
('school', 'Школа політичної аналітики при НаУКМА', 4, 4, 422, 'тел. 230-82-39' , 'APPROVED' ),

('services', 'Банкомат ПриватБанк', 1, 1, null, null , 'APPROVED' ),
('services', 'Термінал ПриватБанк', 1, 1, null, null , 'APPROVED' ),
('services', 'Термінал ПриватБанк', 3, 1, null, null , 'APPROVED' ),
('services', 'Магазин канцтоварів', 1, 1, null, null , 'APPROVED' ),
('services', 'KMA GIFT Shop', 3, 1,null, null , 'APPROVED' ),
('services', 'Принтер', 1, 1,null,null , 'APPROVED' ),
('services', 'Принтер', 'Бібліотека Тетяни та Омеляна Антоновичів', 2,null,null , 'APPROVED' ),
('services', 'Їдальня 1 плацу', 2, 1,null,null , 'APPROVED' ),
('services', 'Їдальня 2 плацу', 4, 1,null,null , 'APPROVED' ),

('dekanat', 'Факультет Природничих Наук', 3, 2,217, null , 'NEW' ),
('kafedra', 'lololol', 4, 2,215, null , 'NEW' );

INSERT INTO `places` (`type`, `name`, `building`, `stage`, `aud`,  `status`, `info`) VALUES  
('coworking', 'KMArt Space', 4, -1, null,  'APPROVED' , 'https://www.facebook.com/KMArtSpace, http://vk.com/kmartspace'),
('coworking', 'Білий простір', 4, 1, null, 'APPROVED' , 'https://www.facebook.com/bilyiprostir'),
('coworking', 'KMArt Yard', 'КМЦ', 1, null,  'APPROVED', 'https://www.facebook.com/kmartyard' ),
('studorg', 'Радіо "Квіт" (1 плац)', 1, 2, 219,  'APPROVED' , 'http://vk.com/radiokvit, radionaukmakvit@gmail.com'),
('studorg', 'Радіо "Квіт" (2 плац)', 4, 1, 106,  'APPROVED' , 'http://vk.com/radiokvit'),
('studorg', 'Спудейське братство', 4, 1, 104, 'APPROVED' , 'http://vk.com/sb_kma'),
('studorg', 'Студентська колегія', 4, 1, 105,  'APPROVED' , 'http://vk.com/sk_kma');
