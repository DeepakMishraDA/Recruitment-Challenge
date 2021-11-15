Select count(conv_id) as "Total_counts",
Round(Avg (revenue):: numeric,2) as "Revenue",
conv_date as "Dates" from conversions 
group by conv_date
order by conv_date asc;
