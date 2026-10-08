# AI Agents in Kotlin: Koog Framework & MCP Kotlin SDK

* **Official Source:** [https://kotlinlang.org/docs/kotlin-ai-apps-development-overview.html](https://kotlinlang.org/docs/kotlin-ai-apps-development-overview.html)
* **Breadcrumbs:** Development / AI development / Koog & Model Context Protocol
* **Target Version:** Modern Kotlin 2.x

---

## 1. Koog: JetBrains' Open-Source Agent Framework

**Koog** (`https://koog.ai`) is an open-source framework developed by JetBrains designed to build, run, and observe AI agents in idiomatic Kotlin.

```
                         ┌────────────────────────────────────┐
                         │           Koog Agent DSL           │
                         │   (Prompts, Tools, State Machine)  │
                         └─────────────────┬──────────────────┘
                                           │ manages
         ┌─────────────────────────────────┼─────────────────────────────────┐
         ▼                                 ▼                                 ▼
┌──────────────────┐              ┌──────────────────┐              ┌──────────────────┐
│  State & Memory  │              │  Tool Execution  │              │  Observability   │
│- State machines  │              │- Parallel calls  │              │- OpenTelemetry   │
│- History compress│              │- MCP integration │              │- Langfuse        │
│- Persistence     │              │- Ollama / Cloud  │              │- W&B Weave       │
└──────────────────┘              └──────────────────┘              └──────────────────┘
```

### Key Architectural Capabilities:
1. **True Multiplatform Agent Runtime:** Builds agents executable across JVM, Android, iOS, JavaScript, and WebAssembly.
2. **State Machine Persistence:** Rather than just storing chat messages as strings, Koog persists the entire agent state machine, allowing long-running background tasks to be paused, resumed, or recovered after crashes.
3. **Dynamic LLM Switching:** Seamlessly switch underlying models (e.g. from Claude to GPT to local Ollama) mid-conversation while automatically adapting tool definitions and conversation history.
4. **Context Compression:** Built-in strategies to compress and summarize message histories for long-running workflows without manual prompt trimming.
5. **Real-Time Streaming & Parallel Execution:** Coroutine-native streaming for low latency, executing independent tool calls concurrently.

### Minimal Koog Agent Example:

```kotlin
import ai.koog.agent.AIAgent
import ai.koog.agent.executor.simpleOpenAIExecutor
import ai.koog.models.OpenAIModels
import kotlinx.coroutines.runBlocking

fun main() = runBlocking {
    val agent = AIAgent(
        // Accepts OpenAI, Anthropic, Google, OpenRouter, or Ollama
        executor = simpleOpenAIExecutor(System.getenv("OPENAI_API_KEY")),
        systemPrompt = "You are a helpful assistant. Answer user questions concisely.",
        llmModel = OpenAIModels.Chat.GPT4o
    )

    val response = agent.run("Hello! How can you help me?")
    println(response)
}
```

---

## 2. Model Context Protocol (MCP) Kotlin SDK

The **MCP Kotlin SDK** (`modelcontextprotocol/kotlin-sdk`) is the official Kotlin Multiplatform implementation of Anthropic's Model Context Protocol.

### Core Capabilities:
* **Separation of Context and Model:** Standardizes how external tools, files, databases, and prompts are fed to LLMs without hardcoding provider-specific APIs.
* **Dual Roles:**
  * **MCP Client:** Connects to remote or local MCP servers to discover and consume tools and resources.
  * **MCP Server:** Exposes domain services, internal database queries, or IDE commands as tools and prompts that LLM clients can invoke.
* **Transports:** Supports standard communication channels:
  * `stdio` (Standard input/output for local CLI tool execution).
  * `SSE` (Server-Sent Events over HTTP).
  * `WebSocket` (Full-duplex bidirectional communication).
* **Multiplatform Target:** Runs seamlessly across JVM, WebAssembly, and iOS.

---

## 3. Official Reference Links
* [Koog Documentation](https://docs.koog.ai/)
* [Koog GitHub Repository](https://github.com/JetBrains/koog)
* [MCP Kotlin SDK GitHub Repository](https://github.com/modelcontextprotocol/kotlin-sdk)
