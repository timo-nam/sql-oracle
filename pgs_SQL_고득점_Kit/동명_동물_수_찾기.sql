SELECT name, COUNT(name) COUNT
  FROM animal_ins
--WHERE name IS NOT NULL
  GROUP BY name
  HAVING COUNT(name) >= 2
  ORDER BY name;
