# podcast-generator

AshanPodcastFeedGen
Generates a podcast RSS feed from a YAML file.
This action parses feed.yaml and converts it into a standard podcast.xml RSS feed, which you can then publish or submit to platforms like Spotify, Apple Podcasts, or Google Podcasts.

🔹Features🔹
✅ parses feed.yaml
✅ generates a standard RSS 2.0 feed with itunes tags
✅ parses multiple episodes (with title, description, duration, and enclosure)
✅ includes cover art, author, and additional metadata for your feed

🛠Technology Stack🛠
Docker

Python 3.10

PyYAML

📁File structure📁
.
 └ feed.yaml
 └ feed.py
 └ entrypoint.sh
 └ Dockerfile
 └ action.yaml
 └ README.md

 📦 Installation & usage 📦
🔹Create your feed.yaml🔹
Create a feed.yaml in your repository with following structure:

title: My Awesome Podcast
format: mp3
subtitle: An example feed
author: Your Name
description: This is a sample feed for my podcast
link: https://example.com
image: /cover.jpg
language: en
category: Technology
item:
  - title: Episode 1
    description: Introduction
    duration: 10:00
    length: "1000000"
    file: /episode1.mp3
    published: "Mon, 15 Mar 2021 04:00:00 GMT"

  - title: Episode 2
    description: Our Second Episode
    duration: 20:00
    length: "2000000"
    file: /episode2.mp3
    published: "Mon, 22 Mar 2021 04:00:00 GMT"

🔹Docker Build🔹
bash
Copy
Edit
docker build -t ashanpodcastfeedgen .

🔹Docker Run🔹
bash
Copy
Edit
docker run -v $PWD:/workdir ashanpodcastfeedgen
This will generate a podcast.xml in your directory.

⚡ GitHub Action ⚡
yaml
Copy
Edit
name: Generate Podcast Feed

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Repo
        uses: actions/checkout@v3

      - name: Run FeedGenerator
        uses: ./
        with:
          email: YOUR_EMAIL
          name: YOUR_NAME



