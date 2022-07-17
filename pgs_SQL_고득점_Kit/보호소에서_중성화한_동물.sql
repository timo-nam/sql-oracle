SELECT
    l.animal_id ANIMAL_ID,
    l.animal_type ANIMAL_TYPE,
    l.name NAME
  FROM animal_ins l JOIN animal_outs r
      ON l.animal_id = r.animal_id
  WHERE l.sex_upon_intake LIKE 'Intact%'
      AND (
          r.sex_upon_outcome LIKE 'Spayed%'
              OR r.sex_upon_outcome LIKE 'Neutered%'
      )
  ORDER BY ANIMAL_ID;
