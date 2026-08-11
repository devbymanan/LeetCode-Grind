/* Write your T-SQL query statement below */
SELECT *,
CASE 
    WHEN dna_sequence LIKE 'ATG%' then 1
    ELSE 0
END AS has_start,
CASE 
    WHEN    
    dna_sequence LIKE '%TAA' OR
    dna_sequence LIKE '%TAG' OR
    dna_sequence LIKE '%TGA' 
    then 1
    ELSE 0
END AS has_stop,
CASE 
    WHEN dna_sequence LIKE '%ATAT%' then 1
    ELSE 0
END AS has_atat,
CASE 
    WHEN dna_sequence LIKE '%GGG%' then 1
    ELSE 0
END AS has_ggg
FROM Samples