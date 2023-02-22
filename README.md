# Welcome!

Welcome to https://www.wearedotnet.io . If you write about .NET or produce any related content, we're happy to have you here! We'd love to add your content just make sure to follow our [code of conduct](https://github.com/wearedotnet/dotnet-creator-cards/blob/master/CODE_OF_CONDUCT.md)

# :zap:dotnet-creator-cards

In case your card is not yet there, feel free to submit a PR with your card or someone you want to add to the list.

## ✍️ What Are Creators?
By creators, we mean enthusiasts who create content for Blogs, YouTube, Twitch, Books, and tutorial platforms (e.g. Pluralsight). The content can be free or paid.

### Creator Guidelines
- I have a valid blog & RSS URL, both using HTTPS with a valid certificate
- Host NO malicious or offensive content on the Channel (including photos, swearing, etc.)
- Channel is active with at least 3 .NET related blog posts in the last 6 months
- If you delete your channel you will come delete your blog from WeAreDotnet
- Your channel may be removed at any time if any of these are broken.

## 🗣️ Language
We only list creators and channels with English content, it does not matter if you have other languages on top but you need to have
english content and the feed you give us needs to be filtered for english. 

## 🌎 Why Does The Country Sort The List?
The country doesn't matter, but it is a way to divide the List into sections and challenge everyone to find good creators from all countries.

## 📺 What Are Channels?
Channels contain the links on which the creator is most active.

## ☘️ How To Contribute?
Add your cretor details by creating a PR.

- Channels: Max. 5 links
- Tags: Max. 5 tags

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
