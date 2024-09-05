# Notion Help Center Scraper and Chunker

This project scrapes the Notion Help Center knowledge base and chunks the content into smaller pieces for use in retrieval-augmented generation (RAG) systems.

## Features

- Scrapes help articles from the Notion Help Center
- Extracts core text content from each article, including titles, notes, and paragraphs
- Splits articles into smaller chunks (approximately 750 characters each)
- Preserves context by keeping headers, paragraphs, and bulleted lists together
- Outputs an array of clean, formatted text chunks

## Output

The script generates a CSV file named `notion_help_chunks.csv` with the following columns:

- Chunk Number: A unique identifier for each chunk
- Content: The extracted and chunked text content from the Notion Help Center articles

## Sample Output

```
Chunk Number,Content
1,"Introduction Start here Curious about what Notion is? We'll show you right here, and in the articles to come. Let's go! 📍"
2,"Start here Curious about what Notion is? We'll show you right here, and in the articles to come. Let's go! 📍 We like to describe Notion as a set of building blocks for creating things you love to use on your computer, such as: Documents Documents Databases Databases Public websites Public websites Knowledge bases Knowledge bases Project management systems Project management systems The world's most beautiful notes... 😉 The world's most beautiful notes... 😉 Notion is different from other software in a few ways. And once you master these basics, you can pretty much build whatever you want. Most importantly, don't worry about not knowing everything you can do right away. We'll discover it together. Click below to dive right in!"
```

## Usage

To use this scraper and chunker:

1. Run the scraper script to collect data from the Notion Help Center
2. Run the chunker script to process and split the content
3. The resulting `notion_help_chunks.csv` file will contain the chunked content
