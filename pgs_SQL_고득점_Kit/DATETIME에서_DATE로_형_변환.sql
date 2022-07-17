SELECT
    animal_id,
    name,
    TO_CHAR(datetime, 'YYYY-MM-DD') 날짜
  FROM animal_ins
  ORDER BY animal_id;
