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

    text << "curl -X #{method} '#{url}' \\"
    text << "    -H 'Authorization: Bearer xxxxxxxxxx' \\"

    if headers
        headers.each do |key, value|
            text << "    -H '#{key}: #{value}' \\"
        end
    end

    if params && method == 'GET'
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

    headers.each do |key, value|
        text << "  '#{key}: #{value}',"
    end if headers

    text << "];"
    text << ""
    if params
        text << "params = ["

            params.each do |key, value|
                text << "  '#{key}' => #{value.inspect},"
            end

        text << "]"
    end

    text << "$curl = curl_init();"

    if method == "GET" && params
        text << "curl_setopt($curl, CURLOPT_URL, $url . '?' . http_build_query($params));"
    else
        text << "curl_setopt($curl, CURLOPT_URL, $url);"
    end
    
    if method == "POST"
        text << "curl_setopt($curl, CURLOPT_POST, true);"
        text << "curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($params));"
    end

    if method == "PATCH" || method == "DELETE"
        text << "curl_setopt($curl, CURLOPT_CUSTOMREQUEST, '#{method}');"
    end
    
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

def ruby_preview(url, method = 'get', params = nil, headers = [])
    text = []

    text << "require 'httparty'"
    text << "require 'json'"
    text << ""
    text << "url = '#{url}'"
    text << ""
    text << "headers = {"
    text << "  'Authorization' => 'Bearer xxxxxxxxxx',"

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
        text << "response = HTTParty.#{method}(url, headers: headers, body: params)" if method != 'get'
        text << "response = HTTParty.#{method}(url, headers: headers, query: params)" if method == 'get'
    else
        text << "response = HTTParty.#{method}(url, headers: headers)"
    end

    text << ""
    text << "json = JSON.parse(response.body)"

    "```ruby\n#{text.join("\n")}\n```"
end

def python_preview(url, method = 'get', params = nil, headers = [])
    text = []

    text << "import requests"
    text << "import json"
    text << ""
    
    text << "url = '#{url}'"
    text << ""
    
    text << "headers = {"
    text << "'Authorization': 'Bearer xxxxxxxxxx'"

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

    text << "response = requests.#{method}(url, headers=headers)" if !params
    text << "response = requests.#{method}(url, data=params, headers=headers)" if params
    
    text << "json = response.json()"

    "```python\n#{text.join("\n")}\n```"
end

def javascript_preview(url, method = nil, params = nil, headers = [])
    text = []

    text << "const axios = require('axios')"
    text << ""
    text << "const url = '#{url}'"
    text << ""
    text << "const headers = {"
    text << "  Authorization: 'Bearer xxxxxxxxxx',"

    headers.each do |key, value|
        text << "  #{key}: '#{value}',"
    end if headers

    text << "};"
    text << ""
    if params

        text << "const params = {"

            params.each do |key, value|
                text << "  #{key}: #{value.inspect},"
            end

        text << "}"

        if method == 'post' || method == 'patch'
            text << "axios.#{method}(url, params, { headers: headers })"
        else
            text << "axios.#{method}(url, { params: params, headers: headers })"
        end
    else
        text << "axios.#{method}(url, { headers: headers })"
    end
    text << ".then((response) => {"
    text << "    const json = response.data;"
    text << "    console.log(json);"
    text << "});"

    "```javascript\n#{text.join("\n")}\n```"
end