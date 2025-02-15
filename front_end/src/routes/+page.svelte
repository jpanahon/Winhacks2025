<script>
    let data;

    async function fetchData() {
        const res = await fetch("http://127.0.0.1:8080/api/hello");
        data = await res.json();
    }

    fetchData();
</script>

<h1>{data?.message}</h1>

<section id="subjects">
    <section class="subject">
        <img src="English.jpg" alt="English">
        <h1>English</h1>
    </section>
    <section class="subject">
        <img src="Math.jpg" alt="English">
        <h1>Math</h1>
    </section>
    <section class="subject">
        <img src="Computer Science.jpg" alt="English">
        <h1>Computer Science</h1>
    </section>
</section>

<section id="progress">
    <h1> Progress to Next Level: </h1>
    <div id="progress-border">
        <div id="progress-bar">
            <p id="progress-bar-text">25/100</p>
        </div>
    </div>
</section>

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
        width: 1000px;
        height: 500px;
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
        height: 1rem;
    }

    #progress-bar-text {
        position: absolute;
        margin: 0;
        left: 0;
        right: 0;
        top: 50%;
        transform: translateY(-50%);
    }
</style>