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


# temperature setting works
* continue the sentence with lowest degree of randomness (temperature=1):
*  "Ajay walked into office and started to...."
* https://libguides.uvic.ca/promptdesign/temp
* https://help.zapier.com/hc/en-us/articles/22497191078797-Advanced-fields-for-ChatGPT-OpenAI#h_01HJ1EZJN6V1G934GDZN087850
* top-p and top-k testing pending to be understood??
* continue reading from step back prompting
* variables in prompt.