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
