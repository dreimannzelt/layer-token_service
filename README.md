# Layer TokenService

This small Sinatra app implements a basic webservice for testing your Layer client. Just click the button below and deploy this webservice to Heroku:

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)


## Configuration

Set the following ENV variables from your Layer config:

```
heroku config:set LAYER_PROVIDER_ID=provider_id LAYER_KEY_ID=key_id LAYER_PRIVATE_KEY="some real long and multiline RSA super key"
```

## Usage

```bash
curl -X "POST" "http://your-new-app.herokuapp.com/hello/layer" \
  -d "user_id=1" \
  -d "nonce=2"
```

This will be your response:

```JSON
{
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsInR5cCI6IkpXUyIsImN0eSI6ImxheWVyLWVpdDt2PTEiLCJraWQiOiJmNmM0OGNjZS1jZDY3LTExZTQtYTM4NC1lYWU4YzEwMDEwYWEifQ.eyJpc3MiOiI5ZTM2OTc4NC05OGFlLTExZTQtYjYyNy03NWJkMDAwMDAwZTYiLCJwcm4iOiIiLCJpYXQiOjE0MjY4ODM1MzksImV4cCI6MTQyODA5MzEzOSwibmNlIjpudWxsfQ.GYawDvYhR0ygV5e7BQOaPBKUkXZsj5rHtePV2UcwObUHIGRajzuOlDHcamdw"
}
```


## Credits

Thanks to [@layer](http://www.layer.com) for this awesome service.  
Webservice brought to you by [@dreimannzelt](http://www.dreimannzelt.de), ©2015
