use bt3_quanlybanhang;

insert into customers (name, cAge)
values ('Minh Quan', 10),
('Ngoc Oanh', 20),
('Hong Ha', 50);

insert into orders (cID, oDate, oTotalPrice)
values (1, '2006-03-21', null),
(2, '2006-03-23', null),
(3, '2006-03-16', null);

insert into products (pName, pPrice)
values ('May Giat', 3),
('Tu Lanh', 5),
('Dieu Hoa', 7),
('Quat', 1),
('Bep Dien', 2);

insert into orderdatail (oID, pID, odQTY)
values (1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(3, 1, 8),
(2, 5, 4),
(2, 3, 3);