-- Projeto lógico da Oficina mecânica

-- Tabela Cliente

create table clients(
	IdClient int auto_increment primary key,
    Cname varchar(30),
    Vehicle varchar(10),
    contact char(11)
);
alter table Clients auto_increment=1;

-- tabela cliente por serviço

create table client_has_service(
	Client_idClient int,
    Service_idService int,
    primary key (client_idClient,Service_idService)
); 

-- Tabela Serviço

create table Service(
	idSevice Int auto_increment primary key,
    ToRepair varchar(20),
    Revision Varchar(20)
);

-- Tabela Ordem de Serviço

create table Service_Order(
	idService_Order int auto_increment primary key,
    Service_Number int,
    Auto_parts varchar(45),
    Auto_parts_value varchar(20),
    Labor varchar(20),
    Labor_value varchar(20),
    Client_autorization enum('yes','no'),
    Issue_date date,
    Service_Status enum('Aguardando','em execução','pronto'),
    Conclusion_date date
);

-- Tabela Serviço por Ordem de Serviço

create table Service_has_Service_order(
	Service_idService int,
    Service_Order_idService_Order int,
    primary key (Service_idService, Service_Order_idService_Order)
);

-- Tabela Equipe
create table Team(
	idTeam int auto_increment primary key,
    Tname varchar(20),
    Especialties varchar(20),
    Team_code varchar(10),
    addres varchar(30)
);

-- Tabela serviço por equipe

create table Service_has_Team(
	Service_idService int,
    Team_idTeam int,
    primary key(Service_idService, Team_idTeam)
);

-- Tabela Equipe por Ordem de Serviço

create table Team_has_Service_order(
	Team_idTeam int,
    Service_Order_idService_Order int,
    primary key(Team_idTeam, Service_Order_idService_Order)
);

-- Tabela de Estoque

create table Inventory(
	IdInventory int auto_increment primary key,
    Auto_parts varchar(45),
    Auto_parts_code varchar(20),
    Auto_parts_value varchar(15),
    InventoryLocal varchar(255),
    Amount int default 0,
    constraint unique_Auto_parts_code unique (Auto_parts_code)
);

-- Tabela Estoque por Ordem de Serviço

create table Inventory_has_Service_Order(
	Inverntory_idInventory int,
    Service_Order_idService_Order int,
    primary key(Inverntory_idInventory, Service_Order_idService_Order)
);
