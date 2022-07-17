SELECT
    animal_type,
    CASE WHEN name IS NULL THEN 'No name' ELSE name END NAME,
    sex_upon_intake
  FROM animal_ins
  ORDER BY animal_id;
