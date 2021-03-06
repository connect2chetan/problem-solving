SELECT 
CASE 
    WHEN P IS NULL THEN CONCAT (N,' Root')
    WHEN (SELECT COUNT(B.P) FROM BST B WHERE B.P=BST.N)>0 THEN CONCAT (BST.N,' Inner')
    ELSE CONCAT (N,' Leaf')    
END
FROM BST
ORDER BY N