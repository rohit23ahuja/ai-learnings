# ai-learnings
AI learnings

# ollama notes
* ollama is used to LLMs locally
* try running llama 3.1 8b
* open web ui is a separate project. it gives chatgpt like interface for interacting with llm running via spring ai or ollama.
* generating spring ai project from spring.io --> dependencies - spring web, ollama (or any other llm).
* in pom.xml we can provide multiple repositories, if we are using a spring module with snapshot version we need to add repository of spring snapshots.
* mcp protocol - provide access to data to llm.
* mistral ai - apache license.
* llm license is also an important factor.
* spring ai - model switching easier.
* openai api has various different kind of apis. common ones are completions and assistant apis. 
* when using completion api using OpenAIOkHttpClient we have to provide and populated object ChatCompletionCreateParams with messages, model etc.
* environment variables need to be set on windows os - openai_api_key, openai_org_id and openai_project_id.
* open ai lingo, to understand ratio of tokens to words. 1000 tokens is 750 words.

# spring ai sql bot
* web ui application that can take an fsd document and generate utility and staging sql for the project. 
* fsd document should contain source system name, schedule of job, columns that we need from source system. 
* one sql file of utility should be generated.
* one sql file of staging should be generated.
* scripts should be re runnable.
* application should check with llm whether the scripts generated are syntactically correct.
* either application should execute the generated sql against an db
* or llm should do that using mcp
* file should be downloaded on user's machine if ui is used.

# open items
* set up ollama and run a model probably llama 3.1
* windows subsystem for linux 


