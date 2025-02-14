# Subscription

```php
$url = 'https://scrap.io/api/v1/subscription';

$headers = [
  'Authorization: Bearer xxxxxxxxxx'
];

$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

$response = curl_exec($curl);

curl_close($curl);

$json = json_decode($response);
```

```ruby
require 'httparty'
require 'json'

url = 'https://scrap.io/api/v1/subscription'
headers = {
  Authorization: 'Bearer xxxxxxxxxx',
}

response = HTTParty.get(url, headers: headers)

json = JSON.parse(response.body)
```

```python
import requests
import json
 
url = "https://scrap.io/api/v1/subscription"
 
headers = {
  "Authorization": "Bearer xxxxxxxxxx"
}

response = requests.post(url, headers=headers)
 
json = response.json()
```

```shell
curl "https://scrap.io/api/v1/subscription" \
  -H "Authorization: Bearer xxxxxxxxxx"
```

```javascript
const axios = require('axios')

const url = 'https://scrap.io/api/v1/subscription'

const headers = {
  Authorization: 'Bearer xxxxxxxxxx',
};

axios.get(url, { headers })
  .then((response) => {
    const json = response.data;
  });
```

> The above code returns JSON structured like this:

```json
{
    "plan": "Partner plan",
    "active": true,
    "on_trial": false,
    "pending_cancelation": false,
    "renewal_date": "2022-08-05T15:13:18.000000Z",
    "features": {
        "EXPORT_CREDITS": {
            "name": "Export credits",
            "consumed": 0,
            "remaining": 100000,
            "total": 100000
        },
        "SCRAPING_SPEED": {
            "name": "Scraping speed",
            "value": "Very high"
        },
        "SEARCH_CITY": {
            "name": "Search by city",
            "value": true
        },
        "SEARCH_ADMIN2_CODE": {
            "name": "Search by level 2 division",
            "value": true
        },
        "SEARCH_ADMIN1_CODE": {
            "name": "Search by level 1 division",
            "value": true
        },
        "SEARCH_WHOLE_COUNTRY": {
            "name": "Search on whole country",
            "value": true
        },
        "ESSENTIAL_SEARCH_FILTERS": {
            "name": "Essential search filters",
            "value": true
        },
        "ADVANCED_SEARCH_FILTERS": {
            "name": "Advanced search filters",
            "value": true
        },
        "GMAP_EXPORT_ADDITIONAL_FIELDS": {
            "name": "GMap additional fields in exports",
            "value": true
        },
        "WEB_EXPORT_ADDITIONAL_FIELDS": {
            "name": "Website additional fields in exports",
            "value": true
        },
        "API_ACCESS": {
            "name": "API Access",
            "value": true
        }
    }
}
```

Get subscription details and remaining credits.

**HTTP Request**

`GET https://scrap.io/api/v1/subscription`