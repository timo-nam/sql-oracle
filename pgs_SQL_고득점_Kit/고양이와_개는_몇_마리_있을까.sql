SELECT animal_type, COUNT(*) count
  FROM animal_ins
  WHERE animal_type IN ('Cat', 'Dog')
  GROUP BY animal_type
--HAVING animal_type IN ('Cat', 'Dog')
  ORDER BY animal_type;
