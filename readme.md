
## PairHuman: A High-Fidelity Photographic Dataset for Customized Dual-Person Generation
This data is a high-quality benchmark dataset specifically designed for dual-person portrait generation. 

## Accessing the Dataset
To request access to the dataset, please complete the required form available at the following link:

[Access Request Form](https://docs.google.com/forms/d/e/1FAIpQLSdmo3d6IQDp9CRIIOHmjH2N0ajbqY_5h9DNPUFcH45WRQ6N1g/viewform?usp=sf_link)

### Instructions:
1. Click on the link above.
2. Fill out the form with all the requested details.
3. Submit the form.
4. Once approved, you will receive a link to download the dataset.


## 💡 Highlights

- 🔥  **Extensive and diverse visual content:** PairHuman contains over 100K images, covering four primary topics: couples, weddings, female friends, and parent-child. Each topic provides a wide variety of scenes, attire, actions, and compositions. 

- 🔥  **High photographic fidelity:** The dataset provides high-resolution, realistic images that adhere to photographic standards. 

- 🔥  **Standardized dual-person portraits:** Every image in PairHuman consistently includes two individuals, ensuring methods can generate dual-person portraits with greater accuracy and consistency. 

- 🔥  **Rich data annotations:** The dataset includes detailed captions, attribute tags about individuals and scenes, human bounding boxes, masks, human keypoints, and face bounding boxes.

| **Dataset** | **Image** | **Human-Centric** | **Photographic Quality** | **Two Person** | **Detailed Captions** | **Attribute Tags** | **Human BBoxes** | **Human Masks** | **Key-points** | **Face BBoxes** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Laion400M & Laion 5B| 47B/58.5B | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| ShareGPT4V & ShareGPT4V-pt | 100K/1000K | ❌ | ❌ | ❌ | ✅ | ❌ | ❌ | ❌ | ❌ |
| RefClef  | 19k | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| RefCOCO, RefCOCO+, RefCOCOg | 20k-25.8k | ❌ | ❌ | ❌ | ❌ | ✅ | ✅ | ✅ | ✅ | ❌ |
| MS COCO caption | 328k | ❌ | ❌ | ❌ | ❌ | ✅ | ✅ | ✅ | ✅ | ❌ |
| Flickr30K | 30k | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| ImageNet-1k | 280k | ❌ | ❌ | ❌ | ❌ | ✅ | ✅ | ✅ | ❌ | ❌ |
| Visual Genome  | 100k | ❌ | ❌ | ❌ | ❌ | ✅ | ✅ | ✅ | ❌ | ❌ |
| Nocaps  | 15k | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| FFHQ  | 70k | ✅ | ❌ | ❌ | ❌ | ✅ | ✅ | ✅ | ❌ | ❌ |
| **PairHuman** | 100K | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |


## Data Structure Documentation
```none
Root
│
├── Information
│   ├── height: Integer
│   │   └── Description: Height of the image in pixels.
│   ├── width: Integer
│   │   └── Description: Width of the image in pixels.
│   ├── Image category: String
│   │   └── Description: Category of the image, such as 'portrait photo'.
│   └── Photo Settings: String
│       └── Description: Descriptive detail about the photo, such as 'Full body'.
│
├── image_caption
│   ├── text: String
│   │   └── Description: Full descriptive caption of the image. 
│   └── match_info: Array of Objects
│       └── Each object contains:
│           ├── sentence_ID: Integer
│           │   └── Description: Identifier for each sentence in the caption.
│           ├── sentence: String
│           │   └── Description: Text of the specific sentence in the caption.
│           └── person_info: Array of Objects
│               └── Each object contains:
│                   ├── words: String
│                   │   └── Description: Specific word describing the person, e.g., 'man', 'woman'.
│                   ├── start_idx: Integer
│                   │   └── Description: Start index of the word in the sentence.
│                   └── end_idx: Integer
│                       └── Description: End index of the word in the sentence.
│
├── people: Array of Objects
│   └── Each object contains:
│       ├── object_id: String
│       │   └── Description: Unique identifier for the person.
│       ├── gender: String
│       │   └── Description: Gender of the person, e.g., 'male', 'female'.
│       ├── age_group: String
│       │   └── Description: Age group of the person, e.g., 'young'.
│       ├── unique_coordinate: Array of Floats
│       │   └── Description: Coordinates for the person in the image, format: [x_min, y_min, x_max, y_max].
│       ├── facial_traits: String
│       │   └── Description: Descriptive traits of the person's face, e.g., 'short dark hair'.
│       ├── hair_detail: String
│       │   └── Description: Specific details about the person's hair, e.g., 'short', 'curly', 'bald'.
│       ├── skin_tone: String
│       │   └── Description: Skin tone of the person, e.g., 'light', 'medium', 'dark'.
│       ├── action: String
│       │   └── Description: Physical action the person is doing, e.g., 'sitting', 'standing'.
│       ├── expression: String
│       │   └── Description: Facial expression at the time the image was taken, e.g., 'neutral', 'smiling'.
│       ├── details_of_clothes_and_shoes: String
│       │   └── Description: Description of the attire the person is wearing, including clothing and footwear.
│       ├── accessories: String
│       │   └── Description: Any accessories the person is wearing, e.g., 'glasses', 'none'.
│       └── keypoints: Array of Arrays
│           └── Description: Array of keypoints represented as coordinates within the image, providing details about specific anatomical landmarks. Format: [[x, y, confidence], ...].
│
└── objects: Array of Objects
    └── Each object contains:
        ├── object_id: String
        │   └── Description: Identifier for the object.
        ├── count: String
        │   └── Description: Quantity of the particular object.
        ├── appearance: String
        │   └── Description: What the object looks like.
        └── interaction: String
            └── Description: How the object interacts with the scene or people.
```

## Annotation Examples
![Teaser image](./annotation_display.png)
Examples of PairHuman Dataset Annotations, including bounding boxes, keypoints, masks, and image captions. Image captions are color-coded for clarity: orange for persons, green for actions, blue for attire, and purple for backgrounds.

## Statistics
![Teaser image](./analysis.png)
(a) Distribution of high-frequency shooting scenes, (b) Distribution of full-body, half-body, and close-up portraits, (c) Visibility of keypoints in training and testing sets, (d) Ratio distribution of human bounding box area, height, and width relative to the entire image, (e) Distribution of common human actions, (f) Correlation between attire items and descriptive adjectives, (g) Frequency distribution of clothing and accessories.

## Usage and License Notices.
The PairHuman dataset was carefully curated to ensure that all images are free from pornography, violence, bias, or discrimination through a stringent review process. Our data annotations do not include any personal biometric information, such as identity. Only general attribute information is included, such as gender, age range, attire, and actions. Subsequent use of the dataset requires that the images are used solely for training and not for display in publications. This dataset will be provided exclusively for research purposes at academic institutions. We will make every effort to control the application and acquisition process to avoid potential misuse and abuse.
