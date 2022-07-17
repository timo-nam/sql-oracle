-- 땡!!! SELECT HOUR, COUNT(*) COUNT
SELECT HOUR, COUNT(r.animal_id) COUNT
  FROM (
      SELECT LEVEL - 1 HOUR
        FROM DUAL
      --START WITH parent_id IS NULL
      --CONNECT BY PRIOR id = parent_id
        CONNECT BY LEVEL <= 24
  ) LEFT JOIN animal_outs r
      ON HOUR = TO_CHAR(r.datetime, 'HH24')
  GROUP BY HOUR
  ORDER BY HOUR;
