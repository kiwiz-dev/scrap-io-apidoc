---
title: API Reference

language_tabs: # must be one of https://github.com/rouge-ruby/rouge/wiki/List-of-supported-languages-and-lexers
  - shell: cURL
  - php: PHP
  - ruby: Ruby
  - python: Python
  - javascript: Javascript

meta:
  - name: description
    content: Documentation for the Scrap.io API

toc_footers:
  #- <a href='#'>Sign Up for a Developer Key</a>
  #- <a href='https://github.com/slatedocs/slate'>Documentation Powered by Slate</a>

includes:
  - errors

search: true

code_clipboard: true

meta:
  - name: description
    content: Documentation for the Kittn API
---

# Introduction

Welcome to Scrap.io API! You can use this API to access all our API endpoints, such as the Gmap Search API to search on Google Maps, or the Gmap Enrich API to look up Google Maps information related to a domain name, an email or a phone.

The API is organized around REST. All requests should be made over SSL. All request and response bodies, including errors, are encoded in JSON.

We also have some specific language examples to make integration easier. You can switch the programming language of the examples with the tabs in the top right.

**Base URL**

The base url for all endpoints is:

`GET https://scrap.io/api/v1/`

**Rate limit**

The rate limit is 300 requests per second.

# Authentication

> To authorize, use this code:

```php
$url = 'api_endpoint_here';

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

url = 'api_endpoint_here'
headers = {
  Authorization: 'Bearer xxxxxxxxxx',
}

response = HTTParty.get(url, headers: headers)

json = JSON.parse(response.body)
```

```python
import requests
import json
 
url = "api_endpoint_here"
 
headers = {
  "Authorization": "Bearer xxxxxxxxxx"
}

response = requests.post(url, headers=headers)
 
json = response.json()

```

```shell
# With curl, you can just pass the correct header with each request
curl "api_endpoint_here" \
  -H "Authorization: Bearer xxxxxxxxxx"
```

```javascript
const axios = require('axios')

const url = 'api_endpoint_here'

const headers = {
  headers: { Authorization: 'Bearer xxxxxxxxxx' },
}

axios.get(url, {}, headers)
  .then((response) => {
    json = JSON.parse(response.data)  
  })
```

> Make sure to replace `xxxxxxxxxx` with your API key.

Scrap.io uses API keys to allow access to the API. You can create a new API key in your [security options](https://scrap.io/app/user/security/api-token).

Scrap.io expects for the API key to be included in all API requests to the server as bearer token in a header that looks like the following:

`Authorization: Bearer xxxxxxxxxx`

<aside class="notice">
You must replace <code>xxxxxxxxxx</code> with your personal API key.
</aside>

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
# With curl, you can just pass the correct header with each request
curl "https://scrap.io/api/v1/subscription" \
  -H "Authorization: Bearer xxxxxxxxxx"
```

```javascript
const axios = require('axios')

const url = 'https://scrap.io/api/v1/subscription'

const headers = {
  headers: { Authorization: 'Bearer xxxxxxxxxx' },
}

axios.get(url, {}, headers)
  .then((response) => {
    json = JSON.parse(response.data)  
  })
```

> The above command returns JSON structured like this:

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

# GMap

## GMap types

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
# With curl, you can just pass the correct header with each request
curl "https://scrap.io/api/v1/subscription" \
  -H "Authorization: Bearer xxxxxxxxxx"
```

```javascript
const axios = require('axios')

const url = 'https://scrap.io/api/v1/subscription'

const headers = {
  headers: { Authorization: 'Bearer xxxxxxxxxx' },
}

axios.get(url, {}, headers)
  .then((response) => {
    json = JSON.parse(response.data)  
  })
```

> The above command returns JSON structured like this:

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

Search for a Gmap Type and retrieve its id.

**HTTP Request**

`GET https://scrap.io/api/v1/subscription/gmap/types`

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ------- | -----------
locale | en | no | Search locale

## Get a Specific Kitten

```ruby
require 'kittn'

api = Kittn::APIClient.authorize!('xxxxxxxxxx')
api.kittens.get(2)
```

```python
import kittn

api = kittn.authorize('xxxxxxxxxx')
api.kittens.get(2)
```

```shell
curl "http://example.com/api/kittens/2" \
  -H "Authorization: Bearer xxxxxxxxxx"
```

```javascript
const kittn = require('kittn');

let api = kittn.authorize('xxxxxxxxxx');
let max = api.kittens.get(2);
```

> The above command returns JSON structured like this:

```json
{
  "id": 2,
  "name": "Max",
  "breed": "unknown",
  "fluffiness": 5,
  "cuteness": 10
}
```

This endpoint retrieves a specific kitten.

<aside class="warning">Inside HTML code blocks like this one, you can't use Markdown, so use <code>&lt;code&gt;</code> blocks to denote code.</aside>

**HTTP Request**

`GET http://example.com/kittens/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the kitten to retrieve

## Delete a Specific Kitten

```ruby
require 'kittn'

api = Kittn::APIClient.authorize!('xxxxxxxxxx')
api.kittens.delete(2)
```

```python
import kittn

api = kittn.authorize('xxxxxxxxxx')
api.kittens.delete(2)
```

```shell
curl "http://example.com/api/kittens/2" \
  -X DELETE \
  -H "Authorization: Bearer xxxxxxxxxx"
```

```javascript
const kittn = require('kittn');

let api = kittn.authorize('xxxxxxxxxx');
let max = api.kittens.delete(2);
```

> The above command returns JSON structured like this:

```json
{
  "id": 2,
  "deleted" : ":("
}
```

This endpoint deletes a specific kitten.

**HTTP Request**

`DELETE http://example.com/kittens/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the kitten to delete

