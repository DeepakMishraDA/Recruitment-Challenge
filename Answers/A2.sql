Select count(conb.conv_id) as "Total_counts",
Round(Avg (conb.revenue):: numeric,2) as "Revenue",
con.conv_date as "Dates" from conversions con
right join conversions_backend conb
on conb.conv_id = con.conv_id
group by con.conv_date
order by con.conv_date asc;

/*Select count(conv_id) as "Total_counts",
Round(Avg (revenue):: numeric,2) as "Revenue",
conv_date as "Dates" from conversions 
group by conv_date
order by conv_date asc;*/
