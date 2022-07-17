SELECT l.animal_id ANIMAL_ID, l.name NAME
  FROM animal_ins l JOIN animal_outs r
      ON l.animal_id = r.animal_id
  WHERE l.datetime > r.datetime
  ORDER BY l.datetime;
