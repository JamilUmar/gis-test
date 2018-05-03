1. The query in the file [understand.sql](understand.sql) In your own word explain what the query does. The use of sql related terms is required.
ANSWER: - The query is returning all rows from runners table based on Id condition that is not available inside           races table. The result is returned from top to bottom based on the name column.

2. Assume a schema of Emp ( Id, Name, DeptId ) , Dept ( Id, Name).

    If there are 10 records in the Emp table and 5 records in the Dept table, how many rows will be displayed in the result of the following SQL query:

    `Select * From Emp, Dept`

    Explain your answer.
    ANSWER :- Emp table is related to Dept table on DeptId so a total of 45rows are returned from the above sql query because for every record in emp table, all rows in the dept table are returned.



3. Given a table SALARIES, such as the one below, that has m = male and f = female values. Swap all f and m values (i.e., change all f values to m and vice versa) with a single update query and no intermediate temp table.

    | Id  | Name | Sex | Salary |
    | --- | ---- | --- | ------ |
    | 1   | A    | m   | 2500   |
    | 2   | B    | f   | 1500   |
    | 3   | C    | m   | 5500   |
    | 4   | D    | f   | 500    |

ANSWER: - UPDATE Salary Set Sex = 
Case Id
when 1 then 'f'
when 2 then 'm'
when 3 then 'f'
when 4 then 'm'
end
where Id in (1, 2, 3, 4)




4. Given these contents of the Customers table:

    | Id  | Name          | ReferredBy |
    | --- | ------------- | ---------- |
    | 1   | John Doe      | NULL       |
    | 2   | Jane Smith    | NULL       |
    | 3   | A nne Jenkins | 2          |
    | 4   | Eric Branford | NULL       |
    | 5   | Pat Richards  | 1          |
    | 6   | Alice Barnes  | 2          |

Here is a query written to return the list of customers not referred by Jane Smith:

SELECT Name FROM Customers WHERE ReferredBy <> 2;
What will be the result of the query? Why? What would be a better way to write it?
ANSWER:- The result will be that only Pat Richard is returned.
         This is because of the condition specified <> 2 and ofcourse null is not a value.
         To return customers not referred by Jane Smith, it's better to make condition on Name column. 
         We would write the query as:
         SELECT Name from Customers WHERE Name <> 'Jane Smith'