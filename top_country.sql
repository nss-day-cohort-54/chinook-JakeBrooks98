SELECT MAX(Total),
 Country
 FROM (

SELECT
    SUM(i.Total) Total, 
    i.BillingCountry Country
FROM Invoice i 
GROUP BY i.BillingCountry);