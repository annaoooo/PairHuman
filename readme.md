
## PairHuman Dataset
This data is a high-quality benchmark dataset specifically designed for dual-person portrait generation. The key advantages of PairHuman include: 


| **Dataset** | **Image** | **Human-Centric** | **Photographic Quality** | **Two Person** | **Detailed Captions** | **Attribute Tags** | **Human BBoxes** | **Human Masks** | **Key-points** | **Face BBoxes** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Laion400M \[1\] & Laion 5B\[2\] | 47B/58.5B | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| ShareGPT4V & ShareGPT4V-pt \[3\] | 100K/1000K | ❌ | ❌ | ❌ | ✅ | ❌ | ❌ | ❌ | ❌ |
| RefClef \[4\] | 19k | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| RefCOCO, RefCOCO+, RefCOCOg \[4\] | 20k-25.8k | ❌ | ❌ | ❌ | ❌ | ✅ | ✅ | ✅ | ✅ | ❌ |
| MS COCO caption \[5\] | 328k | ❌ | ❌ | ❌ | ❌ | ✅ | ✅ | ✅ | ✅ | ❌ |
| Flickr30K \[6\] | 30k | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| ImageNet-1k \[7\] | 280k | ❌ | ❌ | ❌ | ❌ | ✅ | ✅ | ✅ | ❌ | ❌ |
| Visual Genome \[8\] | 100k | ❌ | ❌ | ❌ | ❌ | ✅ | ✅ | ✅ | ❌ | ❌ |
| Nocaps \[9\] | 15k | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| FFHQ \[10\]\[11\] | 70k | ✅ | ❌ | ❌ | ❌ | ✅ | ✅ | ✅ | ❌ | ❌ |
| **PairHuman** | 100K | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |

\[1\]: Schuhmann et al., 2021, LAION400M.
\[2\]: Schuhmann et al., 2022, LAION5B.
\[3\]: Chen et al., 2023, ShareGPT4V.
\[4\]: Kazemzadeh et al., 2014, ReferItGame.
\[5\]: Chen et al., 2015, COCO caption.
\[6\]: Plummer et al., 2015, Flickr30k Entities.
\[7\]: Russakovsky et al., 2015, ImageNet Large Scale Visual Recognition Challenge.
\[8\]: Krishna et al., 2016, Visual Genome: Connecting Language and Vision using Crowdsourced Dense Image Annotations.
\[9\]: Agrawal et al., 2019, nocaps: Novel Object Captioning at Scale.
\[10\]: Karras et al., 2019, A Style-Based Generator Architecture for Generative Adversarial Networks.
\[11\]: Xiao et al., 2023, FastComposer.

## 💡 Highlights

- 🔥  **Extensive and diverse visual content:** PairHuman contains over 100K images, covering four primary topics: couples, weddings, female friends, and parent-child. Each topic provides a wide variety of scenes, attire, actions, and compositions. 

- 🔥  **High photographic fidelity:** The dataset provides high-resolution, realistic images that adhere to photographic standards. 

- 🔥  **Standardized dual-person portraits:** Every image in PairHuman consistently includes two individuals, ensuring methods can generate dual-person portraits with greater accuracy and consistency. 

- 🔥  **Rich data annotations:** The dataset includes detailed captions, attribute tags about individuals and scenes, human bounding boxes, masks, human keypoints, and face bounding boxes.


## Ethical Statement.

The PairHuman dataset was carefully curated to ensure that all images are free from pornography, violence, bias, or discrimination through a stringent review process. Our data annotations do not include any personal biometric information, such as identity. Only general attribute information is included, such as gender, age range, attire, and actions. In the paper, we use only photos of celebrities for demonstration. Subsequent use of the dataset requires that the images are used solely for training and not for display in publications. This dataset will be provided exclusively for research purposes at academic institutions. We will make every effort to control the application and acquisition process to avoid potential misuse and abuse. Our image generation pipeline includes a safety checker to prevent the creation of images that may violate legal or ethical standards.
