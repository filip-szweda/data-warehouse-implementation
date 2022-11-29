USE [hurtownia-danych]

INSERT INTO [zamowienie] VALUES (0, 3, 62.75, 188.25, 0, 0, 1, 4, 1);
INSERT INTO [zamowienie] VALUES (1, 1, 50.34, 50.34, 1, 1, 2, 5, 4);
INSERT INTO [zamowienie] VALUES (2, 1, 51.79, 51.79, 1, 1, 3, 1, 7);
INSERT INTO [zamowienie] VALUES (3, 2, 29.97, 59.94, 1, 2, 5, 3, 9);
INSERT INTO [zamowienie] VALUES (4, 3, 56.28, 168.84, 0, 0, 5, 2, 11);

INSERT INTO [data] VALUES ('2021', 'styczeń', '09');
INSERT INTO [data] VALUES ('2021', 'styczeń', '10');
INSERT INTO [data] VALUES ('2021', 'styczeń', '11');
INSERT INTO [data] VALUES ('2021', 'styczeń', '12');
INSERT INTO [data] VALUES ('2021', 'styczeń', '13');
INSERT INTO [data] VALUES ('2021', 'styczeń', '14');
INSERT INTO [data] VALUES ('2021', 'styczeń', '15');
INSERT INTO [data] VALUES ('2021', 'styczeń', '16');
INSERT INTO [data] VALUES ('2021', 'styczeń', '17');
INSERT INTO [data] VALUES ('2021', 'styczeń', '18');
INSERT INTO [data] VALUES ('2021', 'styczeń', '19');

INSERT INTO [danie] VALUES (0, 'Chilli con carne with fresh chillies', 'drogie');
INSERT INTO [danie] VALUES (11, 'Fettuccine Alfredo with chinese cabbage', 'drogie');
INSERT INTO [danie] VALUES (20, 'Califlower penne with parsnip', 'typowe');
INSERT INTO [danie] VALUES (41, 'Chicken wings with annatto seed', 'niedrogie');
INSERT INTO [danie] VALUES (47, 'Pork belly buns with red pepper', 'tanie');

INSERT INTO [uzytkownik] VALUES ('Edward Moreno', '+1 809', '403412705');
INSERT INTO [uzytkownik] VALUES ('Jessica Griffin', '+599 3', '485009531');
INSERT INTO [uzytkownik] VALUES ('Lisa Harvey', '+597', '538390492');
INSERT INTO [uzytkownik] VALUES ('Johnny Smith', '+48', '364708092');
INSERT INTO [uzytkownik] VALUES ('Matthew Ford', '+1 684', '763005312');

INSERT INTO [promocja] VALUES (50.34, 10, 1, 20, 10.06, 'Promotion for Fettuccine Alfredo with chinese cabbage', 20, 1, 11, 2);
INSERT INTO [promocja] VALUES (51.79, 1, 1, 50, 25.89, 'Promotion for Califlower penne with parsnip', 11, 7, 7, 3);
INSERT INTO [promocja] VALUES (29.97, 3, 1, 33, 9.89, 'Promotion for Pork belly buns with red pepper', 5, 8, 11, 5);

INSERT INTO [reklama] VALUES (340, 123123, 1, 4, 6);
INSERT INTO [reklama] VALUES (256, 123654, 1, 1, 5);
INSERT INTO [reklama] VALUES (500, 456789, 2, 2, 6);
INSERT INTO [reklama] VALUES (600, 13578, 2, 7, 9);

INSERT INTO [serwis_reklamowy] VALUES ('Google');
INSERT INTO [serwis_reklamowy] VALUES ('Facebook');


-- Reklama 1
INSERT INTO [klikniecia] VALUES (115, 4, 1);
INSERT INTO [klikniecia] VALUES (124, 5, 1);
INSERT INTO [klikniecia] VALUES (133, 6, 1);

-- -- Promocja 1
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (115, 4, 1, 1);
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (124, 5, 1, 1);
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (133, 6, 1, 1);


-- Reklama 2
INSERT INTO [klikniecia] VALUES (115, 1, 2);
INSERT INTO [klikniecia] VALUES (116, 2, 2);
INSERT INTO [klikniecia] VALUES (117, 3, 2);
INSERT INTO [klikniecia] VALUES (118, 4, 2);
INSERT INTO [klikniecia] VALUES (119, 5, 2);

-- -- Promocja 1
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (115, 1, 2, 1);
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (116, 2, 2, 1);
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (117, 3, 2, 1);
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (118, 4, 2, 1);
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (119, 5, 2, 1);


-- Reklama 3
INSERT INTO [klikniecia] VALUES (1150, 2, 3);
INSERT INTO [klikniecia] VALUES (1155, 3, 3);
INSERT INTO [klikniecia] VALUES (1160, 4, 3);
INSERT INTO [klikniecia] VALUES (1165, 5, 3);
INSERT INTO [klikniecia] VALUES (1110, 6, 3);

-- -- Promocja 1
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (1150, 2, 3, 1);
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (1155, 3, 3, 1);
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (1160, 4, 3, 1);
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (1165, 5, 3, 1);
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (1110, 6, 3, 1);

-- Reklama 4
INSERT INTO [klikniecia] VALUES (255, 7, 4);
INSERT INTO [klikniecia] VALUES (200, 8, 4);
INSERT INTO [klikniecia] VALUES (121, 9, 4);

-- -- Promocja 1
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (255, 7, 4, 1);
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (200, 8, 4, 1);
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (121, 9, 4, 1);

-- -- Promocja 2
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (255, 7, 4, 2);

-- -- Promocja 3
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (200, 8, 4, 3);
INSERT INTO [klikniecia_w_trakcie_promocji] VALUES (121, 9, 4, 3);

