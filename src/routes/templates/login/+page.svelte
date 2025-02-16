<script lang="ts">
    import Header from '../header.svelte'
</script>

<Header></Header>

<section>
    <h1 style="text-align: center;">Log In</h1>
    <form>
        <label for="login-username">Username</label> <br>
        <input type="text" name="login-username"> <br>
        <label for="login-password">Password</label> <br>
        <input type="password" name="login-password"> <br> <br>
    </form>
    <hr> <br>
    <h1 style="text-align: center;">Register</h1>
    <form>
        <label for="register-username">Username</label> <br>
        <input type="text" name="register-username"> <br>
        <label for="register-password">Password</label> <br>
        <input type="password" name="register-password"> <br>
    </form>
</section>

<style>
    section {
        margin: 0 auto;
        width: fit-content;
        padding: 1rem;
        border: 1px solid green;
        border-radius: 1rem;
    }

    form {
        margin: 0 auto;
    }

    input {
        border: 1px solid green;
    }
</style>