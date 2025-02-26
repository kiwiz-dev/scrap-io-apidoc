# Export

## All

<!--  PHP code -->
```php
$url = 'https://scrap.io/api/v1/exports?status=success&order_by=asc';

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

<!--  RUBY code -->
```ruby
require 'httparty'
require 'json'

url = 'https://scrap.io/api/v1/exports?status=success&order_by=asc'

headers = {
  Authorization: 'Bearer xxxxxxxxxx',
}

response = HTTParty.get(url, headers: headers)

json = JSON.parse(response.body)
```

<!--  PYTHON code -->
```python
import requests
import json
 
url = "https://scrap.io/api/v1/exports?status=success&order_by=asc"
 
headers = {
  "Authorization": "Bearer xxxxxxxxxx"
}

response = requests.get(url, headers=headers)
 
json = response.json()
```

<!--  SHELL code -->
```shell
curl 'https://scrap.io/api/v1/export?status=success&order_by=asc' \
    -H "Authorization: Bearer xxxxxxxxxxx"
```

<!--  JS code -->
```javascript
const axios = require('axios')

const url = 'https://scrap.io/api/v1/exports?status=success&order_by=asc'

const headers = {
  headers: { Authorization: 'Bearer xxxxxxxxxx' },
}

axios.get(url, headers)
  .then((response) => {
    json = JSON.parse(response.data)  
  });
```

> The above code returns JSON structured like this:

```json
{
    "data": [
        {
            "id": 1,
            "name": "My first export",
            "country": "FR",
            "type": "boat-rental-service",
            "search_params": {
                "type": "boat-rental-service",
                "country": "FR",
                "admin1": "93",
                "city": "Beaulieu-sur-Mer"
            },
            "status": "success",
            "advanced_fields": [],
            "exported_lines_limit": null,
            "exported_columns": [
                "google_id",
                "name"
            ],
            "prepared_rows_count": 17,
            "exported_csv_count": 17,
            "exported_xlsx_count": 17,
            "is_stopped": false,
            "has_been_downloaded": true,
            "credits_used": 0,
            "export_only_new_email": 0,
            "export_only_new_place": 0,
            "scraped_at": "2025-02-16T09:47:39.000000Z",
            "download_link": "https://scrap.io/app/export/6cedca670e0fd1809aca1b32df32e4c2f10b9ec6ef2f9c5e2a7b80508fdc6a7a/download/csv"
        },
        {
            "id": 2,
            "name": "Bar karaoké - France - Nouvelle-Aquitaine",
            "country": "FR",
            "type": "karaoke-bar",
            "search_params": {
                "type": "karaoke-bar",
                "country": "FR",
                "admin1": "75"
            },
            "status": "success",
            "advanced_fields": [],
            "exported_lines_limit": null,
            "exported_columns": [
                "google_id",
                "name"
            ],
            "prepared_rows_count": 10,
            "exported_csv_count": 10,
            "exported_xlsx_count": 10,
            "is_stopped": false,
            "has_been_downloaded": false,
            "credits_used": 0,
            "export_only_new_email": 0,
            "export_only_new_place": 0,
            "scraped_at": "2025-02-19T07:04:09.000000Z",
            "download_link": "https://scrap.io/app/export/d22e9717f0185d70848d2f7b75b1ced8a339ee4d4be92697f0cb5c4b6911a5f5/download/csv"
        },
    ],
    "links": {
        "first": "https://scrap.io/api/v1/exports?page=1",
        "last": "https://scrap.io/api/v1/exports?page=1",
        "prev": null,
        "next": null
    },
    "meta": {
        "current_page": 1,
        "from": 1,
        "last_page": 1,
        "links": [
            {
                "url": null,
                "label": "&laquo; Previous",
                "active": false
            },
            {
                "url": "https://scrap.io/api/v1/exports?page=1",
                "label": "1",
                "active": true
            },
            {
                "url": null,
                "label": "Next &raquo;",
                "active": false
            }
        ],
        "path": "https://scrap.io/api/v1/exports",
        "per_page": 25,
        "to": 2,
        "total": 2
    }
}
```

This endpoint allows you to get a paginated list of your exports.

<aside class="warning">
  We won't return deleted exports.
</aside>

### HTTP Request

`GET https://scrap.io/api/v1/exports`

### Query parameters

| Parameter | Type          | Default | Required | Description            | Options                                           |
|-----------|---------------|---------|----------|------------------------|---------------------------------------------------|
| search    | string        |         | no       | Search in export name  |                                                   |
| status    | string/array  |         | no       | Status of the export   | in_progress, pending, incomplete, success, error  |
| orderBy   | string        | desc    | no       | Sort by scraping_date  | asc, desc                                         |
| page      | integer       | 1       | no       | Get the results for the given page |                                       |