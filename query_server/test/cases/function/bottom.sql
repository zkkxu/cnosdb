--#DATABASE=bottom_func
drop database if exists bottom_func;
create database bottom_func;

drop table if exists m2;
CREATE TABLE IF NOT EXISTS m2(f0 BIGINT , f1 DOUBLE , TAGS(t0, t1, t2) ); -- 1ms;

INSERT m2(TIME, f0, f1, t0, t1) VALUES(101, 111, 444, 'tag11', 'tag21');
INSERT m2(TIME, f0, f1, t0, t1) VALUES(102, 222, 333, 'tag12', 'tag22');
INSERT m2(TIME, f0, f1, t0, t1) VALUES(103, 333, 222, 'tag13', 'tag23');
INSERT m2(TIME, f0, f1, t0, t1) VALUES(104, 444, 111, 'tag14', 'tag24');

select bottom(time, 2), * from m2;
select bottom(t0, 3), * from m2;
select bottom(t1, 2), * from m2;
select bottom(f0, 2), * from m2;
select bottom(f1, 3), * from m2;

-- error
select bottom(time, 2), topk(t0, 3) from m2;
