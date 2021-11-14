Select ss.campaign_name,aac.cost, ss.cpc 
	From api_adwords_costs aac 
	Inner Join session_sources as ss
	On aac.cost = ss.cpc;
