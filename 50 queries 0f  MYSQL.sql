-- // leetcode 1- recycle and low fat products

SELECT product_id 
FROM Products 
WHERE low_fats = 'Y' AND recyclable = 'Y';


//leetcode article view 1 

select distinct author_id as id from Views
where author_id = viewer_id 
order by id;

//leetcode invalide tweet 
SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content)>15;

//leetcode 1378
# Write your MySQL query statement below
SELECT euni.unique_id, e.name 
FROM Employees e  
LEFT JOIN EmployeeUNI euni  
ON e.id = euni.id;
