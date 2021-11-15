Select ss.campaign_name,aac.cost, ss.cpc, aac.campaign_id 
	From api_adwords_costs aac 
	Inner Join session_sources as ss
	On aac.cost = ss.cpc;
