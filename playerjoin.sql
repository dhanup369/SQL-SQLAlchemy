use Miscellaneous_DB;
select * from players;
select * from seasons_stats;
select players.Player,height,weight,college,born,Pos,Tm from players inner join seasons_stats on players.ID=seasons_stats.ID;
select players.Player,college,'year','Pos','TS%','FG%','2P%','FT%' from players inner join seasons_stats on players.ID=seasons_stats.ID;