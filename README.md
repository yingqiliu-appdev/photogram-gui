# Photogram GUI

In this project, we'll practice populating pages with data from a database.

We'll also build some forms to add records to tables.

## Target

[Here's your target.](https://photogram-gui.matchthetarget.com/) Not all parts are required for now; in particular, the edit forms are optional challenges.

The required tasks are:

 - `/users` should
    - display all the users
    - a link to get to details for each user
    - a form to add a new user
 - `/users/[USERNAME]` should
    - display the username of the user
    - the photos posted by the user
 - `/photos` should have a form to add a new photo
 - `/photos/[ID]` should
    - display the details of a photo
    - displays the comments that have been made on the photo
    - have a form to add a comment to the photo

## Standard Workflow

 1. Start the web server: `bin/server`
 1. As often as you like, reset your database with dummy data: `rails dummy_data`
 2. Run `rails grade` as often as you like to see how you are doing, but **test your app manually first to make sure it matches the target's behavior**.

## Things to keep in mind

 - When you make forms, don't forget to add a `<label>` for every form control (`<input>`, `<textarea>`, etc). The `<label>` should have a `for=""` attribute that matches the `id=""` attribute of the input. For example,

    ```html
    <label for="zebra">Fan</label>
    <input id="zebra" type="text" name="qs_fan_id">
    ```

    This lets the browser know which label belongs to which input, which helps with [accessibility](https://developer.mozilla.org/en-US/docs/Learn/Accessibility/What_is_accessibility), ergonomics, SEO, and most importantly for you right now — automated tests.
 - I added some validations to try and help prevent bogus data from entering your tables. Check them out in your models.
 - Don't be alarmed by the number of automated tests. Most of them are there as hints to help you structure your forms correctly.
 - It's okay to View Source on the target to get hints on what HTML we used.
