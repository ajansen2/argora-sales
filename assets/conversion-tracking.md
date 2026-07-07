# Conversion Tracking — verify BEFORE trusting any ad number

Stack: Next.js (Vercel) + Supabase auth.

1. In Google Ads: Goals -> Conversions -> New -> Website -> "Sign-up".
   Grab the AW-XXXXXXX ID + conversion label.
2. Site tag in app/layout.tsx (Next.js App Router) via next/script:
   <Script src="https://www.googletagmanager.com/gtag/js?id=AW-XXXXXXX" strategy="afterInteractive" />
   <Script id="gads" strategy="afterInteractive">
     {`window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments);}
       gtag('js',new Date());gtag('config','AW-XXXXXXX');`}
   </Script>
3. Fire the event where signup ACTUALLY completes. With Supabase auth that's
   usually the post-auth redirect/welcome page or the onAuthStateChange
   SIGNED_IN handler for a NEW user — not the button click:
   gtag('event','conversion',{send_to:'AW-XXXXXXX/LABEL'});
   Guard against double-firing on revisits (flag in user metadata or
   localStorage-equivalent check server-side).
4. TEST: open the site from a real ad click (or use Google Tag Assistant),
   complete a signup, confirm the conversion appears (can take a few hours).
   Until you have personally seen one test conversion land: the data is fiction.
5. Also track the demo-line: a Google forwarding number or a call-click
   conversion on the tel: link tells you if ads drive demo calls even when
   signups lag.
