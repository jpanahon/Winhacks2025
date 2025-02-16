<script lang="ts">
    import Header from '../../templates/header.svelte';
    
    let targetText = "The quick brown fox jumps over the lazy dog."; // sample text, need to make json full of sentences so the user can type them (get someone else to add these)
    let userInput = "";
    let isCorrect = false;
    let isFailed = false;
    let timer: any;
    let timeRemaining = 15; 
    let gameStarted = false;

    const startGame = () => {
        if (gameStarted) return; 
        gameStarted = true;
        timeRemaining = 15; 
        userInput = ""; 
        isCorrect = false;
        isFailed = false;
        clearInterval(timer); 
        timer = setInterval(() => {
            if (timeRemaining > 0) {
                timeRemaining--;
            } else {
                clearInterval(timer);
            }
        }, 1000);
    };

    const checkInput = () => {
        if (!gameStarted) {
            startGame(); 
        }

        if (userInput === targetText) {
            isCorrect = true;
            clearInterval(timer);
        }

        if (userInput != targetText && timeRemaining == 0){
            isFailed = true;
            clearInterval(timer);
        }
    };

    const getLetterColor = (index: number) => {
        if (index < userInput.length) {
            if (userInput[index] === targetText[index]) {
                return "correct"; // Correct letter
            } else {
                return "incorrect"; // Incorrect letter
            }
        }
        return ""; // No class if no input at this index
    };
</script>

<main>
    <Header></Header>
    <div class="container">
        
        <section class="typing-game">
            <h2>Typing Game</h2>
            <p>Type the following text:</p>
            <div class="target-text">
                {#each Array.from(targetText) as letter, index}
                    <span class={getLetterColor(index)}>{letter}</span>
                {/each}
            </div>
            
            <input
            style="color: black;"
                type="text"
                bind:value={userInput}
                placeholder="Start typing..."
                on:input={checkInput}
                disabled={gameStarted && isCorrect || gameStarted && isFailed} 
            />
            
            <p>Time Remaining: {timeRemaining}s</p>
            
            {#if isCorrect}
                <p>Well done! You typed the text correctly.</p>
            {/if}
            {#if isFailed}
                <p>
                    Sorry! time is up...
                </p>
            {/if}
        </section>
    </div>
</main>

<style>
    .container {
        margin: auto;
        width: 50%;
        border: 3px solid green;
        padding: 10px;
        background-color: #1d1d1e;
    }

    .typing-game {
        margin-top: 20px;
        text-align: center;
    }

    .target-text {
        font-size: 1.2em;
        margin-bottom: 10px;
        font-family: monospace;
    }

    input {
        width: 80%;
        padding: 8px;
        font-size: 1em;
        margin-top: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        background-color: white;
    }

    .correct{
        color: white;
        font-weight: bold;
    }

    .incorrect {
        color: red;
        font-weight: bold;
    }

</style>
