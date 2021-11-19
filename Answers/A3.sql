Select con.conv_date,conb.conv_date,
conb.user_id,conb.conv_id,conb.revenue,conb.market
from conversions con
right join conversions_backend conb
on conb.conv_id = con.conv_id 
where con.conv_date is null;

/* conversions table conv_date field has null values */
