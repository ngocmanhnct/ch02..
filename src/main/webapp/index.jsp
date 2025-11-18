<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/include/header.html" />
    <img src="images/Logo.png" alt="Murach Logo" width="100" class="logo">
    <h1>Join our email list</h1>
    <p>To join, please fill out the survey below.</p>

    <form action="emailList" method="post">
        <input type="hidden" name="action" value="add">
        
        <fieldset>
            <legend>Your Information</legend>
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" id="firstName" name="firstName" required>
            </div>
            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" id="lastName" name="lastName" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="dob">Date of Birth:</label>
                <input type="text" id="dob" name="dateOfBirth"> 
            </div>
        </fieldset>
        
        <fieldset>
            <legend>How did you hear about us?</legend>
            <div class="form-group-radio">
                <input type="radio" id="search_engine" name="referral_source" value="search_engine">
                <label for="search_engine">Search engine</label>
            </div>
            <div class="form-group-radio">
                <input type="radio" id="word_of_mouth" name="referral_source" value="word_of_mouth">
                <label for="word_of_mouth">Word of mouth</label>
            </div>
            <div class="form-group-radio">
                <input type="radio" id="social_media" name="referral_source" value="social_media">
                <label for="social_media">Social Media</label>
            </div>
            <div class="form-group-radio">
                <input type="radio" id="other" name="referral_source" value="other">
                <label for="other">Other</label>
            </div>
        </fieldset>

        <fieldset>
            <legend>Announcements</legend>
            <p>Would you like to receive announcements about new CDs and special offers?</p>
            <div class="form-group-check">
                <input type="checkbox" id="like_that" name="like_that" value="yes">
                <label for="like_that">YES, I'd like that.</label>
            </div>
            <div class="form-group-check">
                <input type="checkbox" id="email_announcements" name="email_announcements" value="yes">
                <label for="email_announcements">YES, please send me email announcements.</label>
            </div>
        </fieldset>

        <fieldset>
            <legend>Contact Method</legend>
            <div class="form-group">
                <label for="contact_method">Please contact me by:</label>
                <select id="contact_method" name="contact_method">
                    <option value="email_or_postal" selected>Email or postal mail</option>
                    <option value="email_only">Email only</option>
                    <option value="postal_only">Postal mail only</option>
                </select>
            </div>
        </fieldset>

        <input type="submit" value="Submit" id="submit">

    </form>

