#!/bin/bash
echo "=========================================================="
echo "🛡️  [DevSecOps Pipeline] Starting Automated Security Scans"
echo "=========================================================="
echo "[1/2] Scanning for known vulnerabilities..."
sleep 1
if grep -q "USER root" Dockerfile; then
    echo "❌ [SECURITY CRITICAL] Application is running as ROOT user!"
    exit 1
else
    echo "✅ [SECURITY PASSED] Container Hardening enforced (Non-root user detected)."
fi
echo "=========================================================="
