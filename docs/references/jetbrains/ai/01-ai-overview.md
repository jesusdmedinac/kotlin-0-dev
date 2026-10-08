# Kotlin for AI: Ecosystem & Application Development

* **Official Source:** 
  * [Kotlin with AI](https://kotlinlang.org/docs/kotlin-with-ai.html)
  * [Kotlin for AI-powered app development](https://kotlinlang.org/docs/kotlin-ai-apps-development-overview.html)
* **Breadcrumbs:** Development / AI development / Kotlin with AI
* **Target Version:** Modern Kotlin 2.x

---

## 1. Dual Perspective on AI & Kotlin

JetBrains establishes two distinct pillars for Artificial Intelligence in the Kotlin ecosystem:

```
Artificial Intelligence in Kotlin
├── 1. Build AI-Powered Applications WITH Kotlin
│   ├── Agentic Frameworks: Koog (JetBrains), Model Context Protocol (MCP Kotlin SDK)
│   ├── Provider Clients: OpenAI Java, Anthropic Java, Google AI (Gemini), Azure, AWS Bedrock
│   └── Enterprise Frameworks: Spring AI, LangChain4j
│
└── 2. Develop Kotlin Code WITH AI Assistance
    ├── IDE Integrations: IntelliJ IDEA Junie, GitHub Copilot, Claude Code, OpenAI Codex
    ├── Kotlin Benchmark: Evaluating AI coding agents on real-world Kotlin engineering tasks
    └── Agent Skills: Reusable task instructions (Java-to-Kotlin, AGP 9 migration, SwiftPM)
```

---

## 2. Model Provider Integrations

Thanks to 100% Java interoperability and native multiplatform SDKs, Kotlin applications can connect directly to all primary foundation model providers:

| Provider | Official SDK | Capabilities & Features |
|---|---|---|
| **OpenAI** | `com.openai:openai-java` | Responses, Chat Completions, Assistants API, Whisper Audio, DALL-E. |
| **Anthropic (Claude)** | `com.anthropic:anthropic-java` | Claude Messages API, prompt caching, tool use, Bedrock & Vertex AI connectors. |
| **Google AI (Gemini)** | `com.google.cloud:google-genai` | Unified client switching seamlessly between Gemini Developer API and Vertex AI. |
| **Azure OpenAI** | `com.azure:azure-ai-openai` | Enterprise Azure OpenAI service, chat completions, vector embeddings. |
| **AWS Bedrock** | `aws.sdk.kotlin:bedrock` | Idiomatic Kotlin multiplatform SDK for invoking foundation models in AWS. |

---

## 3. RAG Pipelines & Enterprise Frameworks

### 1. Spring AI
* Multi-provider abstraction for Spring Boot microservices.
* Provides structured prompts, tool callbacks, vector database connectors (PgVector, Redis, Milvus, Qdrant), and document ETL pipelines.

### 2. LangChain4j
* JVM-native toolkit with idiomatic Kotlin extensions.
* Powers retrieval-augmented generation (RAG) pipelines, chat memory retention, and autonomous tool calling agents.

---

## 4. Official Reference Links
* [Kotlin with AI Documentation](https://kotlinlang.org/docs/kotlin-with-ai.html)
* [Kotlin for AI-powered app development overview](https://kotlinlang.org/docs/kotlin-ai-apps-development-overview.html)
* [Official Kotlin AI Examples Repository](https://github.com/Kotlin/Kotlin-AI-Examples)
