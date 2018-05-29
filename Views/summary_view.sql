create view event_summary as
  select
    `globalterrorismdatabase`.`event`.`event_id` AS `event_id`,
    `globalterrorismdatabase`.`event`.`summary`  AS `summary`
  from `globalterrorismdatabase`.`event`
  where ( `globalterrorismdatabase`.`event`.`summary` is not null );
