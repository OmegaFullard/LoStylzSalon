document.getElementById('appointmentForm').addEventListener('submit', function(event) {
    event.preventDefault();
    
    const stylist = document.getElementById('stylist').value;
    const date = document.getElementById('date').value;
    const time = document.getElementById('time').value;

    const confirmationDetails = `You have booked an appointment with ${stylist} on ${date} at ${time}.`;
    document.getElementById('confirmationDetails').innerText = confirmationDetails;
    document.getElementById('confirmation').style.display = 'block';
});