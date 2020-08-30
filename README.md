# Elert
![image](https://user-images.githubusercontent.com/33805066/91645225-94e58680-ea43-11ea-917d-7f3dbefcfe30.png)
# What is the problem

## Brief:
Develop accessible, affordable technology or enhance existing technology to mitigate African elephant based Human
Wildlife Conflict for vulnerable people living in and around Mozambique’s Limpopo National Park.

## Challenge and problem statement
[Human Wildlife Conflict](https://en.wikipedia.org/wiki/Human%E2%80%93wildlife_conflict) (HWC): When the interaction between humans and wildlife result in negative impacts including
crop destruction or death. This is a reality for poor, vulnerable people living in and around Mozambique’s rural [Limpopo
National Park](https://www.peaceparks.org/parks/limpopo-national-park/) (LNP) where HWC occurs regularly. This challenge is focused on developing new (or expanding on
existing) technology that is affordable, accessible and will aid community members with the early detection or deterring
of HWC incidents with African elephants.

## Background
The people living in and around LNP in Mozambique are poor, vulnerable and at risk. They experience the effects of climate change first-hand and compete with local wildlife for natural resources. It’s a harsh landscape with regular droughts and few opportunities. These people survive through subsistence farming and when their crops are destroyed by animals, a year’s worth of food is lost, leaving them in a dire situation. There are no shops to buy produce and even if there were, they would rarely have the means to buy additional food. These farmers also have cattle that competes for scarce water resources and rangelands with local wildlife.

African elephants are listed as a vulnerable species by the International Union for Conservation of Nature (IUCN). Back in the 1930s it is estimated that there were over 10 million elephants roaming across the African continent. Today, due to poaching, conflict and human encroachment, their numbers have effectively been decimated, leaving approximately 415,000 elephants left in the wild. It is said that no fence can keep out a roaming bull elephant. These bulls as well as large family herds often move through the villages in and around LNP, destroying infrastructure, crops and in extreme circumstances, killing community members. Unfortunately, in retaliation, these incidents often result in villagers taking matters into their own hands and killing these elephants .

## Current approach
In an effort to mitigate this, 16 elephants in the area from different herds have been collared. Their movements are tracked with satellite technology and visual spotting. The Park has six rangers tasked with assisting communities with HWC incidents, to warn them when elephant herds move in close proximity of their villages and to capture incident reports.

However, the landscape is vast, over 1 000 000 Ha and with limited capacity, it is not always possible to reach the communities in time to warn them.
There is very limited cellphone coverage in these areas.

# The Solution - Elert
## What is Elert
Elert is a platform that takes a multifaced, holistic approach to early detection and deterrant of HWC incidents.

Technically speaking, Elert consists primarily of a back end server with utilises AI and deep learning to enhance the available elephant tracking data, which has a relatively low data resolution of 5-15 minutes. This allows the platform to immediately analyse any location for risk of HWC incidents.

##### This data is however of no value if it can not be accessed, which is where Elert's 4 interfaces come into play.

- **Elert bracelet** is a durable, rigid, rugged wearable bracelet based on LoRaWAN for communication, and GPS for location tracking.
Through the use of these highly efficient mobile communication technologies the bracelet is able to achieve ranges of approximately 15kms from a base station to cover the most rural of villiages, while boasting a one year battery life to ensure that users are not limited by their access to reliable electricity connections. 

- **Elert Web and Mobile applications** allow users with available hardware to receive alerts on their mobile connected smartphones, while also being engaged in pedagogical learning on how to mitigate the effects of HWC incidents.

- **Elert SMS** platform allows users to register their fixed location and mobile phone number, either via the Elert Web and Mobile applications, sms or by 'snail' mail in order to receive automated SMS alerts, whenever there is a risk of an HWC incident in their area.

- **Elert HWC mitigation** provides automated control of local billboards, and warning lights erected in more densly populated areas, in order to alerts those who otherwise have no access to the Elert platform.

##### However, even the most advanced warning systems have their limitations.

This is where **Elert deterrant** comes into play. Using a combination of various deterant sounds (such as that of beehives and big cats) as well as lure sounds, such as that of a female in heat. The Elert deterant system uses automated outdoor speaker systems strategically placed around populated, and other protected areas to gently nudge elephants away from areas that would bring high risk of HWC incidents, in order to avoid incidents entirely.

## Technical description

### Elert Backend
- Receives elephant location details via API
- Location data is stored in a database
- Location data is processed using artificial intelligence, and deep learning to identify areas at risk
- Responds to end-point regarding their location's risk
- Send out automated **SMS alert** messages

### Elert Bracelets
- Rugged
- Rigid
- Has a warning light
- GPS location data
- LoRaWAN link to the Elert Backend
- Provides current location to Elert backend, in order to determine risk status
- Light ring lights up when risk is present
- Low power, battery life exceeding 1 year

### Elert Web and Mobile app
- Uses device location data
- Provides current location to Elert backend, in order to determine risk status
- Push notification when risk is present
- Learning platform, teaches correct procedure for handling incidents
- Provides means to notify and request help from authorities

## Elert Tracking
- Long term could supplement elephant tracking technologies
- GPS tracking
- LoRaWAN communication, when in range of a gateway

## Elert ML
- Predicts elephant movements
- Risk analysis

![image](/Model%20of%20elephants/ElephantWalk_TrimFinal.gif)

## Geo Fence
- Automate counter defence
- Automate luring defence
- Automate alerting

# System end-user
People living in and around LNP, Mozambique who have access to basic, working cell phones or a radio network.

# The team - Stuck in ViM
## Who are Stuck in ViM?

Stuck in ViM are a team of students from both Chalmers and Gothenburg University. With a good mix of competent, visionary and driven people, we hope to impress the judges. Comptences range from chemical and software engineering, to cognitive science and physics. The team also consists of people from around the world, something we hope helps us be inclusive in our solutions.

- [Agaton Fransson](https://www.linkedin.com/in/agaton-fransson) - agaton.fransson@gmail.com
- [Kardo Marof](https://github.com/WalrusArtist) - 
- [Leith Hobson](https://github.com/leithhobson) - leithhobson@gmail.com
- [Neville Bhattacharjee](https://www.linkedin.com/in/neville-bhattacharjee-7495bb12b/) - nevillebhattacharjee@gmail.com
- [Sebastian Baszczynski](https://github.com/MiddleTv) - sebastian_baszcz@yahoo.co.uk
- [Wenjin Yuan](https://www.linkedin.com/in/wenjin-yuan-0a4965150/) - wenjin_98@live.com

## Hashtags
#HWCmitigation #preventHWC #EarlyWarning #PeaceParks #LimpopoNationalPark #elephants #Community
