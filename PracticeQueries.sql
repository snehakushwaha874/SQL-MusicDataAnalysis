✅ Q1: Who is the senior-most employee based on job title?
SELECT FirstName, LastName, Title
FROM Employee
ORDER BY Title DESC
LIMIT 1;

✅ Q2: Which countries have the most invoices?
SELECT BillingCountry, COUNT(*) AS NumberOfInvoices
FROM Invoice
GROUP BY BillingCountry
ORDER BY NumberOfInvoices DESC;

✅ Q3: What are the top 3 values of total invoice?
SELECT Total
FROM Invoice
ORDER BY Total DESC
LIMIT 3;

✅ Q4: Which city has the best customers (i.e., highest total invoice sum)?
SELECT BillingCity, SUM(Total) AS TotalInvoiceAmount
FROM Invoice
GROUP BY BillingCity
ORDER BY TotalInvoiceAmount DESC
LIMIT 1;

✅ Q5: Who is the best customer (highest spender)?
SELECT c.CustomerId, c.FirstName, c.LastName, SUM(i.Total) AS TotalSpent
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
ORDER BY TotalSpent DESC
LIMIT 1;

✅ Q6: Write query to return the Email, First Name, Last Name, Genre of all Rock Music listeners. Return your list ordered alphabettically by email starting with A.
SELECT DISTINCT c.Email, c.FirstName, c.LastName, g.Name AS Genre
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
JOIN Track t ON il.TrackId = t.TrackId
JOIN Genre g ON t.GenreId = g.GenreId
WHERE g.Name = 'Rock'
ORDER BY c.Email ASC;
 
✅ Q7: Lets invite artist who have written the most rock music in our dataset. Write a query that returns the artist name and total track count of the top 10 rock bands.
SELECT ar.Name AS ArtistName, COUNT(t.TrackId) AS RockTrackCount
FROM Artist ar
JOIN Album al ON ar.ArtistId = al.ArtistId
JOIN Track t ON al.AlbumId = t.AlbumId
JOIN Genre g ON t.GenreId = g.GenreId
WHERE g.Name = 'Rock'
GROUP BY ar.ArtistId
ORDER BY RockTrackCount DESC
LIMIT 10;

✅ Q8: Return all the track names that have a song length longer than the average song length. Return the name and millisecond for ech track. Order by the song length with the longest songs listed first.
SELECT Name, Milliseconds
FROM Track
WHERE Milliseconds > (
    SELECT AVG(Milliseconds) FROM Track
)
ORDER BY Milliseconds DESC;

✅ Q9: How much has each customer spent on each artist?
SELECT 
    c.FirstName || ' ' || c.LastName AS CustomerName,
    ar.Name AS ArtistName,
    ROUND(SUM(il.UnitPrice * il.Quantity), 2) AS TotalSpent
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist ar ON al.ArtistId = ar.ArtistId
GROUP BY c.CustomerId, ar.ArtistId
ORDER BY TotalSpent DESC;
