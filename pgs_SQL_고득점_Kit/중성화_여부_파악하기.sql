SELECT
    animal_id,
    name,
    CASE
        WHEN sex_upon_intake like 'Neutered%'
            OR sex_upon_intake like 'Spayed%'
        THEN 'O' ELSE 'X'
    END
  FROM animal_ins
  ORDER BY animal_id;
