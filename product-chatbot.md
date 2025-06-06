The idea relates to building of an chat based application that answers in natural language for questions related to your Product using AI 
engineering techniques such as RAG, MCP and Function calling. This chat based application will be a Java based application and will
rely on Spring AI to do most of the heavy lifting which is connecting our Product, API with AI Models. I am part of Surveillance tech team 
and will be using the same hereinafter to explain the idea. And will be referring this app as CS.

Users of CS :-
1. Business Users - answer queries like how many upstream system CS supports, which upstream send what kind of data, what features has been given 
in an release, how much data has been processed by application.
2. Production Support - ad hoc queries using natural language, release notes, batches information.
3. Business Analyst - view and query all Functional Specifications already implemented in the system to see overlaps, gaps etc., 
help in creating new Functional Specifications.

Tech stack/Prerequisites :-
1. AWS Kepler, Generative AI Gateway URL and service account, API key - GPT capabilities
2. Postgres with PgVector extension - AskArchie already uses it
3. Spring AI jar
4. java 17 or above (preferably java 21 for virtual threads)
5. Postgres MCP server
6. VM
7. Basic htmx/tailwind css based UI - chat based interface

Below shows the high level proposed design of CS app :-

Below describes the features that we would want to incorporated in CS app. Aim should be to develop all below listed features in CS app, however individual/selected features can be pursued as well. 
In many cases one feature will enhance/support the output of other feature.

Feature #1/Idea #1 :-
1. Build a text format document that contains data in Q&A format. This is like an FAQ document. It contains information that you would want 
to users of CS App - any kind of information, just that it should be in Q&A format.
2. Collate all Functional Specification document that describes the functionalities that have been developed/to be developed in Surveillance.
3. Collate all Release notes that describes features that have been delivered in individual releases.
4. Write ETL pipeline using Spring that Vectorize/loads above mentioned information in Vector database - PgVector/Postgres.
5. Utilize Similarity search feature to retrieve similar information stored in vector db.
6. Augment User queries entered as prompts with information stored in vector db.
References:-
https://docs.spring.io/spring-ai/reference/api/retrieval-augmented-generation.html

Feature #2/Idea #2 :-
1. Instruct LLM to delegate certain tasks. Ex - LLM does not know current temperature of a city but a Java client might query an API and
can get you that.
2. Integrate or call existing Java functions with Spring AI i.e. Tool calling features
3. Execute existing business logic defined in code and supply the output to LLM. LLM will use that output to return response to Prompt.

References:-
https://docs.spring.io/spring-ai/reference/api/tools.html

Feature #3/Idea #3 :-
1. Feature that allows us to Chat with Surveillance Database. All information stored in database can be accessed using natural language.
2. Install and set up Postgres MCP server on top of Surveillance Database. 
3. This will have READ ONLY access.
4. Build MCP client that allows you to integrate LLM with Postgres MCP server.

References:-
https://docs.spring.io/spring-ai/reference/api/mcp/mcp-overview.html