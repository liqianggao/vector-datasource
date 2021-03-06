SELECT
    name,
    COALESCE("aerialway", "aeroway", "natural", "railway", "tourism") AS kind,
    way AS __geometry__,
    mz_id AS __id__

FROM planet_osm_point

WHERE
    mz_poi_level <= 14

ORDER BY __id__ ASC
