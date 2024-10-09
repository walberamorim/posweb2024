# posweb2024
Projeto usado como atividade no curso de Pós-Graduação em Desenvolvimento Web

Comandos úteis

mysql -u myapp_user -p"myapp_passwd" < db.sql;

show grants for myapp_user;

grant select on <mydb>.<mytable> to myapp_user;

select * from People;

export FLASK_APP=myapi.py

flask run --host=0.0.0.0


ETAPAS DE APRESENTAÇÃO:

1 - terraform apply
2 - pegar IP pro actions
3 - pegar IP pro frontend
4 - pegar host-bd pro backend
5 - pegar host-bd pro actions
6 - subir mudanças pro git
7 - acessar maquina pra ver banco e rodar backend
8 - testar app
