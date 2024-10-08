const availability = {
    stylist1: {
        '2024-10-08': ['09:00', '10:00', '11:00', '14:00'],
        '2024-10-09': ['10:00', '12:00', '15:00']
    },
    stylist2: {
        '2024-10-08': ['10:00', '13:00', '16:00'],
        '2024-10-09': ['09:00', '11:00', '14:00']
    },
     stylist3: {
        '2024-10-08': ['09:00', '10:00', '11:00', '14:00'],
        '2024-10-09': ['10:00', '12:00', '15:00']
    },
    stylist4: {
        '2024-10-08': ['10:00', '13:00', '16:00'],
        '2024-10-09': ['09:00', '11:00', '14:00']
    },
     stylist5: {
        '2024-10-08': ['09:00', '10:00', '11:00', '14:00'],
        '2024-10-09': ['10:00', '12:00', '15:00']
    },
    stylist6: {
        '2024-10-08': ['10:00', '13:00', '16:00'],
        '2024-10-09': ['09:00', '11:00', '14:00']
    },
     stylist7: {
        '2024-10-08': ['09:00', '10:00', '11:00', '14:00'],
        '2024-10-09': ['10:00', '12:00', '15:00']
    },
    stylist8: {
        '2024-10-08': ['10:00', '13:00', '16:00'],
        '2024-10-09': ['09:00', '11:00', '14:00']
    }
    // Add more availability data as needed
};

document.getElementById('date').addEventListener('change', updateAvailableTimes);
document.getElementById('stylist').addEventListener('change', updateAvailableTimes);

function updateAvailableTimes() {
    const stylist = document.getElementById('stylist').value;
    const date = document.getElementById('date').value;
    const timeSelect = document.getElementById('time');

    // Clear previous options
    timeSelect.innerHTML = '';

    if (stylist && date && availability[stylist] && availability[stylist][date]) {
        const times = availability[stylist][date];
        times.forEach(time => {
            const option = document.createElement('option');
            option.value = time;
            option.textContent = time;
            timeSelect.appendChild(option);
        });
    } else {
        const option = document.createElement('option');
        option.value = '';
        option.textContent = 'No available times';
        timeSelect.appendChild(option);
    }
}

document.getElementById('appointmentForm').addEventListener('submit', function (event) {
    event.preventDefault();

    const stylist = document.getElementById('stylist').value;
    const date = document.getElementById('date').value;
    const time = document.getElementById('time').value;
    const deposit = document.getElementById('deposit').value;

    // Create a payment intent on the server
    const response = await fetch('/create-payment-intent', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ amount: deposit * 100 }) // Amount in cents
    });

    const paymentIntent = await response.json();

    // Confirm the payment on the client
    const { error } = await stripe.confirmCardPayment(paymentIntent.client_secret, {
        payment_method: {
            card: {
                // Assuming you have a card element on your form
                // card: cardElement
            }
        }
    }),
});
if (error) {
    console.error(error);
    alert('Payment failed');
} else {
    const confirmationDetails = `You have booked an appointment with ${stylist} on ${date} at ${time}. Deposit of $${deposit} has been paid.`;
    document.getElementById('confirmationDetails').innerText = confirmationDetails;
    document.getElementById('confirmation').style.display = 'block';
}

//Server - Side Code
//You’ll need a server - side endpoint to create a payment intent.Here’s an example using Node.js and Express:

const express = require('express');
const app = express();
const stripe = require('stripe')('your-secret-key'); // Replace with your Stripe secret key

app.use(express.json());

app.post('/create-payment-intent', async (req, res) => {
    const { amount } = req.body;

    try {
        const paymentIntent = await stripe.paymentIntents.create({
            amount,
            currency: 'usd'
        });

        res.send({
            client_secret: paymentIntent.client_secret
        });
    } catch (error) {
        res.status(500).send({ error: error.message });
    }
});

app.listen(3000, () => {
    console.log('Server is running on port 3000');
});

    const confirmationDetails = `You have booked an appointment with ${stylist} on ${date} at ${time}.`;
    document.getElementById('confirmationDetails').innerText = confirmationDetails;
document.getElementById('confirmation').style.display = 'block';

