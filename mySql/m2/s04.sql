-- table alias
use me;

select r.region_name as region, c.country_name as country
from regions r, countries c
where r.region_id = c.region_id;
