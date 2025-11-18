def generate_all_previews(url, method = 'get', params = nil, headers = [])
    output = ""
    output << shell_preview(url, method, params, headers) + "\n\n"
    output << php_preview(url, method.upcase, params, headers) + "\n\n"
    output << ruby_preview(url, method.downcase, params, headers) + "\n\n"
    output << python_preview(url, method, params, headers) + "\n\n"
    output << javascript_preview(url, method, params, headers)
    output
end

def shell_preview(url, method = nil, params = nil, headers = [])
    ""
end

def php_preview(url, method = GET, params = nil, headers = [])
    text = []
    text << "$url = '#{url}';"
    text << ""
    text << "$headers = ["
    text << "  'Authorization: Bearer xxxxxxxxxx',"

    for header in headers do
        text << "  #{header},"
    end

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

    for header in headers do
        text << "  #{header},"
    end

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

def python_preview(url, method = nil, params = nil, headers = [])
    ""
end

def javascript_preview(url, method = nil, params = nil, headers = [])
    ""
end