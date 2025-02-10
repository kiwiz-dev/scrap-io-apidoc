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
curl "api_endpoint_here" \
  -H "Authorization: Bearer xxxxxxxxxx"
```

```javascript
const axios = require('axios')

const url = 'api_endpoint_here'

const headers = {
  Authorization: 'Bearer xxxxxxxxxx',
};

axios.get(url, { headers })
  .then((response) => {
    const json = response.data;
  });
```

> Make sure to replace `xxxxxxxxxx` with your API key.

Scrap.io uses API keys to allow access to the API. You can create a new API key in your [security options](https://scrap.io/app/user/security/api-token).

Scrap.io expects for the API key to be included in all API requests to the server as bearer token in a header that looks like the following:

`Authorization: Bearer xxxxxxxxxx`

<aside class="notice">
You must replace <code>xxxxxxxxxx</code> with your personal API key.
</aside>