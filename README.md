Intuit iOS Craft Exercise

Welcome to the Intuit iOS Craft Exercise! This exercise is designed to test your knowledge of iOS development and your ability to write clean, maintainable code. We hope you enjoy it!

## Instructions

#### Presetup

This iOS repository uses [xcodegen](https://github.com/yonaskolb/XcodeGen/tree/master) to simplify checked in project files, to generate the project and open it in Xcode:
```sh
swift run xcodegen generate && open -a Xcode IntuitCraftInterview.xcodeproj
```

The app is currently a skeleton project with a single text view that displays "Hello World!", your task is to enhance this application as described below:

1. Using the catapi (https://api.thecatapi.com/) create a new screen that displays a list of cat breeds. The list should be scrollable, and should contain no more than 10 items at a time. Each cat breed
should be displayed as a card with the cat breed name and description along with an image.  Example layout:
<img width="344" alt="Screenshot 2024-08-07 at 11 45 36 AM" src="https://github.com/user-attachments/assets/781c2b0a-2f92-4a9d-b5e1-7af757b1cddd">


3. The /breeds endpoint should be used to fetch the list of cat breeds and the parameters `limit` and `page` should be used to paginate the results.

Example Request:  Https GET @ https://api.thecatapi.com/v1/breeds?limit=10&page=0 - This will return the first 10 cat breeds 

Example Response:

```json
[
  {
    "weight": {
      "imperial": "6 - 12",
      "metric": "3 - 5"
    },
    "id": "bure",
    "name": "Burmese",
    "cfa_url": "http://cfa.org/Breeds/BreedsAB/Burmese.aspx",
    "vetstreet_url": "http://www.vetstreet.com/cats/burmese",
    "vcahospitals_url": "https://vcahospitals.com/know-your-pet/cat-breeds/burmese",
    "temperament": "Curious, Intelligent, Gentle, Social, Interactive, Playful, Lively",
    "origin": "Burma",
    "country_codes": "MM",
    "country_code": "MM",
    "description": "Burmese love being with people, playing with them, and keeping them entertained. They crave close physical contact and abhor an empty lap. They will follow their humans from room to room, and sleep in bed with them, preferably under the covers, cuddled as close as possible. At play, they will turn around to see if their human is watching and being entertained by their crazy antics.",
    "life_span": "15 - 16",
    "indoor": 0,
    "lap": 1,
    "alt_names": "",
    "adaptability": 5,
    "affection_level": 5,
    "child_friendly": 4,
    "dog_friendly": 5,
    "energy_level": 4,
    "grooming": 1,
    "health_issues": 3,
    "intelligence": 5,
    "shedding_level": 3,
    "social_needs": 5,
    "stranger_friendly": 5,
    "vocalisation": 5,
    "experimental": 0,
    "hairless": 0,
    "natural": 0,
    "rare": 0,
    "rex": 0,
    "suppressed_tail": 0,
    "short_legs": 0,
    "wikipedia_url": "https://en.wikipedia.org/wiki/Burmese_(cat)",
    "hypoallergenic": 1,
    "reference_image_id": "4lXnnfxac"
  },
  { ... More Results ... }

]
```
4. Querying the cat breed image can be done using the `reference_image_id` parameter from the above sample response, and appending it to the base url:
   `https://cdn2.thecatapi.com/images/{reference_image_id}.jpg`
5. Once the above is complete, we would like to add one more bit of functionality. When a user clicks on a breed's card they should be taken to a new screen that displays more images of the particular breed in a vertically stacked layout.
Example layout:
<img width="361" alt="Screenshot 2024-08-07 at 11 46 57 AM" src="https://github.com/user-attachments/assets/3fce4a6e-81a5-4086-b459-358939bd4ecc">


7. Use the search api (GET https://api.thecatapi.com/v1/images/search) to fetch the images for the selected breed. The `breeds_id` parameter should be used to fetch the images for the selected breed.
   The `limit` parameter should be used to limit the number of images fetched to 10 and the `size` parameter should be used to specify the size of the image to fetch. The size parameter should be set to `small`.

Sample request: Https GET @ https://api.thecatapi.com/v1/images/search?breeds_id=bure&limit=10&size=small - This will return the first 10 small images for the Burmese breed

Sample response:

```json
[
    {
        "id": "19l",
        "url": "https://cdn2.thecatapi.com/images/19l.gif",
        "width": 331,
        "height": 229
    },
    {
        "id": "2uv",
        "url": "https://cdn2.thecatapi.com/images/2uv.jpg",
        "width": 509,
        "height": 286
    },
    {
        "id": "31d",
        "url": "https://cdn2.thecatapi.com/images/31d.jpg",
        "width": 500,
        "height": 400
    },
    {
        "id": "321",
        "url": "https://cdn2.thecatapi.com/images/321.jpg",
        "width": 472,
        "height": 709
    },
    {... More Results ...} 
]
```


Other important notes:

- The app should be written in Swift.
- You are free to chose between writing the UI using UIKit or SwiftUI, both are setup in this repository.
- You are free to use any libraries you see fit to complete the task, you can [add SPM dependencies to the project easily with xcodegen](https://github.com/yonaskolb/XcodeGen/blob/master/Docs/ProjectSpec.md#swift-package)
- The above api endpoints require authentication through a header `x-api-key` parameter. You can obtain a free api key by signing up at https://thecatapi.com/signup