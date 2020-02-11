# Photogram GUI

In this project, you will add a GUI on top of the queries we previously built.

### [Here's your target.](http://photogram-gui.matchthetarget.com/)

 - A list of users.
   - A form to add a new user.
 - A details page for a user.
   - A form to edit a user.
   - A list of the user's own photos.
 - A list of photos.
   - A form to add a new photo.
 - A details page for a photo.
   - A form to edit a photo.
   - A link to delete a photo.
   - A comment section.
   - A form to add a new comment.

## Standard Workflow

 1. Start the web server: `bin/server`
 1. As often as you like, reset your database with dummy data: `rails dev:prime`
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
