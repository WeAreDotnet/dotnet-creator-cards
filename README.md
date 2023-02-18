# :zap:dotnet-creator-cards

In case your card is not yet there, feel free to submit a PR with your card or someone you want to add to the list.

## ✍️ What Are Creators?
By creators, we mean enthusiasts who create content for Blogs, YouTube, Twitch, Books, and tutorial platforms (e.g. Pluralsight). The content can be free or paid.

## 🗣️ Language
We only list creators and channels with English content.

## 🌎 Why Does The Country Sort The List?
The country doesn't matter, but it is a way to divide the List into sections and challenge everyone to find good creators from all countries.

## 📺 What Are Channels?
Channels contain the links on which the creator is most active.

## ☘️ How To Contribute?
Add your favourite creators by creating a PR.

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
  "feeds": []
}
```
