-- Declare variables to store the input and output values
DECLARE @CustomerIDInput nvarchar(5)
DECLARE @AverageFreightOutput money

-- Set the input parameter value
SET @CustomerIDInput = 'VINET'

-- Execute the stored procedure
EXEC Freight_Average 
    @CustomerID = @CustomerIDInput,
    @AverageFreight = @AverageFreightOutput OUTPUT

-- Display the output parameter value
SELECT @AverageFreightOutput AS 'AverageFreight'