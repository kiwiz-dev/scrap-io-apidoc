def generate_all_previews(url, method = 'get', params = nil, headers = nil)
    output = ""
    output << shell_preview(url, method.upcase, params, headers) + "\n\n"
    output << php_preview(url, method.upcase, params, headers) + "\n\n"
    output << ruby_preview(url, method.downcase, params, headers) + "\n\n"
    output << python_preview(url, method, params, headers) + "\n\n"
    output << javascript_preview(url, method, params, headers)
    output
end

def shell_preview(url, method = 'GET', params = nil, headers = nil)
    text = []

    if method == 'GET'
        text << "curl -G '#{url}' \\"
    else
        text << "curl -X #{method} '#{url}' \\"
    end

    text << "    -H 'Authorization: Bearer xxxxxxxxxx' \\"

    if params && method != 'GET' && method != 'DELETE'
        text << "    -H 'Content-Type: application/json' \\"
    end

    if headers
        headers.each do |key, value|
            text << "    -H '#{key}: #{value}' \\"
        end
    end

    if params && (method == 'GET' || method == 'DELETE')
        params.each do |key, value|
            text << "    -d \"#{key}=#{value}\" \\"
        end
    elsif params
        text << "    -d '{"

        params.each_with_index do |(key, value), index|
            comma = index < params.size - 1 ? "," : ""
            text << "        \"#{key}\": #{value.inspect}#{comma}"
        end

        text << "    }' \\"
    end

    # Remove the trailing backslash from the last line
    text[-1] = text[-1].chomp(" \\")

    "```shell\n#{text.join("\n")}\n```"
end

def php_preview(url, method = 'GET', params = nil, headers = nil)
    text = []
    text << "$url = '#{url}';"
    text << ""
    text << "$headers = ["
    text << "  'Authorization: Bearer xxxxxxxxxx',"

    if params && method != 'GET' && method != 'DELETE'
        text << "  'Content-Type: application/json',"
    end

    headers.each do |key, value|
        text << "  '#{key}: #{value}',"
    end if headers

    text << "];"
    text << ""
    if params
        text << "$params = ["

        params.each do |key, value|
            text << "  '#{key}' => #{value.inspect},"
        end

        text << "];"
        text << ""
    end

    text << "$curl = curl_init();"

    text << "curl_setopt($curl, CURLOPT_URL, $url);" if !params
    text << "curl_setopt($curl, CURLOPT_URL, $url . '?' . http_build_query($params));" if params && (method == 'GET' || method == 'DELETE')
    text << "curl_setopt($curl, CURLOPT_POST, true);" if method == "POST"
    text << "curl_setopt($curl, CURLOPT_CUSTOMREQUEST, '#{method}');" if method != 'GET' && method != 'POST'
    text << "curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($params));" if params && method != 'GET' && method != 'DELETE'

    text << "curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);"
    text << "curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);"
    text << ""
    text << "$response = curl_exec($curl);"
    text << ""
    text << "curl_close($curl);"
    text << ""
    text << "$json = json_decode($response);"
    
    "```php\n#{text.join("\n")}\n```"
end

def ruby_preview(url, method = 'get', params = nil, headers = nil)
    text = []

    text << "require 'httparty'"
    text << "require 'json'"
    text << ""
    text << "url = '#{url}'"
    text << ""
    text << "headers = {"
    text << "  'Authorization' => 'Bearer xxxxxxxxxx',"

    if params && method != 'get' && method != 'delete'
        text << "  'Content-Type' => 'application/json',"
    end

    headers.each do |key, value|
        text << "  '#{key}' => #{value.inspect},"
    end if headers

    text << "}"
    text << ""

    if params
        text << "params = {"

        params.each do |key, value|
            text << "  '#{key}' => #{value.inspect},"
        end

        text << "}"
        text << ""
        text << "response = HTTParty.#{method}(url, headers: headers, body: params.to_json)" if method != 'get' && method != 'delete'
        text << "response = HTTParty.#{method}(url, headers: headers, query: params)" if method == 'get' || method == 'delete'
    else
        text << "response = HTTParty.#{method}(url, headers: headers)"
    end

    text << ""
    text << "json = JSON.parse(response.body)"

    "```ruby\n#{text.join("\n")}\n```"
end

def python_preview(url, method = 'get', params = nil, headers = nil)
    text = []

    text << "import requests"
    text << "import json"
    text << ""
    
    text << "url = '#{url}'"
    text << ""
    
    text << "headers = {"
    text << "  'Authorization': 'Bearer xxxxxxxxxx',"

    if params && method != 'get' && method != 'delete'
        text << "  'Content-Type': 'application/json',"
    end

    headers.each do |key, value|
        text << "  '#{key}': '#{value}',"
    end if headers

    text << "}"
    text << ""

    if params
        text << "params = {"

        params.each do |key, value|
            text << "  \"#{key}\": #{value.inspect},"
        end

        text << "}"
        text << ""
    end

    if params
        text << "response = requests.#{method}(url, params=params, headers=headers)" if method == 'get' || method == 'delete'
        text << "response = requests.#{method}(url, json=params, headers=headers)" if method != 'get' && method != 'delete'
    else
        text << "response = requests.#{method}(url, headers=headers)"
    end

    text << "json = response.json()"

    "```python\n#{text.join("\n")}\n```"
end

def javascript_preview(url, method = 'get', params = nil, headers = nil)
    text = []

    text << "const axios = require('axios')"
    text << ""
    text << "const url = '#{url}'"
    text << ""
    text << "const headers = {"
    text << "  'Authorization': 'Bearer xxxxxxxxxx',"

    if params && method != 'get' && method != 'delete'
        text << "  'Content-Type': 'application/json',"
    end

    headers.each do |key, value|
        text << "  '#{key}': '#{value}',"
    end if headers

    text << "};"
    text << ""
    if params

        text << "const params = {"

        params.each do |key, value|
            text << "  '#{key}': #{value.inspect},"
        end

        text << "}"
        text << ""

        if method == 'get' || method == 'delete'
            text << "axios.#{method}(url, { params: params, headers: headers })"
        else
            text << "axios.#{method}(url, params, { headers: headers })"
        end
    else
        text << "axios.#{method}(url, { headers: headers })"
    end
    text << ".then((response) => {"
    text << "    const json = response.data;"
    text << "});"

    "```javascript\n#{text.join("\n")}\n```"
end