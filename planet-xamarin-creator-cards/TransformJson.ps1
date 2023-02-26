Set-Location $PSScriptRoot
. .\FormatJson.ps1

Get-ChildItem -Path ".\source" -Filter *.json | ForEach-Object {
    $JsonSource = Get-Content -Path $_.FullName -Raw | ConvertFrom-Json

    $JsonDestination = @{
        name = $null
        sectionTitle = $null
        countryCode = $null
        slogan = $null
        type = $null
        bio = $null
        tags = $null
        socials = @{
            youtube = $null
            linkedin = $null
            twitter = $null
            github = $null
            mastodon = $null
            sessionize = $null
        }
    }


    $JsonDestination.name = $JsonSource.firstName + ' ' + $JsonSource.lastName
    $JsonDestination.sectionTitle = "Planet Xamarin"
    $jsonDestination.countryCode = $JsonSource.stateOrRegion
    $JsonDestination.slogan = $null
    $JsonDestination.type = 'CREATOR'
    $JsonDestination.bio = $JsonSource.tagOrBio
    $JsonDestination.tags = $null
    $JsonDestination.socials.youtube = $null
    $JsonDestination.socials.linkedin = $null
    $JsonDestination.socials.twitter = $JsonSource.twitterHandle
    $JsonDestination.socials.github = $JsonSource.githubHandle
    $JsonDestination.socials.mastodon = $null
    $JsonDestination.socials.sessionize = $null

    $JsonDestination.channels = @(
        @{
            name = $null
            url = $null
        }
    )
    $jsonDestination.channels[0].url = $JsonSource.webSite
    $JsonDestination.channels[0].name = 'Site'


    $JsonDestination.feeds = @()

    $JsonSource.feedUris | ForEach-Object {
        $JsonDestination.feeds += @{
            type = 'AHrefFeedType'
            url = $_
        }
    }

    $jsonFileName = "destination\" + $JsonSource.firstName + "-" + $JsonSource.lastName + ".json"
    $jsonFileName = $jsonFileName.ToLower()

    $JsonDestination | ConvertTo-Json -Depth 10 | Format-Json | Out-File -FilePath $jsonFileName -Encoding UTF8 -Force


}


