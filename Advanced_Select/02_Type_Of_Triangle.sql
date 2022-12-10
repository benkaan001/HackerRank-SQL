/*

Write a query identifying the type of each record in the
TRIANGLES table using its three side lengths.

Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  3 sides of equal length.
Isosceles: It's a triangle with  2 sides of equal length.
Scalene: It's a triangle with  3 sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.

*/

SELECT
CASE
    WHEN A > (B+C) OR B > (A+C) OR C > (A+B) THEN 'Not A Triangle' /* order matters */
    WHEN A=B AND A=C THEN 'Equilateral'
    WHEN (A=B OR A=C) AND B<>C THEN 'Isosceles'
    ELSE 'Scalene'
END AS text
FROM triangles;
