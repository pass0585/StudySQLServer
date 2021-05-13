-- GROUP BY ROLLUP
WITH cte_summary(GRP, SUMM,DIV)
AS
(
	SELECT groupName AS GRP
		 , SUM(price * amount) AS SUMM
		 , GROUPING_ID(groupName) AS DIV
	 FROM buyTbl
	GROUP BY ROLLUP(groupName)
)
 SELECT 
	  , CASE div
        WHEN 0 THEN GRP
        WHEN 1 THEN '총합계' END AS [상품그룹]ROM cte_summary;