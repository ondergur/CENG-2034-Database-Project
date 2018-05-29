create view date_view as
  select
    `globalterrorismdatabase`.`event`.`event_id` AS `event_id`,
    `globalterrorismdatabase`.`event`.`iyear`    AS `iyear`,
    `globalterrorismdatabase`.`event`.`imonth`   AS `imonth`,
    `globalterrorismdatabase`.`event`.`iday`     AS `iday`
  from `globalterrorismdatabase`.`event`;
