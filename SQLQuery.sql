--insert into UserInfo values('admin','password','管理员','','');
--select * from UserInfo;
--select Count(*) from UserInfo where UserVName='t';
--delete from UserInfo where UserId=2;
--update UserInfo set UserPsw='123456' where UserVName='test';
--select * from FruitInfo;
--select * from FruitGroupInfo;
--select FGroupName from FruitGroupInfo ;
--select f.*,i.FGroupName from FruitInfo f left join FruitGroupInfo i on f.FruitGroupId=i.FGroupId ;
--update FruitInfo set FruitComment='新鲜芒果，最新上市，欢迎品尝' where FruitId=2;
--update FruitInfo set FruitNPrice=9.3 where FruitId=2;
--insert into FruitInfo values(5,'套餐6','~\Images\fruits\套餐6.jpg','进口精装礼盒',300,280);
--select * from FruitInfo;
--update FruitInfo set FruitImage='~\Images\fruits\樱桃.jpg' where FruitId=6;
--delete from fruitInfo where FruitId=1006;
--select * from UserInfo;
--select * from FruitInfo where FruitName='草莓';
--select * from OrderInfo;
--select * from ShopCar;
--select * from ShopCar where UserId=1;
--insert into ShopCar values(1,3,3,1.1);
--delete from ShopCar where ID=3;
--select SUM(FruitSumPrice) from ShopCar where UserId=1;
--select COUNT(*) from ShopCar where UserId=1 and FruitId=3;
--update ShopCar set FruitNum+=3 where FruitId=3 and UserId =1;
--select * from DeliveryAddressinfo;
--insert into DeliveryAddressinfo values(1,'山西省太原市迎泽西大街太原理工大学迎西校区','123','18334700000');
--update DeliveryAddressinfo set DeliveryAddress='山西省太原市迎泽西大街太原理工大学迎西校区+山西省朔州市怀仁县+' where UserId=1;
--update OrderInfo set OrderStatus=(select StatusComments from OrderStatus where StatusId=2 )  where OrderId=13;
--select * from OrderStatus;
--select * from OrderInfo;
--insert into OrderStatus values(0,'已提交订单，请付款');
--insert into OrderStatus values(1,'已付款，请等待卖家发货');
--insert into OrderStatus values(2,'已发货，快递小哥正飞速前往');
--insert into OrderStatus values(4,'订单结束，感谢您对我们的信任，欢迎您下次光临');
--select statusComments from orderStatus where statusid=1; 
--select f.*,i.statusComments from OrderInfo f left join orderStatus i on f.OrderStatus=i.statusid where OrderUserName='test' ;
--insert into OrderInfo(OrderPrice,OrderUserName,OrderUserAdress,OrderUserPhone,OrderTime,OrderStatus,OrderComment) values(10.00,'test','太原市迎泽大街','18334700000','2012-12-12 12:12:12',0,'芒果');
--delete from OrderInfo;
--select * from OrderInfo where OrderUserName='test';
--update OrderInfo set OrderStatus='' where OrderId=13;


