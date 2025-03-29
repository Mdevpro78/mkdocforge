<!-- markdownlint-disable MD013 -->

<!-- markdownlint-disable MD043 -->

# 🔗 URL Shortener System Architecture

## 📋 Overview

!!! info "System Purpose"

    A scalable URL shortening service that converts long URLs into short, manageable links while providing analytics and user management capabilities.

### 🖼️ Architecture Diagrams

#### Standard PlantUML View

```plantuml
{{ includex("docs/diagrams/url_shortner/designs/system_architecture.plantuml") }}
```

#### C4 Architecture Model

```plantuml
{{ includex("docs/diagrams/url_shortner/designs/system_architecture_c4.plantuml") }}
```

## 🧩 System Components

### 🌐 Frontend

- **📱Web Application**: Browser-based interface for URL shortening and management
- **📲Mobile Application**: On-the-go URL creation and management
- **⚙️Admin Dashboard**: System monitoring, user management, and configuration

### 🖥️ Backend Services

- **🚪API Gateway**: Entry point for all client requests, handling authentication and routing
- **✂️URL Service**: Core business logic for shortening and redirecting URLs
- **👤User Service**: Manages user accounts, authentication, and permissions
- **📊Analytics Service**: Collects and processes usage statistics
- **🛡️Rate Limiter**: Prevents abuse by limiting request rates

### 💾 Data Storage

- **🔗URL Repository**: Stores URL mappings and metadata
- **👥User Repository**: Stores user account information
- **📈Analytics Repository**: Stores click events and metrics

### ⚡ Cache Layer

- **🚀Redis Cluster**: In-memory cache for high-speed URL lookups and counters

## 🛠️ Technology Stack

!!! tip "Recommended Technologies"

    - **Frontend**: React.js/Next.js (web), React Native (mobile)
    - **Backend**: Java/Spring Boot or Node.js/Express
    - **Database**: PostgreSQL (primary storage), MongoDB (analytics)
    - **Cache**: Redis (for URL lookups and counters)
    - **API Gateway**: Spring Cloud Gateway or Kong
    - **Monitoring**: Prometheus, Grafana
    - **Container Orchestration**: Kubernetes

## 📈 Scalability & Performance

!!! success "Key Strategies"

    - Horizontally scalable microservices
    - Database sharding for URL repository
    - Read replicas for high-traffic queries
    - Redis cluster for distributed caching
    - CDN integration for global low-latency access
    - Asynchronous processing for analytics events
    - Content-based partitioning for analytics data

## 📈 System Metrics

!!! info "Key Metrics"

    - **URL Shortening Rate**: Number of URLs created per second
    - **URL Redirection Rate**: Number of URL redirects per second
    - **Database Read Latency**: Time taken to retrieve URLs from the database
    - **Cache Hit Rate**: Percentage of requests served from the cache

## 📝 Static Class Diagrams

```plantuml
{{ includex("docs/diagrams/url_shortner/designs/class_diagrams.plantuml") }}
```

## 🔄 System Workflows

### URL Shortening Process

```plantuml
{{ includex("docs/diagrams/url_shortner/designs/url_shortening_process.plantuml") }}
```

### URL Redirection Flow

```plantuml
{{ includex("docs/diagrams/url_shortner/designs/url_redirection_flow.plantuml") }}
```

### Analytics Tracking

```plantuml
{{ includex("docs/diagrams/url_shortner/designs/analytical_tracking.plantuml") }}
```

### URL Lifecycle

```plantuml
{{ includex("docs/diagrams/url_shortner/designs/url_lifecycle.plantuml") }}
```

## 🗃️ Database Schema

```plantuml
{{ includex("docs/diagrams/url_shortner/designs/database_schema.plantuml") }}
```

## 🧠 Key Design Decisions

!!! abstract "Technical Choices"

    1. **🔤Short Code Generation**: Custom base62 encoding algorithm for short, unique, readable codes
    2. **💨Cache Strategy**: Multi-level caching with Redis for hot URLs to minimize database load
    3. **📊Analytics Processing**: Asynchronous event processing to prevent impact on redirection performance
    4. **🗄️Database Partitioning**: URLs partitioned by creation date for improved query performance
    5. **🔒Security Measures**: Rate limiting, input validation, and output encoding to prevent abuse
    6. **⏱️URL Expiration**: Configurable expiration policies with automatic cleanup for database management
    7. **📡Monitoring**: Comprehensive metrics collection for system health and performance analysis
    8. **🏷️Custom Domain Support**: Optional custom domain integration for branded short URLs
