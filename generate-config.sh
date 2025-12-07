#!/bin/bash
# Generate config.js with mobile number from environment variable

MOBILE="${MOBILENUMBER:-YOUR_MOBILE_NUMBER_HERE}"

cat > config.js << EOF
window.AMRUT_CONFIG = {
  MOBILENUMBER: '${MOBILE}'
};
EOF

echo "✅ Generated config.js with MOBILENUMBER"
