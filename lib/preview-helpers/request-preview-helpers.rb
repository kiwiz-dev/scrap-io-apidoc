def shell_preview
end

def php_preview(url, method = nil, params = nil, headers = [])
    text = []
    text << "$url = '#{url}';"
    text << ""
    text << "$headers = ["
    text << "  'Authorization: Bearer xxxxxxxxxx'"

    for header in headers do
        text << "  #{header}"
    end

    text << "];"
    text << ""
    text << "$params = #{params};" if params
    text << "" if params
    text << "$curl = curl_init();"

    if method != "POST" && params
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

def ruby_preview
end

def python_preview
end

def javascript_preview
end