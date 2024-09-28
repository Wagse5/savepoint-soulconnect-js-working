$readmeUpdate = @"

## Recent Changes
- Updated `therapists.ts` API route with improved error handling and logging
- Added checks for file existence and detailed console logging for debugging

## Troubleshooting
If you encounter issues with loading therapists data:
1. Check the server logs for detailed error messages
2. Ensure the `therapists.json` file exists in the project root and is properly formatted
3. Verify that the file has read permissions for the server process

"@

Add-Content -Path "README.md" -Value $readmeUpdate
Write-Host "Updated README with troubleshooting information." -ForegroundColor Green
