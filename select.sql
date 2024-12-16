use bt3_quanlybanhang;

-- hien thi tat cac cac thong tin trong bang orders
select oID, oDate, oTotalPrice from orders;

-- hien thi danh sach cac khach hang da mua va ds mua boi cac khach hang
select c.name as customerName, p.pName as productName
from customers c
join `orders` o  on c.cID = o.cID
join orderdatail od on o.oID = od.oID
join products p on od.pID = p.pID
order by c.name, p.pName;

-- hien thi khach hang khong mua bat ky san pham nao
select name from customers where cID not in (select cID from `orders`);

-- Hiển Thị Mã Hóa Đơn, Ngày Bán Và Giá Tiền Của Từng Hóa Đơn
SELECT o.oID, o.oDate, SUM(od.odQTY * p.pPrice) AS oPrice
FROM `Orders` o
JOIN orderdatail od ON o.oID = od.oID
JOIN Products p ON od.pID = p.pID
GROUP BY o.oID, o.oDate
ORDER BY o.oID;

-- Cập Nhật Giá Tiền Cho Các Hóa Đơn (Tùy Chọn)
UPDATE `Orders` o
JOIN (
    SELECT od.oID, SUM(od.odQTY * p.pPrice) AS totalPrice
    FROM orderdatail od
    JOIN Products p ON od.pID = p.pID
    GROUP BY od.oID
) sub ON o.oID = sub.oID
SET o.oTotalPrice = sub.totalPrice;
