SELECT r.animal_id ANIMAL_ID, r.name NAME
  FROM animal_ins l RIGHT JOIN animal_outs r
      ON l.animal_id = r.animal_id
  WHERE l.animal_id IS NULL
  ORDER BY ANIMAL_ID;
