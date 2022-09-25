-- data_insertion: clients, service, service_order, team, inventory

 -- Cname, Vehicle, contact 
 insert into Clients (Cname, vehicle, Contact) values
	('Cliente1','vehicle1','00000000001'),
	('Cliente2','vehicle2','00000000002'),
	('Cliente3','vehicle3','00000000003');

--  ToRepair, Revision 
insert into Service (ToRepair, Revision) values
	(null,'sdknfla'),
	('laksdfoia',null),
	('iksnafane','lkaneflçaf');

--  Service_Number, Auto_parts, Auto_parts_value, Labor, Labor_value, Client_autorization, Issue_date, Service_Status, Conclusion_date 
 insert into Service_Order (Service_Number, Auto_parts, Auto_parts_value, Labor, Labor_value, Client_autorization, Issue_date, Service_Status, Conclusion_date) values
	('1','Peça1', 'R$15', 'eletrica', 'R$150', 'yes', '20220920', 'pronto','20220920'),
	('2','Peça2', 'R$150','Hidraulica', 'R$250', 'yes', '20220920', 'em execução','20220922'),
	('3','Peça3', 'R$1500','Mecânica', 'R$350', 'no', '20220920', 'aguardando', null);
    
-- Tname, Especialties, Team_code, addres
 insert into Team (Tname, Especialties, Team_code, addres) values
	('Time1','Mecânica','M01','Loja1'),
	('Time2','Elétrica','E01','loja2'),
	('Time3','Hidráulica','H01','loja3');

-- Auto_parts, Auto_parts_code, Auto_parts_value, InventoryLocal, Amount
 insert into Inventory (Auto_parts, Auto_parts_code, Auto_parts_value, InventoryLocal, Amount) values
	('Peça1', 'PE01', 'R$15', 'Loja2', '12'),
	('Peça2', 'PH01', 'R$150','loja3', '4'),
	('Peça3', 'PM01', 'R$1500', 'loja1', '2');
