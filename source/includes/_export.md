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

| Parameter | Type   | Default | Required | Description                       | Options                                              |
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

## Create

### HTTP Request

`POST https://scrap.io/api/v1/export/create`

### Body parameters

**Important informations**

- You must have either name or enableAutoName pass in the parameters. If none passed, you'll encounter an error.
- Unless otherwise specified, a non-required field will be null by default (even if not passed in parameters).
- For type, country, admin1 and admin2 you need to pass the id from the endpoint result.

**Parameters**

| Parameter | Type | Required | Options | Description |
|---|---|---|---|---|
| name | string | no |  | The name of the export. Must be unique. |
| enableAutoName | string | no | on \ null | If set, we'll generate a name for you. |
| type | string | yes | See [endpoint](https://apidoc.scrap.io/#types) | Type of place. |
| country | string | yes | See [endpoint](https://apidoc.scrap.io/#locations) | Country. |
| admin1 | string | no | See [endpoint](https://apidoc.scrap.io/#locations) | Level 1 division for the country. |
| admin2 | string | no | See [endpoint](https://apidoc.scrap.io/#locations) | Level 2 division for the country. |
| city | string | no | See [endpoint](https://apidoc.scrap.io/#locations) | City. |
| exported_lines_limit | integer | no |  | The maximum number of results wanted in the export. |
| export_only_new_place | string | no | on \ null | Export only places not present in previous exports. |
| export_only_new_email | string | no | on \ null | Export only places with email not already present in previous exports. |
| filters | object | no | See "Filters" section below | Results filters to apply. |
| exportColumns | array | no | See "Export columns" section below | Columns to include in the export file. |

**Filters**

| Parameter | type | Default | Options | Description |
|---|---|---|---|---|
| filterGmapIsMainType | string | all | all \ yes \ no | Main activity only |
| filterGmapClosed | string | all | all \ yes \ no | Place closed permanently |
| filterGmapWebsite | string | all | all \ present \ absent | Website |
| filterGmapPhone | string | all | all \ present \ absent | Phone |
| filterGmapClaimed | string | all | all \ yes \ no | Google Maps listing claimed |
| filterGmapPriceRange | string | all | all \ $ \ $$ \ $$$ | Price range |
| filterGmapRatingMin | integer | 0 | range from 0 to 5 | Rating min |
| filterGmapRatingMax | integer |  | range from 0 to 5 | Rating max |
| filterGmapNumberOfReviewsMin | integer |  |  | Number of reviews min |
| filterGmapNumberOfReviewsMax | integer |  |  | Number of reviews max |
| filterGmapNumberOfPhotosMin | integer |  |  | Number of photos min |
| filterGmapNumberOfPhotosMax | integer |  |  | Number of photos max |
| filterWebsiteEmail | string | all | all \ present \ absent | Email |
| filterWebsiteFacebook | string | all | all \ present \ absent | Facebook |
| filterWebsiteInstagram | string | all | all \ present \ absent | Instragram |
| filterWebsiteYoutube | string | all | all \ present \ absent | Youtube |
| filterWebsiteTwitter | string | all | all \ present \ absent | Twitter |
| filterWebsiteLinkedin | string | all | all \ present \ absent | Linkedin |
| filterWebsiteContactForm | string | all | all \ present \ absent | Contact form on website |
| filterWebsiteAdPixel | string | all | all \ present \ absent | Ad pixel on website |

**Export columns**

| Parameter | Description |
|---|---|
| enable_export_column_google_id | Google id |
| enable_export_column_name | Name |
| enable_export_column_descriptions | Descriptions |
| enable_export_column_is_closed | Is closed |
| enable_export_column_main_type | Main type |
| enable_export_column_all_types | Types |
| enable_export_column_website | Website |
| enable_export_column_phone | Phone |
| enable_export_column_timezone | Timezone |
| enable_export_column_location_address | Address |
| enable_export_column_location_coordinates | Coordinates |
| enable_export_column_link | Link |
| enable_export_column_owner | Owner |
| enable_export_column_place_id | Place id |
| enable_export_column_email | Email |
| enable_export_column_facebook_link | Facebook link |
| enable_export_column_youtube_link | Youtube link |
| enable_export_column_twitter_link | Twitter link |
| enable_export_column_instagram_link | Instagram link |
| enable_export_column_linkedin_link | Linkedin link |
| enable_export_column_first_seen_at | Seen for the first time (date) |
| enable_export_column_price_range | Price Range |
| enable_export_column_reviews | Reviews |
| enable_export_column_photos | Photos |
| enable_export_column_occupancy | Occupancy |
| enable_export_column_is_claimed | Is claimed |
| enable_export_column_working_hours | Opening hours |
| enable_export_column_characteristics | Characteristics |
| enable_export_column_website_title | Website name |
| enable_export_column_website_meta | Website meta |
| enable_export_column_website_lang | Website lang |
| enable_export_column_all_emails | All emails |
| enable_export_column_contact_pages | Contact pages |
| enable_export_column_all_facebook_links | All facebook links |
| enable_export_column_all_youtube_links | All youtube links |
| enable_export_column_all_twitter_links | All twitter links |
| enable_export_column_all_instagram_links | All instagram links |
| enable_export_column_all_linkedin_links | All linkedin links |
| enable_export_column_website_technologies | Website technologies |
| enable_export_column_website_ad_pixels | Website pixel ad |

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

### Body parameters

| Parameter | Type   | Required | Description                                 |
|-----------|--------|----------|---------------------------------------------|
| name      | string | yes      | The new name of the export. Must be unique. |

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

### Body parameters

| Parameter | Type  | Required | Description                   |
|-----------|-------|----------|-------------------------------|
| ids       | array | yes      | A list of export id to delete |
