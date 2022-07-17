SELECT l.animal_id ANIMAL_ID, l.name NAME
  FROM animal_ins l JOIN animal_outs r
      ON l.animal_id = r.animal_id
-- 땡!!! ORDER BY l.datetime - r.datetime DESC
  ORDER BY r.datetime - l.datetime DESC
  FETCH FIRST 2 ROWS ONLY;
