begin
    apex_workflow.remove_development_instances(
        p_application_id => 101
    );
    
    delete from requests;
    
    commit;
end;