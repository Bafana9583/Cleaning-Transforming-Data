/*

Cleaning Data In SQL Queiries

*/

Select *
From PortfolioProject.dbo.[Form Responses]

--------------------------------------------------------------------------

--Standard Date Format

Select Date, CONVERT (Date, Date)
From PortfolioProject.dbo.[Form Responses]


Update PortfolioProject.dbo.[Form Responses]
Set Date = CONVERT (Date, Date)


--Syntax to check if any of the columns and rows are completetly empty

Select *
From PortfolioProject.dbo.[Form Responses]
WHERE [Date] IS NULL
AND [Age] IS NULL
AND [Industry] IS NULL
AND [Annual Salary] IS NULL
AND [Currency] IS NULL
AND [Country of Employment] IS NULL
AND [State] IS NULL
AND [City You Work In] IS NULL
AND [Years of Work Experience] IS NULL
AND [Level of Education] = 'Not SPecified'
AND [Gender] = 'Other'
AND [Ethnicity] IS NULL

-----------------------------------------------------------------------------

--Search for certain Data depending on your project Questions

--1).

Select *
From PortfolioProject.dbo.[Form Responses]
Where [Country of Employment] = 'USA' 
OR    [Country of Employment] = 'United States'

--2).

Select *
From PortfolioProject.dbo.[Form Responses]
Where [Country of Employment] = 'United Kingdom' 
OR    [Country of Employment] = 'UK'


--3). 
Select *
From PortfolioProject.dbo.[Form Responses]
Where [Country of Employment] = 'Canada'

------------------------------------------------------------------------------

--Removing Unused Columns

Select *
From PortfolioProject.dbo.[Form Responses]

ALTER TABLE PortfolioProject.dbo.[Form Responses]
DROP COLUMN [If "Other," please indicate the currency here], [If your income needs additional context, please provide it here], [F19], [F20], [F21], [F22], [F23], [F24]

---------------------------------------------------------------------------------

--Replacing Nulls with Texts and Numbers

--1).

Select 
	[Additional Monetary Compensation]
From PortfolioProject.dbo.[Form Responses]

Update PortfolioProject.dbo.[Form Responses]
SET [Additional Monetary Compensation] = 0
WHERE [Additional Monetary Compensation] IS NULL;

--2).

Select 
	[Job Title Additional Context]
From PortfolioProject.dbo.[Form Responses]

Update PortfolioProject.dbo.[Form Responses]
SET [Job Title Additional Context] = 'None'
WHERE [Job Title Additional Context] is NULL;

--3).

Select 
	[State]
From PortfolioProject.dbo.[Form Responses]

Update PortfolioProject.dbo.[Form Responses]
SET [State] = 'Not Specified'
WHERE [State] is NULL;

--4)
Select 
	[Gender]
From PortfolioProject.dbo.[Form Responses]

Update PortfolioProject.dbo.[Form Responses]
SET [Gender] = 'Other or Prefer not to answer'
WHERE [Gender] is NULL;

--5)
Select 
	[Level of Education]
From PortfolioProject.dbo.[Form Responses]

Update PortfolioProject.dbo.[Form Responses]
SET [Level of Education] = 'Not Specified'
WHERE [Level of Education] is NULL;

--6).
Select 
	[Industry]
From PortfolioProject.dbo.[Form Responses]

Update PortfolioProject.dbo.[Form Responses]
SET [Industry] = 'Not Specified'
WHERE [Industry] is NULL;

--7).
Select 
	[Job title]
From PortfolioProject.dbo.[Form Responses]

Update PortfolioProject.dbo.[Form Responses]
SET [Job title] = 'Not Specified'
WHERE [Job title] is NULL;

--8).
Select 
	[Currency]
From PortfolioProject.dbo.[Form Responses]

Update PortfolioProject.dbo.[Form Responses]
SET [Currency] = 'Not Specified'
WHERE [Currency] is NULL;

--9).
Select 
	[Ethnicity]
From PortfolioProject.dbo.[Form Responses]

Update PortfolioProject.dbo.[Form Responses]
SET Ethnicity = 'Prefer Not To Say'
WHERE Ethnicity is NULL;

--10).
Select 
	[City You Work In]
From PortfolioProject.dbo.[Form Responses]

Update PortfolioProject.dbo.[Form Responses]
SET [City You Work In] = 'Not Specified'
WHERE [City You Work In] is NULL;

--11).
Select 
	[Country of Employment]
From PortfolioProject.dbo.[Form Responses]

Update PortfolioProject.dbo.[Form Responses]
SET [Country of Employment] = 'Not Specified'
WHERE [Country of Employment] is NULL;

--12).
Select 
	[Years of Work Experience]
From PortfolioProject.dbo.[Form Responses]

Update PortfolioProject.dbo.[Form Responses]
SET [Years of Work Experience] = 'Not Specified'
WHERE [Years of Work Experience] is NULL;

--13).
Select 
	[Years of Professional Experience Overall]
From PortfolioProject.dbo.[Form Responses]

Update PortfolioProject.dbo.[Form Responses]
SET [Years of Professional Experience Overall] = 'Not Specified'
WHERE [Years of Professional Experience Overall] is NULL;

------------------------------------------------------------------------------------------------