Set-Location $PSScriptRoot
. .\FormatJson.ps1

$regionToCountryCodeMap = @{}
$regionToCountryCodeMap["Singapore"] = "SG"
$regionToCountryCodeMap["Bangalore, India"] = "IN"
$regionToCountryCodeMap["Lezajsk, Poland"] = "PL"
$regionToCountryCodeMap["UK"] = "GB"
$regionToCountryCodeMap["Norway"] = "NO"
$regionToCountryCodeMap["Frankfurt, Germany"] = "DE"
$regionToCountryCodeMap["New York, NY"] = "US"
$regionToCountryCodeMap["Guadalajara, Mexico"] = "MX"
$regionToCountryCodeMap["Sydney, Australia"] = "AU"
$regionToCountryCodeMap["North Carolina, USA"] = "US"
$regionToCountryCodeMap["Manila, Philippines"] = "PH"
$regionToCountryCodeMap["Switzerland"] = "CH"
$regionToCountryCodeMap["Bristol, UK"] = "GB"
$regionToCountryCodeMap["JaÃº, SÃ£o Paulo, Brazil"] = "BR"
$regionToCountryCodeMap["Alphaville - Barueri, Brasil"] = "BR"
$regionToCountryCodeMap["Global"] = "Global"
$regionToCountryCodeMap["Lissone, Italy"] = "IT"
$regionToCountryCodeMap["Seville, Spain"] = "ES"
$regionToCountryCodeMap["Chicago, IL"] = "US"
$regionToCountryCodeMap["Douala, Cameroon"] = "CM"
$regionToCountryCodeMap["Tilburg, The Netherlands"] = "NL"
$regionToCountryCodeMap["Thiruvannamalai,Tamil Nadu,  India"] = "IN"
$regionToCountryCodeMap["Blumenau, Brasil"] = "BR"
$regionToCountryCodeMap["Kathmandu/Nepal"] = "NP"
$regionToCountryCodeMap["Orange County, California"] = "US"
$regionToCountryCodeMap["Houston, Texas"] = "US"
$regionToCountryCodeMap["Ciudad de MÃ©xico"] = "MX"
$regionToCountryCodeMap["Budapest, Hungary"] = "HU"
$regionToCountryCodeMap["Channel 9"] = "Channel 9"
$regionToCountryCodeMap["Lome, Togo"] = "TG"
$regionToCountryCodeMap["Auckland, New Zealand"] = "NZ"
$regionToCountryCodeMap["Szeged, Hungary"] = "HU"
$regionToCountryCodeMap["Utrecht, Netherlands"] = "NL"
$regionToCountryCodeMap["Belgrade, Serbia"] = "RS"
$regionToCountryCodeMap["Paris, France"] = "FR"
$regionToCountryCodeMap["Copenhagen, Denmark"] = "DK"
$regionToCountryCodeMap["Munich, Germany"] = "DE"
$regionToCountryCodeMap["Geneva, Switzerland"] = "CH"
$regionToCountryCodeMap["Trondheim, Norway"] = "NO"
$regionToCountryCodeMap["Seattle, WA"] = "US"
$regionToCountryCodeMap["Brisbane, Australia"] = "AU"
$regionToCountryCodeMap["San Francisco, CA"] = "US"
$regionToCountryCodeMap["Illinois"] = "US"
$regionToCountryCodeMap["SÃ£o Paulo, Brasil"] = "BR"
$regionToCountryCodeMap["New York, United States"] = "US"
$regionToCountryCodeMap["Dominican Republic"] = "DO"
$regionToCountryCodeMap["Cape Town, South Africa"] = "ZA"
$regionToCountryCodeMap["Internet"] = "Internet"
$regionToCountryCodeMap["Amsterdam, the Netherlands"] = "NL"
$regionToCountryCodeMap["Melbourne, Australia"] = "AU"
$regionToCountryCodeMap["Davao City, Philippines"] = "PH"
$regionToCountryCodeMap["Raleigh, North Carolina"] = "US"
$regionToCountryCodeMap["United States"] = "US"
$regionToCountryCodeMap["Santos, Brasil"] = "BR"
$regionToCountryCodeMap["United Kingdom"] = "GB"
$regionToCountryCodeMap["CornÃ©lio ProcÃ³pio, Brasil"] = "BR"
$regionToCountryCodeMap["Prague, Czech Republic"] = "CZ"
$regionToCountryCodeMap["Zurich, Switzerland"] = "CH"
$regionToCountryCodeMap["Lima"] = "PE"
$regionToCountryCodeMap["Lahore, Pakistan"] = "PK"
$regionToCountryCodeMap["Rennes, France"] = "FR"
$regionToCountryCodeMap["Mendoza, Argentina and GemÃ¼nden, Germany"] = "DE"
$regionToCountryCodeMap["Malaga, Spain"] = "ES"
$regionToCountryCodeMap["Rzeszow, Poland"] = "PL"
$regionToCountryCodeMap["Madrid , Spain"] = "ES"
$regionToCountryCodeMap["Washington, D.C."] = "US"
$regionToCountryCodeMap["Arequipa, PerÃº"] = "PE"
$regionToCountryCodeMap["Hasselt, Belgium"] = "BE"
$regionToCountryCodeMap["Minneapolis, MN"] = "US"
$regionToCountryCodeMap["Rio Grande do sul, Brasil"] = "BR"
$regionToCountryCodeMap["Italia"] = "IT"
$regionToCountryCodeMap["Sarajevo"] = "BA"
$regionToCountryCodeMap["Ukraine"] = "UA"
$regionToCountryCodeMap["Estonia"] = "EE"
$regionToCountryCodeMap["Chennai, India"] = "IN"
$regionToCountryCodeMap["Toronto, Canada"] = "CA"
$regionToCountryCodeMap["Ontario, Canada"] = "CA"
$regionToCountryCodeMap["Jenison, MI"] = "US"
$regionToCountryCodeMap["Cartago, Costa Rica"] = "CR"
$regionToCountryCodeMap["San Diego, CA"] = "US"
$regionToCountryCodeMap["BorlÃ¤nge, Sweden"] = "SE"
$regionToCountryCodeMap["Vienna, Austria"] = "AT"
$regionToCountryCodeMap["Amsterdam, Netherlands"] = "NL"
$regionToCountryCodeMap["Leicestershire, England"] = "GB"
$regionToCountryCodeMap["Mostar, Bosnia and Herzegovina"] = "BA"
$regionToCountryCodeMap["Massachusetts"] = "US"
$regionToCountryCodeMap["The Netherlands"] = "NL"
$regionToCountryCodeMap["Austin, Texas"] = "US"
$regionToCountryCodeMap["Australia"] = "AU"
$regionToCountryCodeMap["Madison, WI"] = "US"
$regionToCountryCodeMap["Utah"] = "US"
$regionToCountryCodeMap["Nottingham"] = "GB"
$regionToCountryCodeMap["Taipei, Taiwan"] = "TW"
$regionToCountryCodeMapLower = @{}
$regionToCountryCodeMap.Keys | ForEach-Object { $regionToCountryCodeMapLower[$_] = $regionToCountryCodeMap[$_].ToLower() }

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
    $jsonDestination.countryCode = $regionToCountryCodeMapLower[$JsonSource.stateOrRegion]
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
