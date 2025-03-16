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


//1068. Product Sales Analysis I

SELECT p.product_name, s.year, s.price  
FROM Sales s  
JOIN Product p  
ON s.product_id = p.product_id;

//1068 product sales Analysis
# Write your MySQL query statement below
SELECT p.product_name, s.year, s.price  
FROM Sales s  
JOIN Product p  
ON s.product_id = p.product_id;

//1581 customer who visited but did not took any transaction
SELECT v.customer_id, COUNT(v.visit_id) AS count_no_trans 
from Visits v 
LEFT JOIN Transactions t 
ON v.visit_id = t.visit_id  
WHERE t.transaction_id IS NULL 
GROUP BY v.customer_id; 


//leetcode rising temprature 
SELECT today.id
FROM Weather yesterday 
CROSS JOIN Weather today

WHERE DATEDIFF(today.recordDate,yesterday.recordDate) = 1
    AND today.temperature > yesterday.temperature


    //leetcodeSELECT today.id
FROM Weather yesterday 
CROSS JOIN Weather today

WHERE DATEDIFF(today.recordDate,yesterday.recordDate) = 1
    AND today.temperature > yesterday.temperature
;

//leetcode 1661
# Write your MySQL query statement below
# Write your MySQL query statement below
SELECT Employee.name,Bonus.bonus FROM Employee 
LEFT JOIN Bonus ON Employee.empID = Bonus.empID
WHERE bonus < 1000 OR Bonus IS NULL ;

//leetcode 1280
# Write your MySQL query statement below
SELECT
    S.student_id
    ,S.student_name
    ,SU.subject_name
    ,COUNT(E.student_id) attended_exams
FROM Students S
CROSS JOIN Subjects SU
LEFT JOIN Examinations E
    ON S.student_id = E.student_id
    AND SU.subject_name = E.subject_name

GROUP BY S.student_id, S.student_name, SU.subject_name
ORDER BY S.student_id, S.student_name, SU.subject_name
;
//
leetcode 570

SELECT E1.name
FROM Employee E1
JOIN (
    SELECT managerId, COUNT(*) AS directReports
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(*) >= 5
) E2 ON E1.id = E2.managerId;

//14-02-2025
//leetcode 19354
SELECT A.user_id, 
       ROUND(IFNULL(AVG(action = 'confirmed'), 0), 2) AS confirmation_rate
FROM Signups AS A
LEFT JOIN Confirmations AS B ON A.user_id = B.user_id
GROUP BY A.user_id;

//LEETCODE 620 boring movie

SELECT id , movie , description , rating 
FROM cinema 
WHERE ID%2=1 && description != 'boring'
ORDER BY rating DESC

//leetcode 1251 
// average selling price
SELECT p.product_id, IFNULL(ROUND(SUM(units*price)/SUM(units),2),0) AS average_price
FROM Prices p LEFT JOIN UnitsSold u
ON p.product_id = u.product_id AND
u.purchase_date BETWEEN start_date AND end_date
group by product_id

//leetcode 1075 
//project employee 1 

SELECT p.project_id, ROUND(AVG(e.experience_years),2) AS average_years
FROM Project p 
LEFT JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id

//leetcode 1633
SELECT 
    contest_id, 
    ROUND(COUNT(DISTINCT user_id) * 100 / (SELECT COUNT(user_id) FROM Users), 2) AS percentage
FROM Register
GROUP BY contest_id
ORDER BY percentage DESC, contest_id;

//leetcode 1211 
// queries quality and percentage 

select query_name,round((sum(rating/position)/count(rating)),2) as quality, round((sum(rating<3)/(count(*)))*100,2) as poor_query_percentage
from Queries
group by query_name;
//
// leetcode 1147
SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
GROUP BY activity_date
HAVING (activity_date > "2019-06-27" AND activity_date <= "2019-07-27");

//leetcode 596
# Write your MySQL query statement below
select class
from Courses
group by class
having count(class)>=5

//leetcode 1070
# Write your MySQL query statement below
select product_id, year as first_year, quantity, price 
from sales where (product_id, year) in (
    select product_id, min(year)
    from sales
    group by product_id
)
//1731

select mgr.employee_id, mgr.name, COUNT(emp.employee_id) as reports_count, ROUND(AVG(emp.age)) as average_age
from employees emp join employees mgr
on emp.reports_to = mgr.employee_id
group by employee_id
order by employee_id

//lletcode 1729
select user_id, count(follower_id) followers_count
from Followers
group by user_id
order by user_id

//leetcode 1789
# Write your MySQL query statement below
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag='Y' OR 
    employee_id in
    (SELECT employee_id
    FROM Employee
    Group by employee_id
    having count(employee_id)=1)

    //leetcode 610
    # Using UNION approach
SELECT x, y, z, 'No' AS triangle 
FROM Triangle
WHERE x +y <= z OR x+z<=y OR y+z<=x
UNION
SELECT x, y, z, 'Yes' AS triangle 
FROM Triangle
WHERE x +y > z AND x+z>y AND y+z>x;

//leetcode 22 11 