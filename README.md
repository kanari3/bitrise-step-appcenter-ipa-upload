# AppCenter ipa upload

This Bitrise Step for Microsoft AppCenter users.  
Send iOS ipa file to AppCenter without Tests.

# Required Variables

## Application Identifier

`$APP_CENTER_APP_ID`

AppCenter Application Identifier is a combination of your Organization Name and an Application Name.  
For example: "MyOrganization/MyApplication"

#### Note

Even if you change the name of the app later, the name of the URL will be adopted.

## AppCenter API Token

`$APP_CENTER_ACCESS_TOKEN`

Obtain API Token from AppCenter

Name in appcenter 'User API Tokens'

You can get it from  
https://appcenter.ms/settings/apitokens

## AppCenter Distribution Group Name

`$APP_CENTER_DISTRIBUTION_GROUP`

For example and default: "Collaborators"

You can get it from  
`https://appcenter.ms/orgs/{Your organization name}/people/distribution-groups`

## hint

![screenshot](https://user-images.githubusercontent.com/45155403/81844196-b0f31400-9589-11ea-9a0a-58e97e44721a.png)
