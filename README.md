# Amrut Cake Studio Website

A modern, responsive website for Amrut Cake Studio built with vanilla HTML, CSS, and JavaScript.

## Setup Instructions

### 1. Configure GitHub Secret

1. Go to your GitHub repository settings
2. Navigate to **Settings** → **Secrets and variables** → **Actions**
3. Click **New repository secret**
4. Add a secret with:
   - **Name**: `MOBILENUMBER`
   - **Value**: Your WhatsApp mobile number with country code (e.g., `919876543210`)

### 2. Enable GitHub Pages

1. Go to **Settings** → **Pages**
2. Under **Source**, select **GitHub Actions**

### 3. Deploy

The site will automatically deploy when you push to the `main` branch. The GitHub Actions workflow will:
- Generate `config.js` with your mobile number from the secret
- Deploy all files to GitHub Pages

### Local Development

For local testing:
1. Edit `config.js` and replace `YOUR_MOBILE_NUMBER_HERE` with your mobile number
2. Open `index.html` in a browser or use a local server:
   ```bash
   python3 -m http.server 8000
   ```
3. Visit `http://localhost:8000`

**Note**: Don't commit your actual mobile number in `config.js` - it will be automatically generated during deployment.

### Updating Content

#### Add/Change Cake Photos
1. Add images to the `images/` folder
2. Update the `gallery` array in `index.html` (around line 180)

#### Update Pricing
Update the `rates` array in `index.html` (around line 192)

## Deployment Status

The site deploys automatically via GitHub Actions. Check the **Actions** tab to monitor deployment status.
