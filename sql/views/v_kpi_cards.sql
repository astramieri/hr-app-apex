CREATE OR REPLACE VIEW wksp_hrapex.v_kpi_cards AS
    SELECT
        'Total Employees' AS title,
        to_char(count(*)) AS value,
        'fa fa-users'     AS icon,
        NULL              AS link
    FROM
        v_employees
    UNION ALL
    SELECT
        'Departments',
        to_char(COUNT(DISTINCT department_id)),
        'fa fa-building-o',
        NULL
    FROM
        v_employees
    UNION ALL
    SELECT
        'Average Salary',
        to_char(
            round(
                avg(salary),
                0
            ),
            'FML999G999G999G990'
        ),
        'fa fa-money-bag',
        NULL
    FROM
        v_employees
    UNION ALL
    SELECT
        'New Hires This Year',
        to_char(count(*)),
        'fa fa-briefcase',
        NULL
    FROM
        v_employees
    WHERE
        EXTRACT(YEAR FROM hire_date) = EXTRACT(YEAR FROM sysdate);