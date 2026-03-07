# Neo4j Customer 360 — Hosted MCP Demo

A live demo showing how Claude connects to a Neo4j AuraDB graph via the hosted MCP server (no server deployment required) to answer natural language questions about customer data.

## What This Demo Shows

- **Hosted MCP server** — Neo4j hosts the MCP endpoint, developers just copy a URL
- **OAuth authentication** — Secure login via Aura credentials, no API key management
- **Customer 360 graph** — Connected customer data across purchases, support, channels, and segments
- **Natural language queries** — Claude traverses the graph without writing Cypher

## Data Model

```
(Customer)-[:PLACED]->(Order)-[:CONTAINS]->(Product)
(Customer)-[:SUBMITTED]->(SupportTicket)-[:ABOUT]->(Product)
(Customer)-[:INTERACTS_VIA]->(Channel)
(Customer)-[:LOCATED_IN]->(Location)
(Customer)-[:BELONGS_TO]->(Segment)
(Customer)-[:VIEWED]->(Product)
(Customer)-[:REFERRED]->(Customer)
```

### Node Types

| Node | Key Properties |
|---|---|
| Customer | id, name, email, age, tier |
| Product | id, name, category, price |
| Order | id, date, total, status |
| SupportTicket | id, issue, status, sentiment |
| Channel | name |
| Location | city, country, region |
| Segment | name |

## Setup

### 1. Load Data into AuraDB

Run the Cypher scripts in order from the `/cypher` directory:

```
01_segments.cypher
02_locations.cypher
03_channels.cypher
04_products.cypher
05_customers.cypher
06_orders.cypher
07_support_tickets.cypher
08_relationships.cypher
```

### 2. Create Aura Agent

In your AuraDB console:
1. Open **Aura Agent**
2. Create a new agent connected to your instance
3. Enable **MCP server** and make it **public**
4. Copy the MCP endpoint URL from the `[...]` menu

### 3. Connect Claude Desktop

1. Open Claude Desktop → Settings → Connectors
2. Click **Add custom connector**
3. Paste your MCP endpoint URL
4. Log in with your Aura credentials when prompted

### 4. Run Demo Queries

```
Give me a complete 360 view of Sarah Chen.

Which high-value customers have open support tickets?

Which products have the most complaints and who are the affected customers?

Find all premium tier customers with open support tickets and tell me
which channel to use to reach each of them.
```

## Agent Persona

See `neo4j_agent_prompt.md` for the Sakshi agent system prompt —
Neo4j's Senior Product Strategy & Technical Product Marketing Agent.
