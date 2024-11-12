# Export

## List

```shell
curl --location 'https://scrap-io.test/api/v1/export' \
--header 'Authorization: xxxxxxxxxxx'
```

```shell
curl --location 'https://scrap-io.test/api/v1/export?status=success&orderBy=asc' \
--header 'Authorization: xxxxxxxxxxx'
```

> The above code returns JSON structured like this:

```json
[
    {
        "name": "My export name",
        "country": "FR",
        "type": "export-type",
        "search_params": {...},
        "status": "success",
        "cursor": null,
        "filename": "exportFileName",
        "advanced_fields": [],
        "exported_lines_limit": 1,
        "exported_columns": [...],
        "prepared_rows_count": 1,
        "exported_csv_count": 1,
        "exported_xlsx_count": 1,
        "is_stopped": false,
        "has_been_downloaded": false,
        "credits_used": 0,
        "export_only_new_email": 0,
        "export_only_new_place": 0,
        "scraped_at": "2024-11-11T06:13:09.000000Z"
    },
    {
    "name": "My export name 2",
    "country": "FR",
    "type": "export-type",
    "search_params": {...},
    "status": "success",
    "cursor": null,
    "filename": "exportFileName2",
    "advanced_fields": [],
    "exported_lines_limit": 1,
    "exported_columns": [...],
    "prepared_rows_count": 1,
    "exported_csv_count": 1,
    "exported_xlsx_count": 1,
    "is_stopped": false,
    "has_been_downloaded": false,
    "credits_used": 0,
    "export_only_new_email": 0,
    "export_only_new_place": 0,
    "scraped_at": "2024-11-11T06:13:09.000000Z"
}
]
```

This endpoint allows you to get a list of your exports.

<aside class="warning">
  We don't return deleted exports.
</aside>

### HTTP Request

`GET https://scrap.io/api/v1/export`

### Query parameters

| Parameter | type   | Default | Required | Description                       | Options                                              |
|-----------|--------|---------|----------|-----------------------------------|------------------------------------------------------|
| status    | string |         | no       | Status of the export              | in_progress \ pending \ incomplete \ success \ error |
| orderBy   | string | desc    | no       | Sort the results by scraping_date | asc \ desc                                           |

## Find

```shell
curl --location 'https://scrap-io.test/api/v1/export/1' \
--header 'Authorization: xxxxxxxxxxx'
```

> The above code returns JSON structured like this:

```json
{
    "name": "My export name",
    "country": "FR",
    "type": "export-type",
    "search_params": {...},
    "status": "success",
    "cursor": null,
    "filename": "exportFileName",
    "advanced_fields": [],
    "exported_lines_limit": 1,
    "exported_columns": [...],
    "prepared_rows_count": 1,
    "exported_csv_count": 1,
    "exported_xlsx_count": 1,
    "is_stopped": false,
    "has_been_downloaded": false,
    "credits_used": 0,
    "export_only_new_email": 0,
    "export_only_new_place": 0,
    "scraped_at": "2024-11-11T06:13:09.000000Z"
}
```

This endpoint allows you to get one of your exports.

### HTTP Request

`GET https://scrap.io/api/v1/export/{id}`

## Rename

```shell
curl --location --request PATCH 'https://scrap-io.test/api/v1/export/1/rename' \
--header 'Content-Type: application/json' \
--header 'Authorization: xxxxxxxxxxx' \
--data '{
    "name": "My new export name"
}'
```

> The above code returns JSON structured like this:

```json
{
    "message": "Export renamed."
}
```

This endpoint allows you to rename one of your exports.

### HTTP Request

`PATCH https://scrap.io/api/v1/export/{id}/rename`

<aside class="warning">
  The export name must be unique.
</aside>

## Delete

```shell
curl --location --request DELETE 'https://scrap-io.test/api/v1/export' \
--header 'Content-Type: application/json' \
--header 'Authorization: xxxxxxxxxxx \'
--data '{
    "ids": [1, 2]
}'
```

> The above code returns JSON structured like this:

```json
{
    "message": "Export(s) deleted."
}
```

This endpoint allows you to delete one or multiple of your exports.

### HTTP Request

`DELETE https://scrap.io/api/v1/export`

### Body parameter

| Parameter | type  | Default | Required | Description                   |
|-----------|-------|---------|----------|-------------------------------|
| ids       | array |         | true     | A list of export id to delete |

## Errors