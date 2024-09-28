# Teatagutava Project

## Recent Changes
- Fixed 'fs' module issue in `src/lib/therapists.ts`
- Updated `src/components/AvailableSlots.tsx` to use the App Router and fix the NextRouter issue
- Updated `src/app/bookings/payment/page.tsx` to be a client component and use correct Next.js 13+ imports
- Improved text contrast and overall styling

## Project Structure
src/
├── app/
│ ├── api/
│ │ ├── availability/
│ │ │ └── route.ts # API route for handling availability requests
│ │ └── bookings/
│ │ └── route.ts # API route for handling booking requests
│ └── bookings/
│ ├── payment/
│ │ └── page.tsx # Dummy payments page (client component)
│ └── page.tsx # Main bookings page
├── components/
│ └── AvailableSlots.tsx # Component for displaying available time slots
└── lib/
└── therapists.ts # Functions for fetching therapist data

## Components

### `src/lib/therapists.ts`
- Exports the `Therapist` interface and `getTherapists` function
- Reads therapist data from a JSON file
- Uses `fs.promises` to avoid build errors

### `src/app/api/availability/route.ts`
- Handles GET requests for fetching therapist availability
- Uses the `getTherapists` function to fetch therapist data
- Implements mock availability generation
- Improved error handling and detailed logging

### `src/app/bookings/page.tsx`
- Displays a list of therapists and their available time slots
- Allows users to select a date and book a session
- Uses the `AvailableSlots` component to display time slots

### `src/components/AvailableSlots.tsx`
- Client-side component (uses "use client" directive)
- Fetches and displays available time slots for therapists on a given date
- Allows users to select a time slot
- Added a "Book Selected Slot" button
- Uses Next.js App Router for navigation
- Improved styling and text contrast

### `src/app/bookings/payment/page.tsx`
- Client-side component (uses "use client" directive)
- Dummy payments page for processing bookings
- Displays selected booking details from URL parameters
- Simulates payment processing with a delay
- Uses Next.js App Router for navigation

## Next Steps
1. Implement actual availability logic in the API route, including database integration
2. Integrate real payment processing
3. Implement a system to block the selected time slot on the therapist's calendar upon successful booking
4. Create a booking success page (`/bookings/success`)
5. Add more detailed error messages and validation to the booking process
6. Improve the overall UI/UX of the booking flow
7. Implement proper error boundary components for better error handling
8. Add unit and integration tests for the booking flow
9. Ensure all API routes are using the App Router implementation for consistency

## How to Run the Project
1. Install dependencies: `npm install`
2. Start the development server: `npm run dev`
3. Open your browser and navigate to `http://localhost:3000`

## Available Scripts
- `npm run dev`: Starts the development server
- `npm run build`: Builds the production-ready application
- `npm start`: Starts the production server
- `npm run lint`: Runs the linter to check for code style issues

## Troubleshooting
If you encounter any issues, please check the console logs in your browser and the terminal where you're running the development server. We've added detailed logging throughout the application to help diagnose problems.
