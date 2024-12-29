CREATE OR REPLACE VIEW wksp_hrapex.v_employees AS
    SELECT
        e.employee_id,
        e.first_name,
        e.last_name,
        e.email,
        e.phone_number,
        e.hire_date,
        e.salary,
        e.commission_pct,
        e.job_id,
        e.job_title,
        e.department_id,
        e.department_name,
        e.manager_id
    FROM
        hr.v_employees e;