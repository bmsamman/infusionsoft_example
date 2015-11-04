Once you get an account with infusionsoft.com or register with them for a sand box,
you will get an email with your Infusionsoft ID and you app url.  The app URL
looks like this:

```

  # https://<app_name>.infusionsoft.com
  # example: https://kd425.infusionsoft.com

```

Now you need to activate your api:

1. In your browser, go to https://kd425.infusionsoft.com
2. Login using your Infusionsoft ID from the email.
3. Follow the instructions on the ingusionsoft [get-started guide about api-key](http://help.infusionsoft.com/userguides/get-started/tips-and-tricks/api-key)
4. Grab the Encrypted key generated at the end of the guide.

Now just run infusionsoft_test.rb from the command line like so:

```

  # Usage: ruby infusionsoft.rb -k <YOUR_ENCRYPTED_KEY> -u <YOUR_API_URL>
  # API URL SHOULD NOT INCLUDE https://
  # Example:
  ruby infusionsoft.rb -k 16433bf33d112aabfa724596b43d4609 -u kd425.infusionsoft.com

```



