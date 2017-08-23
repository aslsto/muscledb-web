select 
    m.id as Id,
    m.name as Name,
    m.lat_name as LatinName,
    gt.name as MuscleGroupName, 
    gt.lat_name as MuscleGroupLatinName
from 
    tbl_muscles m
inner join 
    view_grouptree_topdown gt
ON
    m.musclegroup_id = gt.id AND 
    gt.topgroupid = @groupid                
order by m.id asc