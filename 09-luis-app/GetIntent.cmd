@echo off

rem Set values for your Language Understanding app
set app_id=b6b8ffe6-1809-4857-84ff-1d62b85c9b8d
set endpoint=https://ai-102luis.cognitiveservices.azure.com/
set key=0e923c8b6adc4fb381f31b6bed1f3d2c

rem Get parameter and encode spaces for URL
set input=%1
set query=%input: =+%

rem Use cURL to call the REST API
curl -X GET "%endpoint%/luis/prediction/v3.0/apps/%app_id%/slots/production/predict?subscription-key=%key%&log=true&query=%query%"