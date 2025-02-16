<script lang="ts">
	import Header from './templates/header.svelte'
	import '../app.css';
</script>

<Header />

<main>
    <section id="subjects">
        <a href="courses/english">
        <div class="subject">
            <img src="English.jpg" alt="English">
            <h1>English</h1>
        </div>
        </a>
        <a href="courses/math">
        <div class="subject">
            <img src="Math.jpg" alt="English">
            <h1>Math</h1>
        </div>
        </a>
        <a href="courses/comp">
        <div class="subject">
            <img src="Computer Science.jpg" alt="English">
            <h1 style="font-size: 19px">Computer Science</h1>
        </div>
    </a>
    </section>
    
    <section id="progress">
        <h1> Progress to Next Level </h1>
        <div id="progress-border">
            <div id="progress-bar">
                <p id="progress-bar-text">25/100</p>
            </div>
        </div>
    </section>    
</main>

<style>
    #subjects {
        width: 50%;
        margin: 0 auto;
        vertical-align: middle;
    }
    .subject {
        display: inline-block;
        width: 30%;
        padding: 1rem;
        border: 1px solid green;
    }

    .subject h1 {
        text-align: center;
    } 

    img {
        width: 500px;
        height: 300px;
        object-fit: cover;
        position: relative;
    }

    #progress {
        margin: 0 auto;
        width: 50%;
        padding: 1rem;
        text-align: center;
    }

    #progress-border {
        position: relative;
        border: 1px solid lightgreen;
        height: 1rem;
        width: 100%;
    }

    #progress-bar {
        background-color: darkgreen;
        width: 25%;
        height: 0.8rem;
    }

    #progress-bar-text {
        position: absolute;
        margin: 0;
        left: 0;
        right: 0;
        top: 50%;
        transform: translateY(-50%);
        font-size: 14px;
    }

    .subject:hover{
        transform:scale(1.05);
    }
</style>