# GitHub Repository Setup Guide

Follow these steps to create a private GitHub repository for your Windsurf Project Template:

## 1. Create a New Repository on GitHub

1. Go to [GitHub](https://github.com/) and sign in to your account
2. Click on the "+" icon in the top-right corner and select "New repository"
3. Enter "windsurf-project-template" as the Repository name
4. Add a description: "A comprehensive project structure template for AI-assisted software development using the Windsurf framework"
5. Select "Private" for repository visibility
6. Check "Add a README file" (we'll replace it with our custom README)
7. Select "Add .gitignore" and choose "Node" (we'll replace it with our custom .gitignore)
8. Select "Choose a license" and select "MIT License" (we'll replace it with our custom LICENSE)
9. Click "Create repository"

## 2. Clone the Repository Locally

```bash
git clone https://github.com/YOUR_USERNAME/windsurf-project-template.git
cd windsurf-project-template
```

## 3. Copy Project Structure Files

Copy all files from your current project structure to the cloned repository:

```bash
# Assuming your current project is at /Users/pedro.fangueiro/Library/Mobile Documents/com~apple~CloudDocs/codebase/default
cp -R "/Users/pedro.fangueiro/Library/Mobile Documents/com~apple~CloudDocs/codebase/default/"* /path/to/windsurf-project-template/
```

## 4. Commit and Push to GitHub

```bash
git add .
git commit -m "Initial commit: Complete Windsurf project template structure"
git push origin main
```

## 5. Set Up Branch Protection (Optional but Recommended)

1. Go to your repository on GitHub
2. Click on "Settings" > "Branches"
3. Under "Branch protection rules", click "Add rule"
4. Enter "main" as the branch name pattern
5. Check "Require pull request reviews before merging"
6. Check "Require status checks to pass before merging"
7. Click "Create"

## Using the Template for New Projects

When starting a new project:

1. Go to your "windsurf-project-template" repository on GitHub
2. Click on "Use this template" > "Create a new repository"
3. Enter a name for your new project
4. Select visibility (private recommended)
5. Click "Create repository from template"
6. Clone your new repository locally
7. Start working with Windsurf IDE

## Keeping the Template Updated

As you refine your workflow and improve the template:

1. Make changes to your template repository
2. Commit and push the changes
3. Future projects created from the template will include these improvements

This approach allows you to maintain a "golden standard" project structure that evolves with your needs while keeping each project separate.
