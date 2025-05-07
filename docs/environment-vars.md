# Environment Variables

## Overview
This document outlines the environment variables used in the project, their purpose, and configuration guidelines.

## Environment Configuration
- Development, staging, and production environments should have separate configurations
- Use `.env` files for local development
- Store sensitive values in secure environment variable storage for production
- Never commit sensitive environment variables to version control

## Required Environment Variables

### Application Configuration
- `APP_ENV`: Application environment (development, staging, production)
- `APP_DEBUG`: Debug mode flag (true/false)
- `APP_PORT`: Port the application runs on
- `APP_URL`: Base URL of the application
- `APP_SECRET`: Secret key for application security

### Database Configuration
- `DB_HOST`: Database host
- `DB_PORT`: Database port
- `DB_NAME`: Database name
- `DB_USER`: Database username
- `DB_PASSWORD`: Database password
- `DB_SSL`: Whether to use SSL for database connection (true/false)

### Authentication
- `AUTH_SECRET`: Secret for JWT or session tokens
- `AUTH_EXPIRY`: Token expiration time
- `AUTH_REFRESH_EXPIRY`: Refresh token expiration time

### External Services
- `API_KEY_SERVICE1`: API key for external service 1
- `API_URL_SERVICE1`: URL for external service 1
- `API_KEY_SERVICE2`: API key for external service 2
- `API_URL_SERVICE2`: URL for external service 2

### Logging and Monitoring
- `LOG_LEVEL`: Logging level (debug, info, warn, error)
- `LOG_FORMAT`: Logging format
- `MONITORING_URL`: URL for monitoring service

## Optional Environment Variables
- `CACHE_DRIVER`: Cache driver to use
- `QUEUE_CONNECTION`: Queue connection to use
- `MAIL_DRIVER`: Mail driver to use
- `MAIL_HOST`: Mail host
- `MAIL_PORT`: Mail port
- `MAIL_USERNAME`: Mail username
- `MAIL_PASSWORD`: Mail password

## Environment Setup Guide
1. Copy `.env.example` to `.env` for local development
2. Fill in required values based on your local setup
3. For production, use appropriate environment variable management
4. Restart application after changing environment variables

## Security Considerations
- Rotate secrets regularly
- Use different secrets for different environments
- Limit access to production environment variables
- Audit environment variable access
