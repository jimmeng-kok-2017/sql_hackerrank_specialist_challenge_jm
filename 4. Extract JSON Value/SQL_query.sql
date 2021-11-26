/* BUILD SCHEMA OF SAMPLE TABLES*/

CREATE TABLE audit_log (
    task_id int,
    object_id int,
    extra_data_in_json varchar(255)
);

INSERT INTO audit_log (task_id, object_id, extra_data_in_json)
VALUES
(766, 13777, '{"extra":[{ "label":"108" ,"site":"http://www.w3cschool.jp"},{ "label":"235" ,"site":"http://www.w3cschool.jp" }]}'),
(753, 13617, '{"extra":[{ "label":"440" ,"site":"http://www.w3cschool.jp"},{ "label":"178" ,"site":"http://www.w3cschool.jp" }]}'),
(733, 13777, '{"extra":[{ "label":"366" ,"site":"http://www.w3cschool.jp"},{ "label":"173" ,"site":"http://www.w3cschool.jp" }]}');

/* ANSWER */

select distinct task_id, object_id, label from(
select * from(
select task_id, object_id, label1 as label from
(select task_id, object_id, replace(json_extract(extra_data_in_json, '$.extra[0].label'), '"', '') as label1, replace(json_extract(extra_data_in_json, '$.extra[1].label'), '"', '') as label2
from audit_log
order by task_id, object_id asc) as new_audit_log
union all
select task_id, object_id, label2 as label from
(select task_id, object_id, replace(json_extract(extra_data_in_json, '$.extra[0].label'), '"', '') as label1, replace(json_extract(extra_data_in_json, '$.extra[1].label'), '"', '') as label2
from audit_log
order by task_id, object_id asc) as new_audit_log) as new_new_audit_log
order by new_new_audit_log.task_id, new_new_audit_log.object_id, new_new_audit_log.label asc)as final_table;