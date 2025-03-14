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
curl --location --request GET 'https://scrap-io.test/api/v1/exports' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer xxxxxxxxxxx'
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
    "meta": {
        "count": 2,
        "current_page": 1,
        "previous_page": null,
        "next_page": null,
        "per_page": 25,
        "has_more_pages": false
    },
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
}
```

This endpoint allows you to get a paginated list of your exports.

<aside class="warning">
  We won't return deleted exports.
</aside>

### HTTP Request

`GET https://scrap.io/api/v1/exports`

### Query parameters

| Parameter | Type | Default | Required | Options | Description |
|-----------|------|---------|----------|---------|-------------|
| search | string | | no | | Search in export name |
| status | array | | no | preparing-scraping, scraping, preparing-export, exporting-csv, exporting-xlsx, pending, incomplete, success, error | Status of the export |
| order_by | string | desc | no | asc, desc | Sort by scraping_date  |
| page | integer | 1 | no | | Get the results for the given page |


## Find

<!--  PHP code -->
```php
$url = 'https://scrap.io/api/v1/exports/2';

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

url = 'https://scrap.io/api/v1/exports/2'

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
 
url = "https://scrap.io/api/v1/exports/2"
 
headers = {
  "Authorization": "Bearer xxxxxxxxxx"
}

response = requests.get(url, headers=headers)
 
json = response.json()
```

<!--  SHELL code -->
```shell
curl --location --request GET 'https://scrap-io.test/api/v1/exports/2' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer xxxxxxxxxxx'
```

<!--  JS code -->
```javascript
const axios = require('axios')

const url = 'https://scrap.io/api/v1/exports/2'

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
    "download_link": "https://scrap-io.test/app/export/d22e9717f0185d70848d2f7b75b1ced8a339ee4d4be92697f0cb5c4b6911a5f5/download/csv"
}
```

This endpoint allows you to get one of your exports depending on the id.

### HTTP Request

`GET https://scrap.io/api/v1/exports/{id}`

## Create

```php
$url = 'https://scrap.io/api/v1/exports';

$params = [
    "name" => "My export name (1)",
    "country_code" => "FR",
    "type" => "karaoke-bar",
    "admin1_code" => "75",
    "exported_lines_limit" => 4,
    "exported_columns" => [
        "google_id", 
        "name"
    ],
    "gmap_price_range" => "$$",
    "website_has_instagram" => true
];

$headers = [
  'Authorization: Bearer xxxxxxxxxx'
];

$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_POST, true);
curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($params));
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

$response = curl_exec($curl);

curl_close($curl);

$json = json_decode($response);
```

```ruby
require 'httparty'
require 'json'

url = 'https://scrap.io/api/v1/exports'

params = {
    name: "My export name (1)",
    country_code: "FR",
    type: "karaoke-bar",
    admin1_code: "75",
    exported_lines_limit: 4,
    exported_columns: [
        "google_id", 
        "name"
    ],
    gmap_price_range: "$$",
    website_has_instagram: true
}

headers = {
  Authorization: 'Bearer xxxxxxxxxx',
}

response = HTTParty.post(url, headers: headers, body: params)

json = JSON.parse(response.body)
```

```python
import requests
import json
 
url = "https://scrap.io/api/v1/exports"
 
params = {
  "name": "My export name (1)",
    "country_code": "FR",
    "type": "karaoke-bar",
    "admin1_code": "75",
    "exported_lines_limit": 4,
    "exported_columns": [
        "google_id", 
        "name"
    ],
    "gmap_price_range": "$$",
    "website_has_instagram": True
}
 
headers = {
  "Authorization": "Bearer xxxxxxxxxx"
}

response = requests.post(url, data=params, headers=headers)
 
json = response.json()
```

```shell
curl --location --request POST 'https://scrap-io.test/api/v1/exports' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer xxxxxxxxxxx'
--data '{
    "name": "My export name (1)",
    "country_code": "FR",
    "type": "karaoke-bar",
    "admin1_code": "75",
    "exported_lines_limit": 4,
    "exported_columns": [
        "google_id", 
        "name"
    ],
    "gmap_price_range": "$$",
    "website_has_instagram": true
}'
```

```javascript
const axios = require('axios')

const url = 'https://scrap.io/api/v1/exports'

const params = {
    name: "My export name (1)",
    country_code: "FR",
    type: "karaoke-bar",
    admin1_code: "75",
    exported_lines_limit: 4,
    exported_columns: [
        "google_id", 
        "name"
    ],
    gmap_price_range: "$$",
    website_has_instagram: true
}

const headers = {
  headers: { Authorization: 'Bearer xxxxxxxxxx' },
}

axios.post(url, params, headers)
  .then((response) => {
    json = JSON.parse(response.data)  
  });
```

> The above code returns JSON structured like this:

```json
{
    "id": 3,
    "name": "My export name (1)",
    "country": "FR",
    "type": "karaoke-bar",
    "search_params": {
        "type": "karaoke-bar",
        "country": "FR",
        "admin1": "75"
    },
    "status": "pending",
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
    "download_link": ""
}
```

### HTTP Request

`POST https://scrap.io/api/v1/exports`

### Body parameters

| Parameter | Type | Required | Options | Description |
|---|---|---|---|---|
| name | string | yes if auto_name not present or false |  | The name of the export. Must be unique, min 3 char and max 255 char. |
| auto_name | boolean | yes if name not present |  | If set, we'll generate a name for you. |
| type | string | yes | Id from this [endpoint](https://apidoc.scrap.io/#types) | Type of place. |
| country_code | string | yes | Id from this [endpoint](https://apidoc.scrap.io/#locations) | Country. |
| admin1_code | string | no | Id from this [endpoint](https://apidoc.scrap.io/#locations) | Level 1 division for the country. |
| admin2_code | string | no | Id from this [endpoint](https://apidoc.scrap.io/#locations) | Level 2 division for the country. |
| city | string | no | Text from this [endpoint](https://apidoc.scrap.io/#locations) | City. |
| exported_lines_limit | integer | no |  | The maximum number of results wanted in the export. |
| export_only_new_place | boolean | no |  | Export only places not present in previous exports. |
| export_only_new_email | boolean | no |  | Export only places with email not already present in previous exports. |
| exported_columns | array | yes | See "Export columns" section below | Columns to include in the export file. Require at least one column. |
| gmap_is_main_type | boolean | no | | Filter by main business type only |
| gmap_is_closed | boolean | no | | Filter by permanently closed status |
| gmap_has_website | boolean | no | | Filter by presence of website |
| gmap_has_phone | boolean | no | | Filter by presence of phone number |
| gmap_is_claimed | boolean | no | | Filter by claimed business status |
| gmap_price_range | string | no | $, $$, $$$, $$$$ | Filter by price level |
| gmap_reviews_rating_gte | float | no | | Filter by rating greater than or equal to value |
| gmap_reviews_rating_gt | float | no | | Filter by rating greater than value |
| gmap_reviews_rating_lte | float | no | | Filter by rating less than or equal to value |
| gmap_reviews_rating_lt | float | no | | Filter by rating less than value |
| gmap_reviews_count_gte | integer | no | | Filter by number of reviews greater than or equal to value |
| gmap_reviews_count_gt | integer | no | | Filter by number of reviews greater than value |
| gmap_reviews_count_lte | integer | no | | Filter by number of reviews less than or equal to value |
| gmap_reviews_count_lt | integer | no | | Filter by number of reviews less than value |
| gmap_photos_count_gte | integer | no | | Filter by number of photos greater than or equal to value |
| gmap_photos_count_gt | integer | no | | Filter by number of photos greater than value |
| gmap_photos_count_lte | integer | no | | Filter by number of photos less than or equal to value |
| gmap_photos_count_lt | integer | no | | Filter by number of photos less than value |
| website_has_emails | boolean | no | | Filter by presence of email addresses on website |
| website_has_contact_pages | boolean | no | | Filter by presence of contact pages |
| website_has_facebook | boolean | no | | Filter by presence of Facebook link |
| website_has_instagram | boolean | no | | Filter by presence of Instagram link |
| website_has_youtube | boolean | no | | Filter by presence of YouTube link |
| website_has_twitter | boolean | no | | Filter by presence of Twitter link |
| website_has_linkedin | boolean | no | | Filter by presence of LinkedIn link |
| website_has_ad_pixels | boolean | no | | Filter by presence of advertising pixels |


**Export columns**

| Parameter | Description |
|---|---|
| google_id | Google id |
| name | Name |
| descriptions | Descriptions |
| is_closed | Is closed |
| main_type | Main type |
| all_types | Types |
| website | Website |
| phone | Phone |
| timezone | Timezone |
| location_address | Address |
| location_coordinates | Coordinates |
| link | Link |
| owner | Owner |
| place_id | Place id |
| email | Email |
| facebook_link | Facebook link |
| youtube_link | Youtube link |
| twitter_link | Twitter link |
| instagram_link | Instagram link |
| linkedin_link | Linkedin link |
| first_seen_at | Seen for the first time (date) |
| price_range | Price Range |
| reviews | Reviews |
| photos | Photos |
| occupancy | Occupancy |
| is_claimed | Is claimed |
| working_hours | Opening hours |
| characteristics | Characteristics |
| website_title | Website name |
| website_meta | Website meta |
| website_lang | Website language |
| all_emails | All emails |
| contact_pages | Contact pages |
| all_facebook_links | All facebook links |
| all_youtube_links | All youtube links |
| all_twitter_links | All twitter links |
| all_instagram_links | All instagram links |
| all_linkedin_links | All linkedin links |
| website_technologies | Website technologies |
| website_ad_pixels | Website pixel ad |

## Update

```php
$url = 'https://scrap.io/api/v1/exports/3';

$params = [
    "name" => "My new export name"
];

$headers = [
  'Authorization: Bearer xxxxxxxxxx'
];

$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_CUSTOMREQUEST, 'PATCH');
curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($params));
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

$response = curl_exec($curl);

curl_close($curl);

$json = json_decode($response);
```

```ruby
require 'httparty'
require 'json'

url = 'https://scrap.io/api/v1/exports/3'

params = {
    name: "My new export name",
}

headers = {
  Authorization: 'Bearer xxxxxxxxxx',
}

response = HTTParty.patch(url, headers: headers, body: params)

json = JSON.parse(response.body)
```

```python
import requests
import json
 
url = "https://scrap.io/api/v1/exports/3"
 
params = {
  "name": "My new export name",
}
 
headers = {
  "Authorization": "Bearer xxxxxxxxxx"
}

response = requests.patch(url, data=params, headers=headers)
 
json = response.json()
```

```shell
curl --location --request PATCH 'https://scrap-io.test/api/v1/exports/3' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer xxxxxxxxxxx'
--data '{
    "name": "My new export name",
}'
```

```javascript
const axios = require('axios')

const url = 'https://scrap.io/api/v1/exports/3'

const params = {
    name: "My new export name",
}

const headers = {
  headers: { Authorization: 'Bearer xxxxxxxxxx' },
}

axios.patch(url, params, headers)
  .then((response) => {
    json = JSON.parse(response.data)  
  });
```

> The above code returns JSON structured like this:

```json
{
    "id": 3,
    "name": "My new export name",
    "country": "FR",
    "type": "karaoke-bar",
    "search_params": {
        "type": "karaoke-bar",
        "country": "FR",
        "admin1": "75"
    },
    "status": "pending",
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
    "download_link": ""
}
```

This endpoint allows you to rename one of your exports.

### HTTP Request

`PATCH https://scrap.io/api/v1/exports/{id}`

### Body parameters

| Parameter | Type   | Required | Description                                 |
|-----------|--------|----------|---------------------------------------------|
| name      | string | yes      | The name of the export. Must be unique, min 3 char and max 255 char. |

## Delete (one)

<!--  PHP code -->
```php
$url = 'https://scrap.io/api/v1/exports/2';

$headers = [
  'Authorization: Bearer xxxxxxxxxx'
];

$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_CUSTOMREQUEST, 'DELETE');
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

url = 'https://scrap.io/api/v1/exports/2'

headers = {
  Authorization: 'Bearer xxxxxxxxxx',
}

response = HTTParty.delete(url, headers: headers)

json = JSON.parse(response.body)
```

<!--  PYTHON code -->
```python
import requests
import json
 
url = "https://scrap.io/api/v1/exports/2"
 
headers = {
  "Authorization": "Bearer xxxxxxxxxx"
}

response = requests.delete(url, headers=headers)
 
json = response.json()
```

<!--  SHELL code -->
```shell
curl --location --request DELETE 'https://scrap-io.test/api/v1/exports/2' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer xxxxxxxxxxx'
```

<!--  JS code -->
```javascript
const axios = require('axios')

const url = 'https://scrap.io/api/v1/exports/2'

const headers = {
  headers: { Authorization: 'Bearer xxxxxxxxxx' },
}

axios.delete(url, headers)
  .then((response) => {
    json = JSON.parse(response.data)  
  });
```

> The above code returns a 200 status code (OK).

This endpoint allows you to delete one of your exports.

### HTTP Request

`DELETE https://scrap.io/api/v1/exports/{id}`