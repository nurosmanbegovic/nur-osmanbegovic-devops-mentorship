

select agent, time, event, toUnixTimestamp(toDateTime(toStartOfInterval(time,INTERVAL 1 month,'UTC'),'UTC')) AS timekey
from queue_log
where (agent, time, timekey ) in (
    select type as agent, toUnixTimestamp(toDateTime(toStartOfInterval(time,INTERVAL 1 month,'UTC'),'UTC')) AS timekey, 
        MAX(date_time) as md 
        from queue_log 
        where date_time < 1676937599 AND conversation_type IN ('voice') AND 
        event IN ('PAUSE','UNPAUSE','AGENTCALLBACKLOGOFF','AGENTLOGOFF','AGENTCALLBACKLOGIN','AGENTLOGIN') 
        AND (type LIKE 'Agent/%') 
        group by timekey, agent 
        order by timekey) 
        group by agent
        order by maxtk, agent;
)


asain vrijeme
nur vrijeme 


from (  select type as agent, toUnixTimestamp(toDateTime(toStartOfInterval(time,INTERVAL 1 month,'UTC'),'UTC')) AS timekey, 
        MAX(date_time) as md 
        from queue_log 
        where date_time < 1676937599 AND conversation_type IN ('voice') AND 
        event IN ('PAUSE','UNPAUSE','AGENTCALLBACKLOGOFF','AGENTLOGOFF','AGENTCALLBACKLOGIN','AGENTLOGIN') 
        AND (type LIKE 'Agent/%') 
        group by timekey, agent 
        order by timekey) 
        group by agent
        order by maxtk, agent;



select max(timekey) as maxtk, agent, event 
from (select agent, timeket, max(date_time) as md, event
        from queue_log
        where date_time < 1676937599 AND conversation_type IN ('voice') AND 
        event IN ('PAUSE','UNPAUSE','AGENTCALLBACKLOGOFF','AGENTLOGOFF','AGENTCALLBACKLOGIN','AGENTLOGIN') 
        AND (type LIKE 'Agent/%') 
        group by timekey, agent, event 
        order by timekey)
group by agent, event
order by maxtk, agent


select agent, event, time
from queue_log ql
where (agent, time) in (
    select agent, max(date_time) as md
        from queue_log
        where date_time < 1676937599 AND conversation_type IN ('voice') AND 
        event IN ('PAUSE','UNPAUSE','AGENTCALLBACKLOGOFF','AGENTLOGOFF','AGENTCALLBACKLOGIN','AGENTLOGIN') 
        AND (type LIKE 'Agent/%') 
        group by timekey, agent
        order by timekey
)