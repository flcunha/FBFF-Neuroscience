function cost = CostDepth(params,corr_depth)
    num_sessions=length(params);
    cost=[];
    num_cost=0;
    for sess1=1:num_sessions
        for sess2=sess1+1:num_sessions
            num_cost=num_cost+1;
            delta_depth=params(sess2)-params(sess1);
%             max_delta=(num_deltas-1)/2;
%             delta_pos=delta_depth+max_delta+1;
            max_delta=(size(corr_depth,3)-1)/2;
            delta_pos=delta_depth+max_delta+1;
            p=delta_depth-floor(delta_depth);
            cost(num_cost)=(1-p)*(1-corr_depth(sess1,sess2,floor(delta_pos)))+p*(1-corr_depth(sess1,sess2,ceil(delta_pos)));
        end
    end
end

