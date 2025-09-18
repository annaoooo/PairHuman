import torch
from diffusers import FluxPipeline
from pathlib import Path
import itertools
import random


model_path = "/root/autodl-tmp/FLUX.1-dev"
device = "cuda" if torch.cuda.is_available() else "cpu"

output_root = Path("/root/generated_faces")
male_dir = output_root / "male"
female_dir = output_root / "female"
male_dir.mkdir(parents=True, exist_ok=True)
female_dir.mkdir(parents=True, exist_ok=True)

pipe = FluxPipeline.from_pretrained(model_path, torch_dtype=torch.float16, local_files_only=True)
pipe = pipe.to(device)

male_prompts = [
    "a high-quality portrait photo of a young adult male, looking directly at the camera, clean background, neutral expression, sharp facial details",
    "a close-up headshot of a young man, professional studio lighting, symmetrical face, frontal view, realistic skin texture",
    "a realistic photo of a young adult male face, centered composition, plain background, detailed eyes and mouth, minimal torso visible"
]

female_prompts = [
    "a high-quality portrait photo of a young adult female, looking directly at the camera, clean background, neutral expression, sharp facial details",
    "a close-up headshot of a young woman, professional studio lighting, symmetrical face, frontal view, realistic skin texture",
    "a realistic photo of a young adult female face, centered composition, plain background, detailed eyes and mouth, minimal torso visible"
]

def generate_faces(prompts, save_dir, start_index=0, num_images=30):
    idx = start_index
    for i, prompt in zip(range(num_images), itertools.cycle(prompts)):
        seed = random.randint(0, 2**32 - 1)  
        generator = torch.manual_seed(seed)
        image = pipe(
            prompt,
            num_inference_steps=30,
            guidance_scale=4.5,
            generator=generator
        ).images[0]
        out_path = save_dir / f"{idx:05d}.png"
        image.save(out_path)
        print(f"Saved: {out_path} (seed={seed})")
        idx += 1


generate_faces(male_prompts, male_dir, start_index=0, num_images=1000)

generate_faces(female_prompts, female_dir, start_index=0, num_images=1000)
