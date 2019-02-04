# Jacobemerick\LifestreamService\DefaultApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEvent**](DefaultApi.md#getEvent) | **GET** /events/{event_id} | 
[**getEvents**](DefaultApi.md#getEvents) | **GET** /events | 
[**getTypes**](DefaultApi.md#getTypes) | **GET** /types | 


# **getEvent**
> \Jacobemerick\LifestreamService\Jacobemerick\LifestreamService\Model\Event getEvent($event_id)



Gets a single event.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: basicAuth
$config = Jacobemerick\LifestreamService\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Jacobemerick\LifestreamService\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$event_id = "event_id_example"; // string | Event identifier

try {
    $result = $apiInstance->getEvent($event_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getEvent: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_id** | **string**| Event identifier |

### Return type

[**\Jacobemerick\LifestreamService\Jacobemerick\LifestreamService\Model\Event**](../Model/Event.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getEvents**
> \Jacobemerick\LifestreamService\Jacobemerick\LifestreamService\Model\Event[] getEvents($page, $per_page, $order, $user, $type)



Gets lifestream events.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: basicAuth
$config = Jacobemerick\LifestreamService\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Jacobemerick\LifestreamService\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$page = 1; // int | Results page to return
$per_page = 10; // int | Results per response
$order = "date"; // string | Comma-separated list of order options
$user = "user_example"; // string | User to restrict events
$type = "type_example"; // string | Type to restrict events

try {
    $result = $apiInstance->getEvents($page, $per_page, $order, $user, $type);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getEvents: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Results page to return | [optional] [default to 1]
 **per_page** | **int**| Results per response | [optional] [default to 10]
 **order** | **string**| Comma-separated list of order options | [optional] [default to date]
 **user** | **string**| User to restrict events | [optional]
 **type** | **string**| Type to restrict events | [optional]

### Return type

[**\Jacobemerick\LifestreamService\Jacobemerick\LifestreamService\Model\Event[]**](../Model/Event.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getTypes**
> \Jacobemerick\LifestreamService\Jacobemerick\LifestreamService\Model\Type[] getTypes()



Gets available event types.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: basicAuth
$config = Jacobemerick\LifestreamService\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Jacobemerick\LifestreamService\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getTypes();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getTypes: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Jacobemerick\LifestreamService\Jacobemerick\LifestreamService\Model\Type[]**](../Model/Type.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

