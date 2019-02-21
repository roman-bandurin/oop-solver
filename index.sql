/* методы с доступными методами с возвращаемыми методами */

DROP TABLE IF EXISTS nums;
CREATE TABLE nums(num integer primary key autoincrement);
INSERT INTO nums VALUES (0), (1);

DROP TABLE IF EXISTS methods;
CREATE TABLE methods(mid integer primary key autoincrement, mnum integer, mtext text, m1 integer not null,
  a1 integer not null, a2 integer not null, r1 integer not null, r2 integer not null, m2 integer not null,
  a3 integer not null, a4 integer not null, r3 integer not null, r4 integer not null, m3 integer not null,
  a5 integer not null, a6 integer not null, a7 integer not null, a8 integer not null,
  r5 integer not null, r6 integer not null, r7 integer not null, r8 integer not null,
  unique (m1, a1, a2, r1, r2, m2, a3, a4, r3, r4, m3, a5, a6, a7, a8, r5, r6, r7, r8)
  unique (mnum, m3, m2, m1, a8, a7, a6, a5, a4, a3, a2, a1, r8, r7, r6, r5, r4, r3, r2, r1)
);

INSERT INTO methods
SELECT
262144*n18.num+131072*n17.num+65536*n16.num+32768*n15.num+16384*n14.num+8192*n13.num+4096*n12.num+2048*n11.num+1024*n10.num+512*n9.num+256*n8.num+128*n7.num+64*n6.num+32*n5.num+16*n4.num+8*n3.num+4*n2.num+2*n1.num+n0.num as mid,
(n0.num + n5.num * 2 + n10.num * 4 + 1) as mnum,
'm' || (n0.num + n5.num * 2 + n10.num * 4 + 1) || '('
|| (case n1.num when 1 then 'm1 ' else '' end)
|| (case n2.num when 1 then 'm2 ' else '' end)
|| (case n6.num when 1 then 'm3 ' else '' end)
|| (case n7.num when 1 then 'm4 ' else '' end)
|| (case n11.num when 1 then 'm5 ' else '' end)
|| (case n12.num when 1 then 'm6 ' else '' end)
|| (case n13.num when 1 then 'm7 ' else '' end)
|| (case n14.num when 1 then 'm8 ' else '' end)
|| '): '
|| (case n3.num when 1 then 'm1 ' else '' end)
|| (case n4.num when 1 then 'm2 ' else '' end)
|| (case n8.num when 1 then 'm3 ' else '' end)
|| (case n9.num when 1 then 'm4 ' else '' end)
|| (case n15.num when 1 then 'm5 ' else '' end)
|| (case n16.num when 1 then 'm6 ' else '' end)
|| (case n17.num when 1 then 'm7 ' else '' end)
|| (case n18.num when 1 then 'm8 ' else '' end)
as mtext, n0.num as m1,
n1.num as a1, n2.num as a2, n3.num as r1, n4.num as r2, n5.num as m2,
n6.num as a3, n7.num as a4, n8.num as r3, n9.num as r4, n10.num as m3,
n11.num as a5, n12.num as a6, n13.num as a7, n14.num as a8,
n15.num as r5, n16.num as r6, n17.num as r7, n18.num as r8
FROM nums as n18
JOIN nums as n17
JOIN nums as n16
JOIN nums as n15
JOIN nums as n14
JOIN nums as n13
JOIN nums as n12
JOIN nums as n11
JOIN nums as n10
JOIN nums as n9
JOIN nums as n8
JOIN nums as n7
JOIN nums as n6
JOIN nums as n5
JOIN nums as n4
JOIN nums as n3
JOIN nums as n2
JOIN nums as n1
JOIN nums as n0;

DELETE FROM methods WHERE
NOT(((mnum = 1 AND a1 = 1 AND r1 = 0)
  OR (mnum = 2 AND a2 = 1 AND r2 = 0)
  OR (mnum = 3 AND a3 = 1 AND r3 = 0)
  OR (mnum = 4 AND a4 = 1 AND r4 = 0)
  OR (mnum = 5 AND a5 = 1 AND r5 = 0)
  OR (mnum = 6 AND a6 = 1 AND r6 = 0)
  OR (mnum = 7 AND a7 = 1 AND r7 = 0)
  OR (mnum = 8 AND a8 = 1 AND r8 = 0))
AND ((r1 = 0 OR (r1 = 1 AND a1 = 1))
  AND (r2 = 0 OR (r2 = 1 AND a2 = 1))
  AND (r3 = 0 OR (r3 = 1 AND a3 = 1))
  AND (r4 = 0 OR (r4 = 1 AND a4 = 1))
  AND (r5 = 0 OR (r5 = 1 AND a5 = 1))
  AND (r6 = 0 OR (r6 = 1 AND a6 = 1))
  AND (r7 = 0 OR (r7 = 1 AND a7 = 1))
  AND (r8 = 0 OR (r8 = 1 AND a8 = 1))));

SELECT * FROM methods LIMIT 108;

/* 1 */

DROP TABLE IF EXISTS nums;
CREATE TABLE nums(num integer);
INSERT INTO nums VALUES (0), (1);

DROP TABLE IF EXISTS nums1;
CREATE TABLE nums1(n1 integer, r1 integer);
INSERT INTO nums1
SELECT
n1.num as n1,
(n1.num > 0) as r1
FROM nums n1
WHERE n1.num = 1
ORDER BY n1.num DESC;

SELECT * FROM nums1;

/* 2 */

DROP TABLE IF EXISTS nums;
CREATE TABLE nums(num integer);
INSERT INTO nums VALUES (0), (1), (2);

DROP TABLE IF EXISTS nums2;
CREATE TABLE nums2(n1 integer, n2 integer, r1 integer, r2 integer);
INSERT INTO nums2
SELECT
n1.num as n1,
n2.num as n2,
(n1.num > 0) + (n2.num > 0) as r1,
(n1.num > 1) + (n2.num > 1) as r2
FROM nums n1
JOIN nums n2 ON (n2.num <= n1.num)
WHERE n1.num + n2.num = 2
ORDER BY n1.num DESC, n2.num DESC;

SELECT * FROM nums2;

/* 3 */

DROP TABLE IF EXISTS nums;
CREATE TABLE nums(num integer);
INSERT INTO nums VALUES (0), (1), (2), (3);

DROP TABLE IF EXISTS nums3;
CREATE TABLE nums3(n1 integer, n2 integer, n3 integer, r1 integer, r2 integer, r3 integer);
INSERT INTO nums3
SELECT
n1.num as n1,
n2.num as n2,
n3.num as n3,
(n1.num > 0) + (n2.num > 0) + (n3.num > 0) as r1,
(n1.num > 1) + (n2.num > 1) + (n3.num > 1) as r2,
(n1.num > 2) + (n2.num > 2) + (n3.num > 2) as r3
FROM nums n1
JOIN nums n2 ON (n2.num <= n1.num)
JOIN nums n3 ON (n3.num <= n2.num)
WHERE n1.num + n2.num + n3.num = 3
ORDER BY n1.num DESC, n2.num DESC, n3.num DESC;

SELECT * FROM nums3;

/* нахождение бинарных деревьев определенной длины */
DROP TABLE IF EXISTS nums;
CREATE TABLE nums(num integer);
INSERT INTO nums VALUES (0), (1);

SELECT n1.num as n01, n2.num as n02, n3.num as n03, n1.num + n2.num as r1, n3.num as r2
FROM nums n1
JOIN nums n2 ON ((n1.num = 1 AND n2.num = 1) OR n2.num = 0)
JOIN nums n3 ON ((n1.num = 1 AND n3.num = 1) OR n3.num = 0)
WHERE n1.num + n2.num + n3.num = 2;

DROP TABLE IF EXISTS nums;
CREATE TABLE nums(num integer);
INSERT INTO nums VALUES (0), (1);

SELECT n1.num as n01, n2.num as n02, n3.num as n03, n4.num as n04, n5.num as n05, n6.num as n06, n7.num as n07
FROM nums n1
JOIN nums n2 ON ((n1.num = 1 AND n2.num = 1) OR n2.num = 0)
JOIN nums n3 ON ((n1.num = 1 AND n3.num = 1) OR n3.num = 0)
JOIN nums n4 ON ((n2.num = 1 AND n4.num = 1) OR n4.num = 0)
JOIN nums n5 ON ((n2.num = 1 AND n5.num = 1) OR n5.num = 0)
JOIN nums n6 ON ((n3.num = 1 AND n6.num = 1) OR n6.num = 0)
JOIN nums n7 ON ((n3.num = 1 AND n7.num = 1) OR n7.num = 0)
WHERE n1.num + n2.num + n3.num + n4.num + n5.num + n6.num + n7.num = 3;

DROP TABLE IF EXISTS nums;
CREATE TABLE nums(num integer);
INSERT INTO nums VALUES (0), (1);

SELECT n1.num as n01, n2.num as n02, n3.num as n03, n4.num as n04, n5.num as n05, n6.num as n06, n7.num as n07,
n8.num as n08, n9.num as n09, n10.num as n10, n11.num as n11, n12.num as n12, n13.num as n13, n14.num as n14, n15.num as n15
FROM nums n1
JOIN nums n2 ON ((n1.num = 1 AND n2.num = 1) OR n2.num = 0)
JOIN nums n3 ON ((n1.num = 1 AND n3.num = 1) OR n3.num = 0)
JOIN nums n4 ON ((n2.num = 1 AND n4.num = 1) OR n4.num = 0)
JOIN nums n5 ON ((n2.num = 1 AND n5.num = 1) OR n5.num = 0)
JOIN nums n6 ON ((n3.num = 1 AND n6.num = 1) OR n6.num = 0)
JOIN nums n7 ON ((n3.num = 1 AND n7.num = 1) OR n7.num = 0)
JOIN nums n8 ON ((n4.num = 1 AND n8.num = 1) OR n8.num = 0)
JOIN nums n9 ON ((n4.num = 1 AND n9.num = 1) OR n9.num = 0)
JOIN nums n10 ON ((n5.num = 1 AND n10.num = 1) OR n10.num = 0)
JOIN nums n11 ON ((n5.num = 1 AND n11.num = 1) OR n11.num = 0)
JOIN nums n12 ON ((n6.num = 1 AND n12.num = 1) OR n12.num = 0)
JOIN nums n13 ON ((n6.num = 1 AND n13.num = 1) OR n13.num = 0)
JOIN nums n14 ON ((n7.num = 1 AND n14.num = 1) OR n14.num = 0)
JOIN nums n15 ON ((n7.num = 1 AND n15.num = 1) OR n15.num = 0)
WHERE n1.num + n2.num + n3.num + n4.num + n5.num + n6.num + n7.num + n8.num + n9.num + n10.num + n11.num + n12.num + n13.num + n14.num + n15.num = 4;

/* построение бинарного дерева */
DROP TABLE IF EXISTS nums0;
CREATE TABLE nums0(
  id integer,
  num integer
);
INSERT INTO nums0 VALUES (1, 1), (2, 0), (3, 1), (4, 0), (5, 0), (6, 0), (7, 1), (8, 0), (9, 0), (10, 0), (11, 0), (12, 0), (13, 0), (14, 0), (15, 1);

WITH RECURSIVE
  tree (id, num, level) AS (
    VALUES(1, 1, 0)
    UNION ALL
	SELECT n.id, n.num, t.level + 1
	FROM tree t
	JOIN nums0 n ON (n.id = (t.id * 2) OR n.id = ((t.id * 2) + 1))
	ORDER BY 3 DESC
  )
SELECT substr('          ', 1, level * 2) || '|-' || num || '  ' as num FROM tree;

/* бинарное дерево */
DROP TABLE IF EXISTS nums;
CREATE TABLE nums(
  id integer,
  num integer
);
INSERT INTO nums VALUES (1, 1), (2, 1), (3, 1), (4, 0), (5, 1), (6, 0), (7, 0), (8, 0), (9, 0), (10, 1), (11, 1), (12, 0), (13, 0), (14, 0), (15, 0);

/* левое-правое дерево по нему */
DROP TABLE IF EXISTS nums2;
CREATE TABLE nums2(
  id integer,
  level integer,
  parent integer
);
INSERT INTO nums2
WITH RECURSIVE
  tree (id, level, parent) AS (
    VALUES (0, 0, 0), (1, 1, 0)
    UNION ALL
	SELECT n.id,
	  (case n.id when (t.id * 2) then t.level + 1 else t.level end) as level,
	  (case n.id when (t.id * 2) then t.id else t.parent end) as parent
	FROM tree t
	JOIN nums n ON (n.id = (t.id * 2) OR n.id = ((t.id * 2) + 1))
	WHERE t.id <> 0 AND n.num = 1
	ORDER BY 3 DESC
  )
SELECT id, level, parent
FROM tree;

/* ранг узла */
DROP TABLE IF EXISTS nums3;
CREATE TABLE nums3(
  id integer,
  parent integer,
  id2 integer
);
INSERT INTO nums3
WITH RECURSIVE
  tree (id, parent, id2) AS (
    SELECT id, parent, id
	FROM nums2
    UNION ALL
	SELECT n.id, n.parent, t.id2
	FROM tree t
	JOIN nums2 n ON (t.parent = n.id)
	WHERE t.id <> 0
  )
SELECT id, parent, id2
FROM tree
ORDER BY id;

SELECT * FROM nums3;

/* nums2 с рангами узлов */
SELECT n2.*, n3.cnt
FROM nums2 n2
JOIN (SELECT id, COUNT(id2) as cnt FROM nums3 GROUP BY id) n3 ON (n2.id = n3.id);

/* nums2 с композициями узлов */
SELECT n2.*, group_concat(ifnull(n3.cnt, 0), ', ') as `partitions`
FROM nums2 n2
LEFT JOIN (SELECT id, parent, COUNT(id2) as cnt FROM nums3 GROUP BY id) n3 ON (n2.id = n3.parent AND n2.id <> n3.id)
GROUP BY n2.id
ORDER BY n2.id, n3.cnt DESC;

/* nums2 с разбиениями узлов */
SELECT *, group_concat(cnt, ', ') as `partitions`
FROM (
 SELECT n2.*, ifnull(n3.cnt, 0) as cnt
 FROM nums2 n2
 LEFT JOIN (SELECT id, parent, COUNT(id2) as cnt FROM nums3 GROUP BY id) n3 ON (n2.id = n3.parent AND n2.id <> n3.id)
 ORDER BY n2.id, ifnull(n3.cnt, 0) DESC
)
GROUP BY id;

/* дерево nums2 с рангами узлов */
SELECT substr('          ', 1, n2.level * 2) || '|-' || n2.id || '(' || n3.cnt || ')' || '  ' as num
FROM nums2 n2
JOIN (SELECT id, COUNT(id2) as cnt FROM nums3 GROUP BY id) n3 ON (n2.id = n3.id);

/* дерево nums2 с композициями узлов */
SELECT substr('          ', 1, n2.level * 2) || '|-' || n2.id || '(' || n3.partitions || ')' || '  ' as num
FROM nums2 n2
JOIN (
  SELECT n2.*, group_concat(ifnull(n3.cnt, 0), ', ') as `partitions`
  FROM nums2 n2
  LEFT JOIN (SELECT id, parent, COUNT(id2) as cnt FROM nums3 GROUP BY id) n3 ON (n2.id = n3.parent AND n2.id <> n3.id)
  GROUP BY n2.id
  ORDER BY n2.id, n3.cnt DESC
) n3 ON (n2.id = n3.id);

/* дерево nums2 с композициями узлов */
SELECT substr('          ', 1, n2.level * 2) || '|-' || n2.id || '(' || n3.partitions || ')' || '  ' as num
FROM nums2 n2
JOIN (
  SELECT *, group_concat(cnt, ', ') as `partitions`
  FROM (
   SELECT n2.*, ifnull(n3.cnt, 0) as cnt
   FROM nums2 n2
   LEFT JOIN (SELECT id, parent, COUNT(id2) as cnt FROM nums3 GROUP BY id) n3 ON (n2.id = n3.parent AND n2.id <> n3.id)
   ORDER BY n2.id, ifnull(n3.cnt, 0) DESC
  )
  GROUP BY id
) n3 ON (n2.id = n3.id);

SELECT parent, id FROM (SELECT id as parent, id2 as id FROM nums3) WHERE parent <> id;
