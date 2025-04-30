# sql with ai
evaluating various ai tools for generating sql. objective is to give ai existing sqls as context so that it understands the project framework.

# GitLab Duo
* supported in both intellij and vs code.
* intellij community does not have support for sql extension.
* gitlab code suggestions uses code completion and code generation.
* Code completion - complete current line of code.
* Code generation - generate new code based on natural language content. code generation is more accurate and takes longer time.
* code completion is done using Codestral, probably gcp hosted.
* code generation is done using Anthropic claude.
* Copied from documentation - Use code completion to quickly complete one or a few lines of code.
* Copied from documentation - Use code generation for more complex tasks, larger codebases, when you want to write new code from scratch based on a natural language description, or when the file you’re editing has fewer than five lines of code.
* documentation link - https://docs.gitlab.com/user/project/repository/code_suggestions/
* as per documentation, code completion supports google sql
* as per documentation, code does not support sql.
* but still sql code gets generated.
* when input - both code completion and code generation features have file truncation limits - https://docs.gitlab.com/user/project/repository/code_suggestions/#truncation-of-file-content
* when outputting - both code completion and code generation features have output generation limits - https://docs.gitlab.com/user/project/repository/code_suggestions/#output-length
* for code generation code comments are used like chat. 
* debug logs are available in vs code
* code suggestion uses - gitlab repository xray as well.
* sql is not formally supported.
* vs code is giving debug logs.
* sql multiline comments do not work with gitlab duo. i.e /**/. single line comments work fine.
* https://www.geeksforgeeks.org/postgresql-installing-postgresql-without-admin-rights-on-windows/
* https://www.dbvis.com/thetable/a-complete-guide-to-pg-dump-with-examples-tips-and-tricks/
* pg_dump -h 10.124.67.30 -U sdml_admin -p 8080 -d stsdev2 -f C:\temp\backup3.sql -t dbo.filters --create --column-inserts
* https://www.postgresql.org/docs/current/app-pgdump.html
* 2025-04-18T17:21:05:953 [debug]: Document content trimmed to fit byte size limit: document size: 250617 bytes, limit: 50000 bytes
* 50 KB limit on file size



# temperature setting works
* continue the sentence with lowest degree of randomness (temperature=1):
*  "Ajay walked into office and started to...."
* https://libguides.uvic.ca/promptdesign/temp
* https://help.zapier.com/hc/en-us/articles/22497191078797-Advanced-fields-for-ChatGPT-OpenAI#h_01HJ1EZJN6V1G934GDZN087850
* top-p and top-k testing pending to be understood??
* continue reading from step back prompting
* variables in prompt.

# temperature and top_p
* Please answer this question in a very creative and unpredictable way, as if the temperature is 0.9 and top_p is 0.95. That might steer the model slightly, but it’s not the same as actually controlling the generation parameters.
* temperature - controls randomness amongst probabilistic options. lower values make responses more focussed and deterministic. picks the highest-probability words more often (more focused)
* top_p - controls diversity of options. it is equal probabilistic mass of options. Instead of looking at all options, it only keeps the smallest number of words whose combined probability ≥ top_p
* when we are coding in an existing project or within the boundaries of an existing project, within the boundaries of our framework.
* strict code generation :- 
Parameter | Value | Why?
temperature | 0.0 – 0.1 | Makes the model deterministic and focused — sticks to the most likely / example-based outputs.
top_p | 1.0 | Allows full consideration of all logical options, but since temperature is low, it won't pick wild ones.
top_k | Not available in ChatGPT, but if using an API or other tool, keep it high (or default). |
* If you're doing many generations and want repeatability, use: temperature = 0.0 (fully deterministic)
* Only return the SQL code. Do not include any explanation.
* Keep `temperature` low (0.0–0.2) and `top_p = 1.0` for all your code-generation prompts.
* Use fenced SQL blocks (` ```sql `) to make context more readable and structured.
* Use assertive instructions like *"strictly follow the schema"*, *"do not rename anything"*, *"no explanation"*, etc.
* GPT-4o handles Markdown extremely well and understands formatting cues like code blocks and section headings to structure its understanding of the prompt.
* try giving only one of them as well.
* testing of top_p and temperature
* truncating context aiden
* gitlab duo multiple files 
* add results to the user message or system message before you send a request.
* To dissect this even further : 
  * generate embeddings from your prompt (call embedding service, get vectors for your text)
  * search vector database for similarities using the resulting vector(s)
  * add text results to you user or system message
  * send request to the LLM.