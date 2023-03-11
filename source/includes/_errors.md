# Errors

The Scrap.io API uses the following error codes:


Error Code | Meaning
---------- | -------
401 | Unauthorized -- Your API key is wrong, or not authorized to access this endpoint.
404 | Not Found -- The resource was not be found.
405 | Method Not Allowed -- You tried to access an endpoint with an invalid method.
422 | Unprocessable entity -- Your request is invalid.
429 | Too Many Requests -- You're making too many resquests! Slow down!
500 | Internal Server Error -- We had a problem with our server. Try again later.
503 | Service Unavailable -- We're temporarily offline for maintenance. Please try again later.
