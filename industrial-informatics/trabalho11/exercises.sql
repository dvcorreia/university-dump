use exercises;
truncate dados_al;

-- 1
insert into dados_al (nome, mecanografico, telefone) values ('Maria', 95876, 912456869),
															('José', 94335, 913548666),
															('Ana', 93568, 961548668),
															('Luis', 96315, 915483584),
															('Ricardo', 94666, 933547895 );

-- 2
select * from dados_al order by mecanografico asc limit 1;
select * from dados_al where mecanografico = (select min(mecanografico) from dados_al);

-- 3
select @min_id:=id from dados_al where mecanografico = (select min(mecanografico) from dados_al);
update dados_al set nome = concat(nome, " Silva") where id = @min_id;

-- 4
select @max_id:=id from dados_al where mecanografico = (select max(mecanografico) from dados_al);
delete from dados_al where id = @max_id;

-- End
select * from dados_al;