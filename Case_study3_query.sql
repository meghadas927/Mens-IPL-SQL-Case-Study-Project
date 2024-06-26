create database case_study3;
use case_study3;

/*Questions to practice: */

-- 1. Which bowler took the most wickets in the 2018 season?

select player,wkts
from 2018_bowlers
order by 2 DESC
limit 1;

-- 2. Which batsmen scored the most runs in the 2018 season while maintaining an average strike rate of at least 130?

select Player,runs,S_R
from 2018_batsmen
where S_R>=130
order by Runs desc
limit 1;

-- 3. Which bowlers took the most wickets in the 2018 season while maintaining an economy rate of less than 7 runs per over?

select player,wkts,E_R
from 2018_bowlers
where E_R<7
order by 2 DESC
limit 1;

-- 4. Which batsmen scored the most runs across both 2018 and 2019 seasons?

select A.Player , (A.runs + B.runs) as Total_Runs from 2018_batsmen as A
left join 2019_batsmen as B on A.player = B.player
order by Total_Runs desc
limit 1;

-- 5. Which batsmen has hit the maximum number of boundaries in 2018, combining 4s and 6s?

select player,(4s+6s) as Max_boundaries
from 2018_Batsmen
order by 2 desc
limit 1;

-- 6. Name the bowlers who have got 4 wickets haul in 2019.

select player,4w
from 2019_Bowlers
where 4w >0;

-- 7. Name 5 such bowlers who bowled the least number of overs in 2018.

select player, Overs
from 2018_bowlers
order by 2 ASC
limit 5;

-- 8. Which team scored the maximum number of runs in 2019?

select team,sum(Runs) as total_runs
From 2019_batsmen
group by team
order by 2 desc
limit 1;

-- 9. Name the Batsmen who has hit maximum half centuries, both the years combined

select A.Player , (A.50s + B.50s) as Totalhalfcenturies from 2018_Batsmen as A
inner join 2019_batsmen as B on A.player = B.player
order by 2 desc
limit 1;
