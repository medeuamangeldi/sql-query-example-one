SELECT
    project,
    constructive,
    under_constructive,
    work_group,
    block,
    floor,
    level,
    MIN(base_plan_start_date) AS min_base_plan_start_date,
    MAX(base_plan_finish_date) AS max_base_plan_finish_date,
    json_agg(json_build_object('contractor', contractor, 'plan_value', plan_value) ORDER BY plan_value DESC NULLS LAST) AS contractors
FROM
    table_first_task
GROUP BY
    project,
    constructive,
    under_constructive,
    work_group,
    block,
    floor,
    level;
