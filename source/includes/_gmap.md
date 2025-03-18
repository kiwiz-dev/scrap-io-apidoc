# GMap

## Types

```php
$url = 'https://scrap.io/api/v1/gmap/types';

$params = [
  'search_term' => 'boulang',
  'locale' => 'fr'
];

$headers = [
  'Authorization: Bearer xxxxxxxxxx'
];

$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, $url . '?' . http_build_query($params));
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

$response = curl_exec($curl);

curl_close($curl);

$json = json_decode($response);
```

```ruby
require 'httparty'
require 'json'

url = 'https://scrap.io/api/v1/gmap/types'

params = {
  search_term: 'boulang',
  locale: 'fr'
}

headers = {
  Authorization: 'Bearer xxxxxxxxxx',
}

response = HTTParty.get(url, headers: headers, query: params)

json = JSON.parse(response.body)
```

```python
import requests
import json
 
url = "https://scrap.io/api/v1/gmap/types"

params = {
  "search_term": "boulang",
  "locale": "fr"
}
 
headers = {
  "Authorization": "Bearer xxxxxxxxxx"
}

response = requests.get(url, params=params, headers=headers)
 
json = response.json()
```

```shell
curl -G "https://scrap.io/api/v1/gmap/types" \
  -H "Authorization: Bearer xxxxxxxxxx" \
  -d "search_term=boulang" \
  -d "locale=fr"
```

```javascript
const axios = require('axios')

const url = 'https://scrap.io/api/v1/gmap/types'

const params = {
  search_term: 'boulang',
  locale: 'fr'
}

const headers = {
  headers: { Authorization: 'Bearer xxxxxxxxxx' },
}

axios.get(url, { params: params }, headers)
  .then((response) => {
    json = JSON.parse(response.data)  
  });
```

> The above code returns JSON structured like this:

```json
[
    {
        "id": "bakery",
        "text": "Boulangerie"
    },
    {
        "id": "wholesale-bakery",
        "text": "Grossiste en boulangerie"
    },
    {
        "id": "bakery-equipment",
        "text": "Équipement pour boulangerie"
    }
]
```

This endpoint allows you to search a Gmap type and get its id. Then you can use it in Gmap search endpoint.

You can search in any language (en and fr for now).

**HTTP Request**

`GET https://scrap.io/api/v1/gmap/types`

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ------- | -----------
search_term | | no | Term to search for
locale | en | no | Search locale


## Locations

```php
$url = 'https://scrap.io/api/v1/gmap/locations';

$params = [
  'country_code' => 'us',
  'type' => 'admin1',
  'search_term' => 'New',
];

$headers = [
  'Authorization: Bearer xxxxxxxxxx'
];

$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, $url . '?' . http_build_query($params));
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

$response = curl_exec($curl);

curl_close($curl);

$json = json_decode($response);
```

```ruby
require 'httparty'
require 'json'

url = 'https://scrap.io/api/v1/gmap/locations'

params = {
  country_code: 'us',
  type: 'admin1',
  search_term: 'New',
}

headers = {
  Authorization: 'Bearer xxxxxxxxxx',
}

response = HTTParty.get(url, headers: headers, query: params)

json = JSON.parse(response.body)
```

```python
import requests
import json
 
url = "https://scrap.io/api/v1/gmap/locations"

params = {
  "country_code": "us",
  "type": "admin1",
  "search_term": "New",
}
 
headers = {
  "Authorization": "Bearer xxxxxxxxxx"
}

response = requests.get(url, params=params, headers=headers)
 
json = response.json()
```

```shell
curl -G "https://scrap.io/api/v1/gmap/locations" \
  -H "Authorization: Bearer xxxxxxxxxx" \
  -d "country_code=us" \
  -d "type=admin1" \
  -d "search_term=New"
```

```javascript
const axios = require('axios')

const url = 'https://scrap.io/api/v1/gmap/locations'

const params = {
  country_code: 'us',
  type: 'admin1',
  search_term: 'New',
}

const headers = {
  headers: { Authorization: 'Bearer xxxxxxxxxx' },
}

axios.get(url, { params: params }, headers)
  .then((response) => {
    json = JSON.parse(response.data)  
  });
```

> The above code returns JSON structured like this:

```json
[
    {
        "id": "NH",
        "text": "New Hampshire"
    },
    {
        "id": "NJ",
        "text": "New Jersey"
    },
    {
        "id": "NM",
        "text": "New Mexico"
    },
    {
        "id": "NY",
        "text": "New York"
    }
]
```

This endpoint allows you to search for locations (admin1, admin2 or city) and retrieve its ids.

You can list all the admin1 areas in one country, all the admin2 areas in one admin1 area, search a city inside a country, etc.

Then, you can use the ID in the gmap search endpoint.

**HTTP Request**

`GET https://scrap.io/api/v1/gmap/locations`

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ------- | -----------
country_code | | yes | ISO Country code (FR,US, etc.)
type | | yes |  Type of entity to search for (admin1, admin2, city)
admin1_code | | no | Admin 1 code (if you want to restrict to a specific admin 1 division)
admin2_code | | no | Admin 2 code (if you want to restrict to a specific admin 2 division)
search_term | | no | Term to search for

## Place

```php
$url = 'https://scrap.io/api/v1/gmap/place';

$params = [
  'google_id' => '0x3e5f43348a67e24b:0xff45e502e1ceb7e2',
];

$headers = [
  'Authorization: Bearer xxxxxxxxxx'
];

$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, $url . '?' . http_build_query($params));
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

$response = curl_exec($curl);

curl_close($curl);

$json = json_decode($response);
```

```ruby
require 'httparty'
require 'json'

url = 'https://scrap.io/api/v1/gmap/place'

params = {
  google_id: '0x3e5f43348a67e24b:0xff45e502e1ceb7e2',
}

headers = {
  Authorization: 'Bearer xxxxxxxxxx',
}

response = HTTParty.get(url, headers: headers, query: params)

json = JSON.parse(response.body)
```

```python
import requests
import json
 
url = "https://scrap.io/api/v1/gmap/place"

params = {
  "google_id": "0x3e5f43348a67e24b:0xff45e502e1ceb7e2",
}
 
headers = {
  "Authorization": "Bearer xxxxxxxxxx"
}

response = requests.get(url, params=params, headers=headers)
 
json = response.json()
```

```shell
curl -G "https://scrap.io/api/v1/gmap/place" \
  -H "Authorization: Bearer xxxxxxxxxx" \
  -d "google_id=0x3e5f43348a67e24b:0xff45e502e1ceb7e2"
```

```javascript
const axios = require('axios')

const url = 'https://scrap.io/api/v1/gmap/place'

const params = {
  google_id: '0x3e5f43348a67e24b:0xff45e502e1ceb7e2',
}

const headers = {
  headers: { Authorization: 'Bearer xxxxxxxxxx' },
}

axios.get(url, { params: params }, headers)
  .then((response) => {
    json = JSON.parse(response.data)  
  });
```

> The above code returns JSON structured like this:

```json
{
    "meta": {
        "found": true,
        "status": "updating"
    },
    "data": {
        "google_id": "0x3e5f43348a67e24b:0xff45e502e1ceb7e2",
        "name": "Burj Khalifa",
        "types": [
            {
                "type": "landmark",
                "deleted": false,
                "is_main": true
            },
            {
                "type": "tourist-attraction",
                "deleted": false,
                "is_main": false
            }
        ],
        "is_closed": false,
        "descriptions": [
            "160-story skyscraper & observation deck",
            "Spired 828-meter skyscraper with a viewing deck, restaurant, hotel and offices and 11-hectare park."
        ],
        "website": "http://www.burjkhalifa.ae",
        "phone": "+971 4 888 8888",
        "phone_international": "+97148888888",
        "timezone": "Asia/Dubai",
        "location_full_address": "Burj Khalifa - 1 Sheikh Mohammed bin Rashid Blvd - Downtown Dubai - Dubai - United Arab Emirates",
        "location_borough": "Downtown Dubai",
        "location_street_1": "1 Sheikh Mohammed bin Rashid Blvd",
        "location_street_2": "1 Sheikh Mohammed bin Rashid Blvd",
        "location_city": null,
        "location_postal_code": null,
        "location_state": "Dubai",
        "location_latitude": "25.197197",
        "location_longitude": "55.2743764",
        "location_country_code": "AE",
        "location_admin1_code": "03",
        "location_admin2_code": null,
        "link": "https://www.google.com/maps/place/Burj+Khalifa/data=!4m2!3m1!1s0x3e5f43348a67e24b:0xff45e502e1ceb7e2!10m1!1e1",
        "place_id": "ChIJS-JnijRDXz4R4rfO4QLlRf8",
        "owner_name": "Burj Khalifa",
        "owner_id": "104965669872746574451",
        "price_range": null,
        "reviews_id": "-52384020103776286",
        "reviews_count": 106266,
        "reviews_rating": 4.7,
        "reviews_per_score": {
            "1": 3303,
            "2": 1183,
            "3": 2803,
            "4": 10414,
            "5": 88563
        },
        "photos_count": "377083+",
        "photos": {
            "0": "https://lh5.googleusercontent.com/p/AF1QipOCRDiPjJ0c7WKYsuiOF9WkCiXv8cQNp_YeLEZo",
            "2": "https://lh5.googleusercontent.com/p/AF1QipPEPJrgd49pNpmeBF3tvZTgut9SZ_q3K5tK1lDz"
        },
        "characteristics": {
            "accessibility": {
                "wheelchair-accessible-entrance": "has-wheelchair-accessible-entrance"
            }
        },
        "occupancy": {
            "monday": {
                "4 AM": "usually-not-busy",
                "5 AM": "usually-not-busy",
                "6 AM": "usually-not-busy",
                "7 AM": "usually-not-busy",
                "8 AM": "usually-not-too-busy",
                "9 AM": "usually-not-too-busy",
                "10 AM": "usually-a-little-busy",
                "11 AM": "usually-a-little-busy",
                "12 PM": "usually-as-busy-as-it-gets",
                "1 PM": "usually-as-busy-as-it-gets",
                "2 PM": "usually-as-busy-as-it-gets",
                "3 PM": "usually-as-busy-as-it-gets",
                "4 PM": "usually-as-busy-as-it-gets",
                "5 PM": "usually-as-busy-as-it-gets",
                "6 PM": "usually-as-busy-as-it-gets",
                "7 PM": "usually-as-busy-as-it-gets",
                "8 PM": "usually-as-busy-as-it-gets",
                "9 PM": "usually-a-little-busy",
                "10 PM": "usually-a-little-busy",
                "11 PM": "usually-not-too-busy",
                "12 AM": "usually-not-busy",
                "1 AM": "usually-not-busy",
                "2 AM": "usually-not-busy",
                "3 AM": "usually-not-busy"
            },
            "tuesday": {
                "4 AM": "usually-not-busy",
                "5 AM": "usually-not-busy",
                "6 AM": "usually-not-busy",
                "7 AM": "usually-not-too-busy",
                "8 AM": "usually-not-too-busy",
                "9 AM": "usually-not-too-busy",
                "10 AM": "usually-a-little-busy",
                "11 AM": "usually-a-little-busy",
                "12 PM": "usually-as-busy-as-it-gets",
                "1 PM": "usually-as-busy-as-it-gets",
                "2 PM": "usually-as-busy-as-it-gets",
                "3 PM": "usually-as-busy-as-it-gets",
                "4 PM": "usually-as-busy-as-it-gets",
                "5 PM": "usually-as-busy-as-it-gets",
                "6 PM": "usually-as-busy-as-it-gets",
                "7 PM": "usually-as-busy-as-it-gets",
                "8 PM": "usually-as-busy-as-it-gets",
                "9 PM": "usually-a-little-busy",
                "10 PM": "usually-a-little-busy",
                "11 PM": "usually-not-too-busy",
                "12 AM": "usually-not-too-busy",
                "1 AM": "usually-not-busy",
                "2 AM": "usually-not-busy",
                "3 AM": "usually-not-busy"
            },
            "wednesday": {
                "4 AM": "usually-not-busy",
                "5 AM": "usually-not-busy",
                "6 AM": "usually-not-busy",
                "7 AM": "usually-not-too-busy",
                "8 AM": "usually-not-too-busy",
                "9 AM": "usually-not-too-busy",
                "10 AM": "usually-a-little-busy",
                "11 AM": "usually-a-little-busy",
                "12 PM": "usually-a-little-busy",
                "1 PM": "usually-as-busy-as-it-gets",
                "2 PM": "usually-as-busy-as-it-gets",
                "3 PM": "usually-as-busy-as-it-gets",
                "4 PM": "usually-as-busy-as-it-gets",
                "5 PM": "usually-as-busy-as-it-gets",
                "6 PM": "usually-as-busy-as-it-gets",
                "7 PM": "usually-as-busy-as-it-gets",
                "8 PM": "usually-as-busy-as-it-gets",
                "9 PM": "usually-a-little-busy",
                "10 PM": "usually-not-too-busy",
                "11 PM": "usually-not-too-busy",
                "12 AM": "usually-not-busy",
                "1 AM": "usually-not-busy",
                "2 AM": "usually-not-busy",
                "3 AM": "usually-not-busy"
            },
            "thursday": {
                "4 AM": "usually-not-busy",
                "5 AM": "usually-not-busy",
                "6 AM": "usually-not-busy",
                "7 AM": "usually-not-too-busy",
                "8 AM": "usually-not-too-busy",
                "9 AM": "usually-not-too-busy",
                "10 AM": "usually-a-little-busy",
                "11 AM": "usually-a-little-busy",
                "12 PM": "usually-as-busy-as-it-gets",
                "1 PM": "usually-as-busy-as-it-gets",
                "2 PM": "usually-as-busy-as-it-gets",
                "3 PM": "usually-as-busy-as-it-gets",
                "4 PM": "usually-as-busy-as-it-gets",
                "5 PM": "usually-as-busy-as-it-gets",
                "6 PM": "usually-as-busy-as-it-gets",
                "7 PM": "usually-as-busy-as-it-gets",
                "8 PM": "usually-as-busy-as-it-gets",
                "9 PM": "usually-a-little-busy",
                "10 PM": "usually-a-little-busy",
                "11 PM": "usually-not-too-busy",
                "12 AM": "usually-not-too-busy",
                "1 AM": "usually-not-busy",
                "2 AM": "usually-not-busy",
                "3 AM": "usually-not-busy"
            },
            "friday": {
                "4 AM": "usually-not-busy",
                "5 AM": "usually-not-busy",
                "6 AM": "usually-not-busy",
                "7 AM": "usually-not-too-busy",
                "8 AM": "usually-not-too-busy",
                "9 AM": "usually-not-too-busy",
                "10 AM": "usually-a-little-busy",
                "11 AM": "usually-a-little-busy",
                "12 PM": "usually-a-little-busy",
                "1 PM": "usually-as-busy-as-it-gets",
                "2 PM": "usually-as-busy-as-it-gets",
                "3 PM": "usually-as-busy-as-it-gets",
                "4 PM": "usually-as-busy-as-it-gets",
                "5 PM": "usually-as-busy-as-it-gets",
                "6 PM": "usually-as-busy-as-it-gets",
                "7 PM": "usually-as-busy-as-it-gets",
                "8 PM": "usually-as-busy-as-it-gets",
                "9 PM": "usually-a-little-busy",
                "10 PM": "usually-a-little-busy",
                "11 PM": "usually-not-too-busy",
                "12 AM": "usually-not-too-busy",
                "1 AM": "usually-not-busy",
                "2 AM": "usually-not-busy",
                "3 AM": "usually-not-busy"
            },
            "saturday": {
                "4 AM": "usually-not-busy",
                "5 AM": "usually-not-busy",
                "6 AM": "usually-not-busy",
                "7 AM": "usually-not-too-busy",
                "8 AM": "usually-not-too-busy",
                "9 AM": "usually-not-too-busy",
                "10 AM": "usually-a-little-busy",
                "11 AM": "usually-a-little-busy",
                "12 PM": "usually-a-little-busy",
                "1 PM": "usually-as-busy-as-it-gets",
                "2 PM": "usually-as-busy-as-it-gets",
                "3 PM": "usually-as-busy-as-it-gets",
                "4 PM": "usually-as-busy-as-it-gets",
                "5 PM": "usually-as-busy-as-it-gets",
                "6 PM": "usually-as-busy-as-it-gets",
                "7 PM": "usually-as-busy-as-it-gets",
                "8 PM": "usually-as-busy-as-it-gets",
                "9 PM": "usually-a-little-busy",
                "10 PM": "usually-a-little-busy",
                "11 PM": "usually-not-too-busy",
                "12 AM": "usually-not-too-busy",
                "1 AM": "usually-not-busy",
                "2 AM": "usually-not-busy",
                "3 AM": "usually-not-busy"
            },
            "sunday": {
                "4 AM": "usually-not-busy",
                "5 AM": "usually-not-busy",
                "6 AM": "usually-not-busy",
                "7 AM": "usually-not-busy",
                "8 AM": "usually-not-too-busy",
                "9 AM": "usually-not-too-busy",
                "10 AM": "usually-not-too-busy",
                "11 AM": "usually-a-little-busy",
                "12 PM": "usually-a-little-busy",
                "1 PM": "usually-as-busy-as-it-gets",
                "2 PM": "usually-as-busy-as-it-gets",
                "3 PM": "usually-as-busy-as-it-gets",
                "4 PM": "usually-as-busy-as-it-gets",
                "5 PM": "usually-as-busy-as-it-gets",
                "6 PM": "usually-as-busy-as-it-gets",
                "7 PM": "usually-as-busy-as-it-gets",
                "8 PM": "usually-as-busy-as-it-gets",
                "9 PM": "usually-a-little-busy",
                "10 PM": "usually-not-too-busy",
                "11 PM": "usually-not-too-busy",
                "12 AM": "usually-not-busy",
                "1 AM": "usually-not-busy",
                "2 AM": "usually-not-busy",
                "3 AM": "usually-not-busy"
            }
        },
        "is_claimed": true,
        "working_hours": {
            "monday": "open-24-hours",
            "tuesday": "open-24-hours",
            "wednesday": "open-24-hours",
            "thursday": "open-24-hours",
            "friday": "open-24-hours",
            "saturday": "open-24-hours",
            "sunday": "open-24-hours"
        },
        "status": "pending",
        "scraped_at": "2022-06-12T12:43:50.000000Z",
        "first_seen_at": "2021-04-12T16:25:50.000000Z",
        "website_data": {
            "url": "http://www.burjkhalifa.ae",
            "domain": "burjkhalifa.ae",
            "is_responding": true,
            "is_empty": null,
            "title": "Buy Online & Book Now to Visit the Burj Khalifa | Burj Khalifa",
            "meta_keywords": null,
            "meta_description": "Burj Khalifa is the tallest tower in the world and it’s one of the top attractions to visit in Dubai. Visit our website and book your Burj Khalifa tickets!",
            "meta_og_title": "Buy Online & Book Now to Visit the Burj Khalifa | Burj Khalifa",
            "meta_og_image": null,
            "meta_generator": null,
            "lang": "/e",
            "contact_pages": [
                "http://www.burjkhalifa.ae/en/contact-us",
                "http://www.burjkhalifa.ae/ar/contact-us"
            ],
            "facebook": [
                "https://facebook.com/burjkhalifa"
            ],
            "youtube": [
                "https://youtube.com/channel/UCKvfrKJ2qRF4Aw487-dCzUw"
            ],
            "twitter": [
                "https://twitter.com/burjkhalifa"
            ],
            "instagram": [
                "https://instagram.com/burjkhalifa"
            ],
            "linkedin": null,
            "technologies": [
                "Google Tag Manager"
            ],
            "ad_pixels": [
                "Google Tag Manager"
            ],
            "emails": [
                {
                    "email": "reception@theburjclub.com",
                    "sources": [
                        "https://www.burjkhalifa.ae/en/the-burj-club/gym/",
                        "https://www.burjkhalifa.ae/en/the-burj-club/spa/",
                        "https://www.burjkhalifa.ae/en/the-burj-club/rooftop/"
                    ]
                },
                {
                    "email": "customer.privacy@emaar.ae",
                    "sources": [
                        "https://www.burjkhalifa.ae/en/privacy-policy/"
                    ]
                },
                {
                    "email": "artanddesign@burjkhalifa.ae",
                    "sources": [
                        "https://www.burjkhalifa.ae/en/open-call/"
                    ]
                },
                {
                    "email": "schools@emaar.ae",
                    "sources": [
                        "https://www.burjkhalifa.ae/en/schools/"
                    ]
                },
                {
                    "email": "info@atthetop.ae",
                    "sources": [
                        "https://www.burjkhalifa.ae/en/events/"
                    ]
                }
            ],
            "phones": [
                {
                    "phone": "+97148883900",
                    "sources": [
                        "https://www.burjkhalifa.ae/en/the-burj-club/gym/",
                        "https://www.burjkhalifa.ae/en/the-burj-club/spa/",
                        "https://www.burjkhalifa.ae/en/the-burj-club/rooftop/"
                    ]
                },
                {
                    "phone": "+971480036227",
                    "sources": [
                        "https://www.burjkhalifa.ae/en/privacy-policy/"
                    ]
                }
            ],
            "status": "completed",
            "scraped_at": "2022-06-12T12:48:07.000000Z"
        }
    }
}
```

This endpoint allows you to get all data related to a google place (by google_id or place_id).

<aside class="notice">
  Status can be either:
  <ul>
    <li><strong>updating:</strong> When the result is being updated.</li>
    <li><strong>completed:</strong> When the result is up-to-date.</li>
    <li><strong>incomplete:</strong> When you don't have enough credits to display the result.</li>
  </ul>
  If you want to get up-to-date data, you can make a first request to launch the update, and keep polling the URL (for example, every 10 seconds for 1 minute) until the status is completed.
</aside>

**HTTP Request**

`GET https://scrap.io/api/v1/gmap/place`

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ------- | -----------
google_id | | no | Google id (ex: 0xabc:0xdef)
place_id | | no |  Place id (ex: ChIabcDeFGhIJkLMnoPqR)
skip_data | 0 | no | Boolean (0 = false or 1 = true) to indicate that you want to skip the data part of the response. When the data is skipped, it won't deduct any export credit.
skip_blacklist |0 | no | Boolean (0 = false or 1 = true) to indicate that you want to skip the verification of potential blacklisted places.
blacklists | Verify all blacklists. | no | Array containing blacklist names. When specify, only the given blacklists will be verify.

<aside class="warning">
  You have to provide either a google_id or a place_id. And only one at a time.
</aside>

## Search

```php
$url = 'https://scrap.io/api/v1/gmap/search';

$params = [
  'country_code' => 'us',
  'admin1_code' => 'NY',
  'city' => 'New York',
  'type' => 'restaurant'
];

$headers = [
  'Authorization: Bearer xxxxxxxxxx'
];

$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, $url . '?' . http_build_query($params));
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

$response = curl_exec($curl);

curl_close($curl);

$json = json_decode($response);
```

```ruby
require 'httparty'
require 'json'

url = 'https://scrap.io/api/v1/gmap/search'

params = {
  country_code: 'us',
  admin1_code: 'NY',
  city: 'New York',
  type: 'restaurant'
}

headers = {
  Authorization: 'Bearer xxxxxxxxxx',
}

response = HTTParty.get(url, headers: headers, query: params)

json = JSON.parse(response.body)
```

```python
import requests
import json
 
url = "https://scrap.io/api/v1/gmap/search"

params = {
  "country_code": "us",
  "admin1_code": "NY",
  "city": "New York",
  "type": "restaurant"
}
 
headers = {
  "Authorization": "Bearer xxxxxxxxxx"
}

response = requests.get(url, params=params, headers=headers)
 
json = response.json()
```

```shell
curl -G "https://scrap.io/api/v1/gmap/search" \
  -H "Authorization: Bearer xxxxxxxxxx" \
  -d "country_code=us" \
  -d "admin1_code=NY" \
  -d "city=New York" \
  -d "type=restaurant"
```

```javascript
const axios = require('axios')

const url = 'https://scrap.io/api/v1/gmap/search'

const params = {
  country_code: 'us',
  admin1_code: 'NY',
  city: 'New York',
  type: 'restaurant'
}

const headers = {
  headers: { Authorization: 'Bearer xxxxxxxxxx' },
}

axios.get(url, { params: params }, headers)
  .then((response) => {
    json = JSON.parse(response.data)  
  });
```

> The above code returns JSON structured like this:

```json
{
    "meta": {
        "count": "4092",
        "status": "completed",
        "next_cursor": "eyJnbWFwX3BsYWNlX2lkIjo0NTE0NjQsIl9wb2ludHNUb05leHRJdGVtcyI6dHJ1ZX0",
        "previous_cursor": null,
        "per_page": 10,
        "has_more_pages": true
    },
    "data": [
        {
            "google_id": "0x89c259a17dedfa2b:0x6f033e0043942344",
            "name": "SUGARFISH by sushi nozawa",
            "types": [
                {
                    "type": "restaurant",
                    "deleted": false,
                    "is_main": true
                },
                {
                    "type": "sushi-restaurant",
                    "deleted": false,
                    "is_main": false
                }
            ],
            "is_closed": false,
            "descriptions": [
                "SUGARFISH, a food-centric full-service restaurant, features a unique omakase-style service based on Nozawa’s 50 plus years of experience in Japan and the US. The menu features only tradition-based sushi of the highest quality, offered in four \"Trust Me®\" options, as well as an array of a la carte sashimi, sushi, and hand rolls made with carefully sourced fish, warm and loosely-packed rice, and crisp nori. SUGARFISH has locations in Los Angeles and New York City. For more information follow SUGARFISH on Instagram, Facebook and Twitter.",
                "Acclaimed sushi & sake destination",
                "Celebrated local sushi chain serving traditional rolls & sake in a chic, intimate space."
            ],
            "website": "https://sugarfishsushi.com/locations/flatiron",
            "phone": "+1 347-705-8100",
            "phone_international": "+13477058100",
            "timezone": "America/New_York",
            "location_full_address": "SUGARFISH by sushi nozawa, 33 E 20th St, New York, NY 10003, United States",
            "location_borough": "Manhattan",
            "location_street_1": "33 E 20th St",
            "location_street_2": "33 E 20th St",
            "location_city": "New York",
            "location_postal_code": "10003",
            "location_state": "New York",
            "location_latitude": "40.739001",
            "location_longitude": "-73.9888323",
            "location_country_code": "US",
            "location_admin1_code": "NY",
            "location_admin2_code": "061",
            "link": "https://www.google.com/maps/place/SUGARFISH+by+sushi+nozawa/data=!4m2!3m1!1s0x89c259a17dedfa2b:0x6f033e0043942344!10m1!1e1",
            "place_id": "ChIJK_rtfaFZwokRRCOUQwA-A28",
            "owner_name": "SUGARFISH by sushi nozawa",
            "owner_id": "100376796693654910584",
            "price_range": "$$$",
            "reviews_id": "7999305533994836804",
            "reviews_count": 1401,
            "reviews_rating": 4.5,
            "reviews_per_score": {
                "1": 78,
                "2": 28,
                "3": 67,
                "4": 194,
                "5": 1034
            },
            "photos_count": "1179+",
            "photos": {
                "0": "https://lh5.googleusercontent.com/p/AF1QipND93_nJUKC8a41_q3hsBPb4-PAtQbV-rvH0riE",
                "2": "https://lh5.googleusercontent.com/p/AF1QipOnX8thoIENmUO6Soi9ev88XaSHO0bVZQVcWFNC"
            },
            "characteristics": {
                "service-options": {
                    "delivery": "offers-delivery",
                    "takeout": "offers-takeout",
                    "dine-in": "serves-dine-in"
                },
                "health-and-safety": {
                    "staff-required-to-disinfect-surfaces-between-visits": "staff-required-to-disinfect-surfaces-between-visits"
                },
                "highlights": {
                    "great-tea-selection": "has-great-tea-selection"
                },
                "popular-for": {
                    "lunch": "popular-for-lunch",
                    "dinner": "popular-for-dinner",
                    "solo-dining": "good-for-solo-dining"
                },
                "accessibility": {
                    "wheelchair-accessible-entrance": "has-wheelchair-accessible-entrance",
                    "wheelchair-accessible-parking-lot": "no-wheelchair-accessible-parking-lot"
                },
                "offerings": {
                    "alcohol": "serves-alcohol",
                    "beer": "serves-beer",
                    "healthy-options": "serves-healthy-options",
                    "small-plates": "serves-small-plates",
                    "wine": "serves-wine"
                },
                "dining-options": {
                    "lunch": "serves-lunch",
                    "dinner": "serves-dinner",
                    "seating": "has-seating"
                },
                "atmosphere": {
                    "casual": "casual",
                    "cozy": "cozy",
                    "upscale": "upscale"
                },
                "crowd": {
                    "tourists": "popular-with-tourists"
                },
                "planning": {
                    "usually-a-wait": "usually-has-a-wait"
                },
                "payments": {
                    "debit-cards": "accepts-debit-cards"
                }
            },
            "occupancy": {
                "monday": null,
                "tuesday": {
                    "6 a.m.": "closed",
                    "7 a.m.": "closed",
                    "8 a.m.": "closed",
                    "9 a.m.": "closed",
                    "10 a.m.": "closed",
                    "11 a.m.": "usually-not-too-busy",
                    "12 p.m.": "usually-not-too-busy",
                    "1 p.m.": "usually-not-too-busy",
                    "2 p.m.": "usually-a-little-busy",
                    "3 p.m.": "usually-a-little-busy",
                    "4 p.m.": "usually-a-little-busy",
                    "5 p.m.": "usually-a-little-busy",
                    "6 p.m.": "usually-as-busy-as-it-gets",
                    "7 p.m.": "usually-as-busy-as-it-gets",
                    "8 p.m.": "usually-a-little-busy",
                    "9 p.m.": "usually-a-little-busy",
                    "10 p.m.": "usually-not-too-busy",
                    "11 p.m.": "closed"
                },
                "wednesday": {
                    "6 a.m.": "closed",
                    "7 a.m.": "closed",
                    "8 a.m.": "closed",
                    "9 a.m.": "closed",
                    "10 a.m.": "closed",
                    "11 a.m.": "usually-not-too-busy",
                    "12 p.m.": "usually-not-too-busy",
                    "1 p.m.": "usually-not-too-busy",
                    "2 p.m.": "usually-a-little-busy",
                    "3 p.m.": "usually-a-little-busy",
                    "4 p.m.": "usually-a-little-busy",
                    "5 p.m.": "usually-a-little-busy",
                    "6 p.m.": "usually-as-busy-as-it-gets",
                    "7 p.m.": "usually-as-busy-as-it-gets",
                    "8 p.m.": "usually-a-little-busy",
                    "9 p.m.": "usually-a-little-busy",
                    "10 p.m.": "usually-not-too-busy",
                    "11 p.m.": "closed"
                },
                "thursday": {
                    "6 a.m.": "closed",
                    "7 a.m.": "closed",
                    "8 a.m.": "closed",
                    "9 a.m.": "closed",
                    "10 a.m.": "closed",
                    "11 a.m.": "usually-not-too-busy",
                    "12 p.m.": "usually-a-little-busy",
                    "1 p.m.": "usually-a-little-busy",
                    "2 p.m.": "usually-a-little-busy",
                    "3 p.m.": "usually-a-little-busy",
                    "4 p.m.": "usually-a-little-busy",
                    "5 p.m.": "usually-a-little-busy",
                    "6 p.m.": "usually-a-little-busy",
                    "7 p.m.": "usually-as-busy-as-it-gets",
                    "8 p.m.": "usually-a-little-busy",
                    "9 p.m.": "usually-a-little-busy",
                    "10 p.m.": "usually-not-too-busy",
                    "11 p.m.": "closed"
                },
                "friday": {
                    "6 a.m.": "closed",
                    "7 a.m.": "closed",
                    "8 a.m.": "closed",
                    "9 a.m.": "closed",
                    "10 a.m.": "closed",
                    "11 a.m.": "usually-not-too-busy",
                    "12 p.m.": "usually-a-little-busy",
                    "1 p.m.": "usually-a-little-busy",
                    "2 p.m.": "usually-a-little-busy",
                    "3 p.m.": "usually-a-little-busy",
                    "4 p.m.": "usually-a-little-busy",
                    "5 p.m.": "usually-a-little-busy",
                    "6 p.m.": "usually-as-busy-as-it-gets",
                    "7 p.m.": "usually-as-busy-as-it-gets",
                    "8 p.m.": "usually-as-busy-as-it-gets",
                    "9 p.m.": "usually-as-busy-as-it-gets",
                    "10 p.m.": "usually-a-little-busy",
                    "11 p.m.": "usually-not-too-busy"
                },
                "saturday": {
                    "6 a.m.": "closed",
                    "7 a.m.": "closed",
                    "8 a.m.": "closed",
                    "9 a.m.": "closed",
                    "10 a.m.": "closed",
                    "11 a.m.": "usually-not-too-busy",
                    "12 p.m.": "usually-not-too-busy",
                    "1 p.m.": "usually-a-little-busy",
                    "2 p.m.": "usually-a-little-busy",
                    "3 p.m.": "usually-a-little-busy",
                    "4 p.m.": "usually-a-little-busy",
                    "5 p.m.": "usually-a-little-busy",
                    "6 p.m.": "usually-as-busy-as-it-gets",
                    "7 p.m.": "usually-as-busy-as-it-gets",
                    "8 p.m.": "usually-a-little-busy",
                    "9 p.m.": "usually-a-little-busy",
                    "10 p.m.": "usually-a-little-busy",
                    "11 p.m.": "usually-not-too-busy"
                },
                "sunday": {
                    "6 a.m.": "closed",
                    "7 a.m.": "closed",
                    "8 a.m.": "closed",
                    "9 a.m.": "closed",
                    "10 a.m.": "closed",
                    "11 a.m.": "closed",
                    "12 p.m.": "usually-not-too-busy",
                    "1 p.m.": "usually-not-too-busy",
                    "2 p.m.": "usually-a-little-busy",
                    "3 p.m.": "usually-a-little-busy",
                    "4 p.m.": "usually-a-little-busy",
                    "5 p.m.": "usually-a-little-busy",
                    "6 p.m.": "usually-a-little-busy",
                    "7 p.m.": "usually-a-little-busy",
                    "8 p.m.": "usually-a-little-busy",
                    "9 p.m.": "usually-not-too-busy",
                    "10 p.m.": "usually-not-too-busy",
                    "11 p.m.": "closed"
                }
            },
            "is_claimed": true,
            "working_hours": {
                "monday": "closed",
                "tuesday": "1130am-11pm",
                "wednesday": "1130am-11pm",
                "thursday": "1130am-11pm",
                "friday": "1130am-12am",
                "saturday": "1130am-12am",
                "sunday": "12-11pm"
            },
            "status": "completed",
            "scraped_at": "2022-07-04T10:24:57.000000Z",
            "first_seen_at": "2021-04-12T16:25:50.000000Z",
            "website_data": {
                "url": "https://sugarfishsushi.com/locations/flatiron",
                "domain": "sugarfishsushi.com",
                "is_responding": true,
                "is_empty": null,
                "title": "Flatiron – SUGARFISH",
                "meta_keywords": null,
                "meta_description": null,
                "meta_og_title": null,
                "meta_og_image": null,
                "meta_generator": "WordPress 5.8.4",
                "lang": "en",
                "contact_pages": [
                    "https://sugarfishsushi.com/contact-us"
                ],
                "facebook": [
                    "https://facebook.com/sugarfishsushi"
                ],
                "youtube": null,
                "twitter": [
                    "https://twitter.com/sugarfish"
                ],
                "instagram": [
                    "https://instagram.com/sugarfishbynozawa"
                ],
                "linkedin": null,
                "technologies": [
                    "Apache",
                    "Google Analytics",
                    "WordPress",
                    "PHP",
                    "MySQL"
                ],
                "ad_pixels": [
                    "Google Tag Manager"
                ],
                "emails": [
                    {
                        "email": "flatiron@sugarfishsushi.com",
                        "sources": [
                            "https://sugarfishsushi.com/locations/flatiron"
                        ]
                    },
                    {
                        "email": "eat@sugarfishsushi.com",
                        "sources": [
                            "https://sugarfishsushi.com/locations/flatiron"
                        ]
                    }
                ],
                "phones": null,
                "status": "completed",
                "scraped_at": "2022-07-04T10:24:53.000000Z"
            }
        },
        ...
    ]
}
```

With this endpoint, you can search all the google places of a specific category in a specific location, and all their details.

We also provide powerful filters that allow you to fine-tune the search according to your needs, and get exactly the results you want. 

<aside class="notice">
    If the there are multiple pages, you can pass the cursor parameter to access next or previous page.
</aside>

<aside class="notice">
  Status can be either:
  <ul>
    <li><strong>updating:</strong> When the result is being updated.</li>
    <li><strong>completed:</strong> When the result is up-to-date.</li>
    <li><strong>incomplete:</strong> When you don't have enough credits to display the result.</li>
  </ul>
  If you want to get up-to-date data, you can make a first request to launch the update, and keep polling the URL (for example, every 10 seconds for 1 minute) until the status is completed.
</aside>

**HTTP Request**

`GET https://scrap.io/api/v1/gmap/search`

### Query Parameters

| Parameter | Type | Required | Options | Description |
|---|---|---|---|---|
| per_page | integer | no | 1, 10, 25 or 50 | Number of results per page. Default: 10 |
| skip_data | boolean | no | 0 = false / 1 = true | Indicate that you want to skip the data part of the response. When the data is skipped, it won't deduct any export credit. Default: 0 |
| skip_blacklist | boolean | no | 0 = false / 1 = true | Indicate that you want to skip the verification of potential blacklisted places. Default: 0 |
| blacklists | array | no | | Array containing blacklist names. When specify, only the given blacklists will be verify. Default: Verify all blacklists |
| cursor | string | no | | Cursor pagination |
| type | string | yes | | ID of Gmap type to search for |
| country_code | string | yes |  | 2 letters (ISO 3166-1 alpha-2) country code (FR, US, etc.) |
| admin1_code | string | no | Id from this [endpoint](https://apidoc.scrap.io/#locations) | Level 1 division for the country |
| admin2_code | string | no | Id from this [endpoint](https://apidoc.scrap.io/#locations) | Level 2 division for the country |
| city | string | no | Text from this [endpoint](https://apidoc.scrap.io/#locations) | City |
| postal_code | string | no | | Postal code to search for |
| gmap_is_main_type | boolean | no | 0 = false / 1 = true | Filter by main business type only |
| gmap_is_closed | boolean | no | 0 = false / 1 = true | Filter by permanently closed status |
| gmap_has_website | boolean | no | 0 = false / 1 = true | Filter by presence of website |
| gmap_has_phone | boolean | no | 0 = false / 1 = true | Filter by presence of phone number |
| gmap_is_claimed | boolean | no | 0 = false / 1 = true | Filter by claimed business status |
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
| website_has_emails | boolean | no | 0 = false / 1 = true | Filter by presence of email addresses on website |
| website_has_contact_pages | boolean | no | 0 = false / 1 = true | Filter by presence of contact pages |
| website_has_facebook | boolean | no | 0 = false / 1 = true | Filter by presence of Facebook link |
| website_has_instagram | boolean | no | 0 = false / 1 = true | Filter by presence of Instagram link |
| website_has_youtube | boolean | no | 0 = false / 1 = true | Filter by presence of YouTube link |
| website_has_twitter | boolean | no | 0 = false / 1 = true | Filter by presence of Twitter link |
| website_has_linkedin | boolean | no | 0 = false / 1 = true | Filter by presence of LinkedIn link |
| website_has_ad_pixels | boolean | no | 0 = false / 1 = true | Filter by presence of advertising pixels |
| website_has_title | boolean | no | 0 = false / 1 = true | Filter by presence of title |
| website_has_meta_keywords | boolean | no | 0 = false / 1 = true | Filter by presence of meta keywords |
| website_has_meta_description | boolean | no | 0 = false / 1 = true | Filter by presence of meta description |
| website_has_phones | boolean | no | 0 = false / 1 = true | Filter by presence of phones |

## Enrich

```php
$url = 'https://scrap.io/api/v1/gmap/enrich';

$params = [
  'domain' => 'sugarfishsushi.com'
];

$headers = [
  'Authorization: Bearer xxxxxxxxxx'
];

$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, $url . '?' . http_build_query($params));
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

$response = curl_exec($curl);

curl_close($curl);

$json = json_decode($response);
```

```ruby
require 'httparty'
require 'json'

url = 'https://scrap.io/api/v1/gmap/enrich'

params = {
  domain: 'sugarfishsushi.com'
}

headers = {
  Authorization: 'Bearer xxxxxxxxxx',
}

response = HTTParty.get(url, headers: headers, query: params)

json = JSON.parse(response.body)
```

```python
import requests
import json
 
url = "https://scrap.io/api/v1/gmap/enrich"

params = {
  "domain": "sugarfishsushi.com"
}
 
headers = {
  "Authorization": "Bearer xxxxxxxxxx"
}

response = requests.get(url, params=params, headers=headers)
 
json = response.json()
```

```shell
curl -G "https://scrap.io/api/v1/gmap/enrich" \
  -H "Authorization: Bearer xxxxxxxxxx" \
  -d "domain=sugarfishsushi.com"
```

```javascript
const axios = require('axios')

const url = 'https://scrap.io/api/v1/gmap/enrich'

const params = {
  domain: 'sugarfishsushi.com'
}

const headers = {
  headers: { Authorization: 'Bearer xxxxxxxxxx' },
}

axios.get(url, { params: params }, headers)
  .then((response) => {
    json = JSON.parse(response.data)  
  });
```

> The above code returns JSON structured like this:

```json
{
    "meta": {
        "count": "16",
        "status": "completed",
        "next_cursor": "eyJnbWFwX3BsYWNlX2lkIjo0NTE0NjQsIl9wb2ludHNUb05leHRJdGVtcyI6dHJ1ZX0",
        "previous_cursor": null,
        "per_page": 10,
        "has_more_pages": true
    },
    "data": [
        {
            "google_id": "0x89c259a17dedfa2b:0x6f033e0043942344",
            "name": "SUGARFISH by sushi nozawa",
            "types": [
                {
                    "type": "restaurant",
                    "deleted": false,
                    "is_main": true
                },
                {
                    "type": "sushi-restaurant",
                    "deleted": false,
                    "is_main": false
                }
            ],
            "is_closed": false,
            "descriptions": [
                "SUGARFISH, a food-centric full-service restaurant, features a unique omakase-style service based on Nozawa’s 50 plus years of experience in Japan and the US. The menu features only tradition-based sushi of the highest quality, offered in four \"Trust Me®\" options, as well as an array of a la carte sashimi, sushi, and hand rolls made with carefully sourced fish, warm and loosely-packed rice, and crisp nori. SUGARFISH has locations in Los Angeles and New York City. For more information follow SUGARFISH on Instagram, Facebook and Twitter.",
                "Acclaimed sushi & sake destination",
                "Celebrated local sushi chain serving traditional rolls & sake in a chic, intimate space."
            ],
            "website": "https://sugarfishsushi.com/locations/flatiron",
            "phone": "+1 347-705-8100",
            "phone_international": "+13477058100",
            "timezone": "America/New_York",
            "location_full_address": "SUGARFISH by sushi nozawa, 33 E 20th St, New York, NY 10003, United States",
            "location_borough": "Manhattan",
            "location_street_1": "33 E 20th St",
            "location_street_2": "33 E 20th St",
            "location_city": "New York",
            "location_postal_code": "10003",
            "location_state": "New York",
            "location_latitude": "40.739001",
            "location_longitude": "-73.9888323",
            "location_country_code": "US",
            "location_admin1_code": "NY",
            "location_admin2_code": "061",
            "link": "https://www.google.com/maps/place/SUGARFISH+by+sushi+nozawa/data=!4m2!3m1!1s0x89c259a17dedfa2b:0x6f033e0043942344!10m1!1e1",
            "place_id": "ChIJK_rtfaFZwokRRCOUQwA-A28",
            "owner_name": "SUGARFISH by sushi nozawa",
            "owner_id": "100376796693654910584",
            "price_range": "$$$",
            "reviews_id": "7999305533994836804",
            "reviews_count": 1401,
            "reviews_rating": 4.5,
            "reviews_per_score": {
                "1": 78,
                "2": 28,
                "3": 67,
                "4": 194,
                "5": 1034
            },
            "photos_count": "1179+",
            "photos": {
                "0": "https://lh5.googleusercontent.com/p/AF1QipND93_nJUKC8a41_q3hsBPb4-PAtQbV-rvH0riE",
                "2": "https://lh5.googleusercontent.com/p/AF1QipOnX8thoIENmUO6Soi9ev88XaSHO0bVZQVcWFNC"
            },
            "characteristics": {
                "service-options": {
                    "delivery": "offers-delivery",
                    "takeout": "offers-takeout",
                    "dine-in": "serves-dine-in"
                },
                "health-and-safety": {
                    "staff-required-to-disinfect-surfaces-between-visits": "staff-required-to-disinfect-surfaces-between-visits"
                },
                "highlights": {
                    "great-tea-selection": "has-great-tea-selection"
                },
                "popular-for": {
                    "lunch": "popular-for-lunch",
                    "dinner": "popular-for-dinner",
                    "solo-dining": "good-for-solo-dining"
                },
                "accessibility": {
                    "wheelchair-accessible-entrance": "has-wheelchair-accessible-entrance",
                    "wheelchair-accessible-parking-lot": "no-wheelchair-accessible-parking-lot"
                },
                "offerings": {
                    "alcohol": "serves-alcohol",
                    "beer": "serves-beer",
                    "healthy-options": "serves-healthy-options",
                    "small-plates": "serves-small-plates",
                    "wine": "serves-wine"
                },
                "dining-options": {
                    "lunch": "serves-lunch",
                    "dinner": "serves-dinner",
                    "seating": "has-seating"
                },
                "atmosphere": {
                    "casual": "casual",
                    "cozy": "cozy",
                    "upscale": "upscale"
                },
                "crowd": {
                    "tourists": "popular-with-tourists"
                },
                "planning": {
                    "usually-a-wait": "usually-has-a-wait"
                },
                "payments": {
                    "debit-cards": "accepts-debit-cards"
                }
            },
            "occupancy": {
                "monday": null,
                "tuesday": {
                    "6 a.m.": "closed",
                    "7 a.m.": "closed",
                    "8 a.m.": "closed",
                    "9 a.m.": "closed",
                    "10 a.m.": "closed",
                    "11 a.m.": "usually-not-too-busy",
                    "12 p.m.": "usually-not-too-busy",
                    "1 p.m.": "usually-not-too-busy",
                    "2 p.m.": "usually-a-little-busy",
                    "3 p.m.": "usually-a-little-busy",
                    "4 p.m.": "usually-a-little-busy",
                    "5 p.m.": "usually-a-little-busy",
                    "6 p.m.": "usually-as-busy-as-it-gets",
                    "7 p.m.": "usually-as-busy-as-it-gets",
                    "8 p.m.": "usually-a-little-busy",
                    "9 p.m.": "usually-a-little-busy",
                    "10 p.m.": "usually-not-too-busy",
                    "11 p.m.": "closed"
                },
                "wednesday": {
                    "6 a.m.": "closed",
                    "7 a.m.": "closed",
                    "8 a.m.": "closed",
                    "9 a.m.": "closed",
                    "10 a.m.": "closed",
                    "11 a.m.": "usually-not-too-busy",
                    "12 p.m.": "usually-not-too-busy",
                    "1 p.m.": "usually-not-too-busy",
                    "2 p.m.": "usually-a-little-busy",
                    "3 p.m.": "usually-a-little-busy",
                    "4 p.m.": "usually-a-little-busy",
                    "5 p.m.": "usually-a-little-busy",
                    "6 p.m.": "usually-as-busy-as-it-gets",
                    "7 p.m.": "usually-as-busy-as-it-gets",
                    "8 p.m.": "usually-a-little-busy",
                    "9 p.m.": "usually-a-little-busy",
                    "10 p.m.": "usually-not-too-busy",
                    "11 p.m.": "closed"
                },
                "thursday": {
                    "6 a.m.": "closed",
                    "7 a.m.": "closed",
                    "8 a.m.": "closed",
                    "9 a.m.": "closed",
                    "10 a.m.": "closed",
                    "11 a.m.": "usually-not-too-busy",
                    "12 p.m.": "usually-a-little-busy",
                    "1 p.m.": "usually-a-little-busy",
                    "2 p.m.": "usually-a-little-busy",
                    "3 p.m.": "usually-a-little-busy",
                    "4 p.m.": "usually-a-little-busy",
                    "5 p.m.": "usually-a-little-busy",
                    "6 p.m.": "usually-a-little-busy",
                    "7 p.m.": "usually-as-busy-as-it-gets",
                    "8 p.m.": "usually-a-little-busy",
                    "9 p.m.": "usually-a-little-busy",
                    "10 p.m.": "usually-not-too-busy",
                    "11 p.m.": "closed"
                },
                "friday": {
                    "6 a.m.": "closed",
                    "7 a.m.": "closed",
                    "8 a.m.": "closed",
                    "9 a.m.": "closed",
                    "10 a.m.": "closed",
                    "11 a.m.": "usually-not-too-busy",
                    "12 p.m.": "usually-a-little-busy",
                    "1 p.m.": "usually-a-little-busy",
                    "2 p.m.": "usually-a-little-busy",
                    "3 p.m.": "usually-a-little-busy",
                    "4 p.m.": "usually-a-little-busy",
                    "5 p.m.": "usually-a-little-busy",
                    "6 p.m.": "usually-as-busy-as-it-gets",
                    "7 p.m.": "usually-as-busy-as-it-gets",
                    "8 p.m.": "usually-as-busy-as-it-gets",
                    "9 p.m.": "usually-as-busy-as-it-gets",
                    "10 p.m.": "usually-a-little-busy",
                    "11 p.m.": "usually-not-too-busy"
                },
                "saturday": {
                    "6 a.m.": "closed",
                    "7 a.m.": "closed",
                    "8 a.m.": "closed",
                    "9 a.m.": "closed",
                    "10 a.m.": "closed",
                    "11 a.m.": "usually-not-too-busy",
                    "12 p.m.": "usually-not-too-busy",
                    "1 p.m.": "usually-a-little-busy",
                    "2 p.m.": "usually-a-little-busy",
                    "3 p.m.": "usually-a-little-busy",
                    "4 p.m.": "usually-a-little-busy",
                    "5 p.m.": "usually-a-little-busy",
                    "6 p.m.": "usually-as-busy-as-it-gets",
                    "7 p.m.": "usually-as-busy-as-it-gets",
                    "8 p.m.": "usually-a-little-busy",
                    "9 p.m.": "usually-a-little-busy",
                    "10 p.m.": "usually-a-little-busy",
                    "11 p.m.": "usually-not-too-busy"
                },
                "sunday": {
                    "6 a.m.": "closed",
                    "7 a.m.": "closed",
                    "8 a.m.": "closed",
                    "9 a.m.": "closed",
                    "10 a.m.": "closed",
                    "11 a.m.": "closed",
                    "12 p.m.": "usually-not-too-busy",
                    "1 p.m.": "usually-not-too-busy",
                    "2 p.m.": "usually-a-little-busy",
                    "3 p.m.": "usually-a-little-busy",
                    "4 p.m.": "usually-a-little-busy",
                    "5 p.m.": "usually-a-little-busy",
                    "6 p.m.": "usually-a-little-busy",
                    "7 p.m.": "usually-a-little-busy",
                    "8 p.m.": "usually-a-little-busy",
                    "9 p.m.": "usually-not-too-busy",
                    "10 p.m.": "usually-not-too-busy",
                    "11 p.m.": "closed"
                }
            },
            "is_claimed": true,
            "working_hours": {
                "monday": "closed",
                "tuesday": "1130am-11pm",
                "wednesday": "1130am-11pm",
                "thursday": "1130am-11pm",
                "friday": "1130am-12am",
                "saturday": "1130am-12am",
                "sunday": "12-11pm"
            },
            "status": "completed",
            "scraped_at": "2022-07-04T10:24:57.000000Z",
            "first_seen_at": "2021-04-12T16:25:50.000000Z",
            "website_data": {
                "url": "https://sugarfishsushi.com/locations/flatiron",
                "domain": "sugarfishsushi.com",
                "is_responding": true,
                "is_empty": null,
                "title": "Flatiron – SUGARFISH",
                "meta_keywords": null,
                "meta_description": null,
                "meta_og_title": null,
                "meta_og_image": null,
                "meta_generator": "WordPress 5.8.4",
                "lang": "en",
                "contact_pages": [
                    "https://sugarfishsushi.com/contact-us"
                ],
                "facebook": [
                    "https://facebook.com/sugarfishsushi"
                ],
                "youtube": null,
                "twitter": [
                    "https://twitter.com/sugarfish"
                ],
                "instagram": [
                    "https://instagram.com/sugarfishbynozawa"
                ],
                "linkedin": null,
                "technologies": [
                    "Apache",
                    "Google Analytics",
                    "WordPress",
                    "PHP",
                    "MySQL"
                ],
                "ad_pixels": [
                    "Google Tag Manager"
                ],
                "emails": [
                    {
                        "email": "flatiron@sugarfishsushi.com",
                        "sources": [
                            "https://sugarfishsushi.com/locations/flatiron"
                        ]
                    },
                    {
                        "email": "eat@sugarfishsushi.com",
                        "sources": [
                            "https://sugarfishsushi.com/locations/flatiron"
                        ]
                    }
                ],
                "phones": null,
                "status": "completed",
                "scraped_at": "2022-07-04T10:24:53.000000Z"
            }
        },
        ...
    ]
}
```

Our API includes a powerful feature that allows you to enrich a domain, URL, email, or phone number with data from Google Maps.

With this endpoint, you can retrieve the google places related to the data provided (domain, url, email, phone), and all their details. 

<aside class="notice">
    If the there are multiple pages, you can pass the cursor parameter to access next or previous page.
</aside>

<aside class="notice">
  Status can be either:
  <ul>
    <li><strong>updating:</strong> When the result is being updated.</li>
    <li><strong>completed:</strong> When the result is up-to-date.</li>
    <li><strong>incomplete:</strong> When you don't have enough credits to display the result.</li>
  </ul>
  If you want to get up-to-date data, you can make a first request to launch the update, and keep polling the URL (for example, every 10 seconds for 1 minute) until the status is completed.
</aside>

**HTTP Request**

`GET https://scrap.io/api/v1/gmap/enrich`

### Query Parameters

| Parameter | Default | Required | Description |
| --------- | ------- | -------- | ----------- |
| per_page | 10 | No | Number of results per page (1, 10, 25 or 50) |
| skip_data | 0 | No | Boolean (0 = false / 1 = true) to indicate whether to skip the data part of the response. When the data is skipped, it won't deduct any export credit. |
skip_blacklist |0 | no | Boolean (0 = false or 1 = true) to indicate that you want to skip the verification of potential blacklisted places.|
blacklists |Verify all blacklists. | no | Array containing blacklist names. When specify, only the given blacklists will be verify.|
| cursor | | No | Cursor pagination |
| url | | No | Exact URL mentioned on Google Maps |
| domain | | No | Domain mentioned in Google Maps |
| email | | No | Email found on the website of Google Place |
| phone | | No | Phone in international format associated with the Google Place (e.g.: 33139732419) |

<aside class="warning">
  You have to provide either an url, a domain, an email or a phone. And only one at a time.
</aside>