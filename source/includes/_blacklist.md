# Blacklist

Our API includes a feature that allows you to add items to a blacklist by **email**, **domain**, **Google ID**, or **Place ID**. This ensures that these items will not be displayed in future requests and will not be counted towards your credits. 

This feature is particularly useful to avoid re-scraping the same results, and counting your credits again for the same data.

<aside class="warning">
  You can blacklist up to 10 million items.
</aside>

## List

```php
$url = 'https://scrap.io/api/v1/blacklist';

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

url = 'https://scrap.io/api/v1/blacklist'

headers = {
  Authorization: 'Bearer xxxxxxxxxx',
}

response = HTTParty.get(url, headers: headers)

json = JSON.parse(response.body)
```

```python
import requests
import json
 
url = "https://scrap.io/api/v1/blacklist"
 
headers = {
  "Authorization": "Bearer xxxxxxxxxx"
}

response = requests.get(url, headers=headers)
 
json = response.json()
```

```shell
curl "https://scrap.io/api/v1/blacklist" \
  -H "Authorization: Bearer xxxxxxxxxx"
```

```javascript
const axios = require('axios')

const url = 'https://scrap.io/api/v1/blacklist'

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
[
    {
        "list": "my-list-1",
        "nb": 2
    },
    {
        "list": "my-list-2",
        "nb": 1
    }
]
```

This endpoint allows you to get the list of all your blacklists.

**HTTP Request**

`GET https://scrap.io/api/v1/blacklist`

## Add

```php
$url = 'https://scrap.io/api/v1/blacklist/my-list-1';

$params = [
  'type' => 'domain',
  'data' => 'sugarfishsushi.com'
  # Or 'data' => ['sugarfishsushi.com', 'sugarfishsushi2.com']
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

url = 'https://scrap.io/api/v1/blacklist/my-list-1'

params = {
  type: 'domain',
  data: 'sugarfishsushi.com'
  # Or data: ['sugarfishsushi.com', 'sugarfishsushi2.com']
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
 
url = "https://scrap.io/api/v1/blacklist/my-list-1"
 
params = {
  "type": "domain",
  "data": "sugarfishsushi.com"
  # Or "data": ['sugarfishsushi.com', 'sugarfishsushi2.com']
}
 
headers = {
  "Authorization": "Bearer xxxxxxxxxx"
}

response = requests.post(url, data=params, headers=headers)
 
json = response.json()
```

```shell
curl -X POST "https://scrap.io/api/v1/blacklist/my-list-1" \
  -H "Authorization: Bearer xxxxxxxxxx" \
  -d "type=domain" \
  -d "data=sugarfishsushi.com"
  # Or -d "data=['sugarfishsushi.com', 'sugarfishsushi2.com']"
```

```javascript
const axios = require('axios')

const url = 'https://scrap.io/api/v1/blacklist/my-list-1'

const params = {
  type: 'domain',
  data: 'sugarfishsushi.com'
  // Or data: ['sugarfishsushi.com', 'sugarfishsushi2.com']
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
    "message": "All 1 entries successfully processed."
}
```

This endpoint allows you to add data to a blacklist (google_id, place_id, domain or email).

**HTTP Request**

`POST https://scrap.io/api/v1/blacklist/{list-name}`

### Query Parameters

Parameter | type |  Required | Description
---------| ------- | ------- | -----------
type | string | yes | Type of data to add to the blacklist (google_id,place_id,domain,email)
data | string or array | yes | Data to add to the blacklist. Must be a string "xxx1" or an array of strings ["xxx1", "xxx2"].

## Delete

```php
$url = 'https://scrap.io/api/v1/blacklist/my-list-1';

$headers = [
  'Authorization: Bearer xxxxxxxxxx'
];

$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_CUSTOMREQUEST, "DELETE");
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

$response = curl_exec($curl);

curl_close($curl);

$json = json_decode($response);
```

```ruby
require 'httparty'
require 'json'

url = 'https://scrap.io/api/v1/blacklist/my-list-1'

headers = {
  Authorization: 'Bearer xxxxxxxxxx',
}

response = HTTParty.delete(url, headers: headers)

json = JSON.parse(response.body)
```

```python
import requests
import json
 
url = "https://scrap.io/api/v1/blacklist/my-list-1"
 
headers = {
  "Authorization": "Bearer xxxxxxxxxx"
}

response = requests.delete(url, headers=headers)
 
json = response.json()
```

```shell
curl -X DELETE "https://scrap.io/api/v1/blacklist/my-list-1" \
  -H "Authorization: Bearer xxxxxxxxxx"
```

```javascript
const axios = require('axios')

const url = 'https://scrap.io/api/v1/blacklist/my-list-1'

const headers = {
  headers: { Authorization: 'Bearer xxxxxxxxxx' },
}

axios.delete(url, headers)
  .then((response) => {
    json = JSON.parse(response.data)  
  });
```

> The above code returns JSON structured like this:

```json
{
    "message": "success"
}
```

This endpoint allows you to delete a list.

**HTTP Request**

`DELETE https://scrap.io/api/v1/blacklist/{list-name}`