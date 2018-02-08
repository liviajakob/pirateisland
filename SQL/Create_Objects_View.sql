CREATE VIEW PIRATE_ISLAND_VIEW
AS 
select b.LEVEL_ID,a.OBJECT_ID,c.FILL_NAME,d.TYPE_NAME,
	REPLACE(REPLACE(REPLACE(a.OBJECT.GET_WKT(),'POLYGON ((','M '),'))',' Z'),',',' L') as SVG_POLY
	from S1138056.PIRATE_OBJECTS a
	join S1138056.PIRATE_MAPPING b on a.OBJECT_ID = b.OBJECT_ID
	join S1138056.PIRATE_FILL c on a.FILL_ID = c.FILL_ID
	join S1138056.PIRATE_TYPES d on a.TYPE_ID = d.TYPE_ID
	where d.TYPE_NAME = 'island';
   
 