<script lang="ts">
    import '../../app.css';
</script>

<main>
    <header>
        <h1>
            <a href = "../">
                Study Games
            </a>
        </h1>
        <div id="profile-panel">
            <div id="profile-info">
                <img src="/default.jpg" width="32px" height="32px" alt="" id="profile-img">
                <div id="profile-text">
                    <p>Morose</p>
                    <a href="./leaderboard" style="font-size: 13px; margin: 0">Level 1</a>
                </div>
            </div>
        </div>
    </header>
</main>

<style>
    header {
        width: 100%;
        height: 5rem;
        padding: 1rem;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    #profile-panel {
        display: flex;
        align-items: center;
    }

    #profile-info {
        display: flex;
        align-items: center;
    }

    #profile-img {
        border-radius: 50%;
        margin-right: 10px; 
    }

    #profile-text p {
        margin: 0;
        padding: 0;
    }

    #profile-panel a {
        font-size: 13px;
        margin: 0;
    }
</style>
