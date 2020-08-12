---
layout: project
title: Emotion Recognition
category: Professional
description: Multimodal Analysis for Emotion Recognition
picture: /assets/img/multimodal.jpg
github: /tasiomendez/multimodal/
technologies:
  - Python
  - Docker
  - Machine Learning
  - Emotion Recognition
year: 2019 June
---

This project was developed in the [Intelligent Systems Group](https://www.gsi.upm.es/) within the [Emospaces](https://itea3.org/project/emospaces.html) European project that focuses on providing technologies to analyze the emotion of users in intelligent spaces and to adapt these spaces to improve the user experience.

This project allows the user to perform a multimodal analysis for emotion recognition in Spanish-language videos. It uses pre-trained models to predict emotions from different data sources.
A given video is analyzed by three different services: a video analysis that detects emotions in faces; a speech emotion analysis; and a text emotion analysis service that uses the speech transcript. On the one hand, text and audio are divided so that they are synchronized, with one audio file corresponding to one text input. In this way, the time axis of the video is divided according to the number of statements made by the person appearing in the video, which is directly related to the length of the video.

It can be also be used to analyze a video manually. For this purpose, two different tools are provided: one for extracting features from the different input sources and one for analyzing the features extracted.

The features extractor can be used to extract features individually for each sources or synchronize them in pairs or all of them. The audio feature extractor computes 34 of short-term features implemented in [pyAudioAnalysis](https://github.com/tyiannak/pyAudioAnalysis) library. The video feature extractor uses a pre-trained deep learning model for computing emotions.
