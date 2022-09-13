let log = [
    'Learn to hold your camera properly',
    'Start shooting in RAW',
    'Understand the exposure triangle',
    'Wide aperture is best for portraits',
    'Narrow aperture is best for landscapes',
    'Learn to use Aperture Priority and Shutter Priority modes',
    'Do not be afraid to raise the ISO',
    'Make a habit of checking the ISO before you start shooting'
]
setInterval(function () {
    document.querySelector('#log').textContent = log[Math.floor(Math.random()*log.length)] 
}, 5000);

