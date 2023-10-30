#!/bin/bash

# Sender's email address
sender_email="keithkareithi09@gmail.com"

# Read names and email addresses from students.txt file
while IFS=, read -r name email
do
    # Compose the email content with personalized message
    subject="Invitation to 3rd Year Projects Webinar"
    message="Dear $name,\n\nInviting the you as our computing student to our 3rd Year
                Projects on innovation incubation scheduled Monday 23rd
                    October from 10:00 A.M. The Zoom link for joining in on
                        Friday is as given below. We shall also broadcast the webinar
                    on our youtube channel. Youtube link:
                    https://youtu.be/ONVTA7LKMIs"

    # Send email using ssmtp
    echo -e "To: $email\nSubject: $subject\n\n$message" | ssmtp "$email"

    # Print a message indicating the email has been sent
    echo "Invitation sent to $name ($email)"
done < students.txt
