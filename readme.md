
## PairHuman Dataset
This data is a high-quality benchmark dataset specifically designed for dual-person portrait generation. 

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

## dataset samples
![Teaser image](./annotation_display.png)
Examples of PairHuman Dataset Annotations, including bounding boxes, keypoints, masks, and image captions. Image captions are color-coded for clarity: orange for persons, green for actions, blue for attire, and purple for backgrounds.

## dataset statistical analysis
![Teaser image](./analysis.png)
(a) Distribution of high-frequency shooting scenes, (b) Distribution of full-body, half-body, and close-up portraits, (c) Visibility of keypoints in training and testing sets, (d) Ratio distribution of human bounding box area, height, and width relative to the entire image, (e) Distribution of common human actions, (f) Correlation between attire items and descriptive adjectives, (g) Frequency distribution of clothing and accessories.

## Usage and License Notices.
The PairHuman dataset was carefully curated to ensure that all images are free from pornography, violence, bias, or discrimination through a stringent review process. Our data annotations do not include any personal biometric information, such as identity. Only general attribute information is included, such as gender, age range, attire, and actions. Subsequent use of the dataset requires that the images are used solely for training and not for display in publications. This dataset will be provided exclusively for research purposes at academic institutions. We will make every effort to control the application and acquisition process to avoid potential misuse and abuse.
