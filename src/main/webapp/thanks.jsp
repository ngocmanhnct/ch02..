<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

    <div class="content-card">

        <h1>Thanks for joining our email list</h1>

        <p>Here is the information that you entered:</p>

        <div class="user-data">
            <label>Email:</label>
            <span>${user.email}</span><br>
            
            <label>First Name:</label>
            <span>${user.firstName}</span><br>
            
            <label>Last Name:</label>
            <span>${user.lastName}</span><br>

            <label>Date of Birth:</label>
            <span>${dateOfBirth}</span><br>

            <label>Referral Source:</label>
            <span>${referralSource}</span><br>

            <label>Receive Announcements:</label>
            <span>${likeThat}</span><br>

            <label>Email Announcements:</label>
            <span>${emailAnnouncements}</span><br>

            <label>Contact Method:</label>
            <span>${contactMethod}</span><br>
        </div>

        <p>To enter another email address, click on the Back
            button in your browser or the Return button shown
            below.</p>

        <form action="" method="get">
            <input type="hidden" name="action" value="join">
            <input type="submit" value="Return">
        </form>

    </div>

    <%-- Footer logic n?u b?n s? d?ng include --%>
    <%-- <jsp:include page="/includes/footer.jsp" /> --%>
    
    <p>&copy; Copyright ${currentYear} Mike Murach &amp; Associates</p>
    
</body>
</html>