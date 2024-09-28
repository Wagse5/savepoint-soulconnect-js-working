$therapistsApiContent = @"
import { NextApiRequest, NextApiResponse } from 'next';
import fs from 'fs';
import path from 'path';

export default function handler(req: NextApiRequest, res: NextApiResponse) {
  if (req.method === 'GET') {
    try {
      const filePath = path.join(process.cwd(), 'therapists.json');
      console.log('Attempting to read file:', filePath);
      
      if (!fs.existsSync(filePath)) {
        console.error('therapists.json file not found');
        return res.status(404).json({ error: 'Therapists data file not found' });
      }

      const fileContents = fs.readFileSync(filePath, 'utf8');
      console.log('File contents:', fileContents);

      const therapists = JSON.parse(fileContents);
      console.log('Parsed therapists:', therapists);
      
      res.status(200).json(therapists);
    } catch (error) {
      console.error('Error reading therapists data:', error);
      res.status(500).json({ error: 'Error fetching therapists data', details: error.message });
    }
  } else {
    res.setHeader('Allow', ['GET']);
    res.status(405).end(`Method ${req.method} Not Allowed`);
  }
}
"@

Set-Content -Path "src\pages\api\therapists.ts" -Value $therapistsApiContent
Write-Host "Updated therapists API route with improved error handling and logging." -ForegroundColor Green
