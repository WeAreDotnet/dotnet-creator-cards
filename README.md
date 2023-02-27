# Welcome!

Welcome to https://www.wearedotnet.io

If you write about .NET or create .NET-related content, we are happy to have you here! 

We would love to add your content. Just make sure to follow our [Code of Conduct](https://github.com/wearedotnet/dotnet-creator-cards/blob/master/CODE_OF_CONDUCT.md)

In case your card is not yet there, feel free to submit a PR with your card or someone you want to add to the list.

## What Are Creators?
By creators, we mean enthusiasts who create content for Blogs, YouTube, Twitch, Books, and tutorial platforms (e.g. Pluralsight). The content can be free or paid.

## When Do We Accept Someone's Creator Card Submission? 

* You must have published a post since 2022 on any of your channels. 

* There must be one publication in English. We only list creators and channels with English content, it does not matter if you have other languages on top but you need to have English content and the feed you give us needs to be filtered for english. 

* There needs to be more than tweets. 

* A longer-form article on LinkedIn is good, but a self-hosted blog or one on a well-known platform like Hashnode, medium etc., is better. 

* Alternatively, you contributed with another form on a platform like YouTube, Twitch, Udemy or Pluralsight. If you have some recorded talks of conferences or anywhere else, that counts too! So in the form of a recorded video or a book. 

## RSS or Atom Feed 

* Submit an Atom or RSS URL inside your creator card that belongs to your blog 

* If you do not submit an RSS or Atom URL. We cannot consider your feed for the upcoming aggregation feature. 

## Content Guideline 

* If you have a self-hosted blog, please ensure you have a valid HTTPS certificate. 

* We host NO malicious or offensive content on the blog (including photos, swearing, etc.)


## JSON Card Format

| Name         | Description                       |
| ------------ | --------------------------------- |
| name         | First and Lastname                |
| sectionTitle | Leave empty                       |
| countryCode  | Two letter code                   |
| slogan       | Short slogan                      |
| type         | CREATOR                           |
| bio          | Max. two lines                    |
| tags         | Max. 5 tags                       |
| socials      | All known platforms               |
| channels     | Max. 5 channels (Blog, Site etc.) |
| Feeds        | Max. 5 Feeds                      |

## Sample Card
```csharp
{
  "name": "First and Lastname",
  "sectionTitle": null,
  "countryCode": "",
  "slogan": "",
  "type": "CREATOR",
  "bio": "",
  "tags": ".NET, C#",
  "socials": {
    "youtube": "",
    "linkedin": "",
    "twitter": "",
    "github": "",
    "mastodon": "",
    "sessionize": ""
  },
  "channels": [
    {
      "name": "Twitch",
      "url": ""
    },
    {
      "name": "Site",
      "url": ""
    }
  ],
  "feeds": [{
      "type": "LinkTagRssType",
      "url": "...feed.xml"  
    }]
}
```
