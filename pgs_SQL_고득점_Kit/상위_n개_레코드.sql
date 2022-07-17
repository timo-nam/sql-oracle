/*
SELECT *
  FROM (
      SELECT name
        FROM animal_ins
        ORDER BY datetime
  )
  WHERE ROWNUM = 1;
*/

SELECT name
  FROM animal_ins
  ORDER BY datetime
--OFFSET 0 ROWS
  FETCH NEXT /*{FIRST | NEXT}*/ 1 ROWS /*{ROW | ROWS}*/ ONLY;
