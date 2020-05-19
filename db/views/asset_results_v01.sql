SELECT
  houses.id AS id,
  houses.owner AS owner,
  houses.address AS address,
  houses.sqmt AS sqmt,
  houses.price AS price,
  houses.created_at AS created_at,
  'houses' AS table_name
FROM houses

UNION

SELECT
  complex_buildings.id AS id,
  complex_buildings.owner AS owner,
  complex_buildings.address AS address,
  complex_buildings.sqmt AS sqmt,
  complex_buildings.price AS price,
  complex_buildings.created_at AS created_at,
  'complex_buildings' AS table_name
FROM complex_buildings

UNION

SELECT
  commercial_units.id AS id,
  commercial_units.owner AS owner,
  commercial_units.address AS address,
  commercial_units.sqmt AS sqmt,
  commercial_units.price AS price,
  commercial_units.created_at AS created_at,
  'commercial_units' AS table_name
FROM commercial_units

ORDER BY created_at DESC
