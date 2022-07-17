SELECT l.name NAME, l.datetime DATETIME
  FROM animal_ins l LEFT JOIN animal_outs r
      ON l.animal_id = r.animal_id
  WHERE r.animal_id IS NULL
  ORDER BY l.datetime
  FETCH FIRST 3 ROWS ONLY;
