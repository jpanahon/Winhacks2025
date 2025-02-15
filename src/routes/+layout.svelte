<script lang="ts">
	import '../app.css';
	let { children } = $props();
</script>

<header>
	<h1 style="text-align: center; display: inline-block;">Study Games</h1>
	<div id="profile-panel">
		<p>
			<img src="agent47.png" width="32px" height="32px" alt="profile picture" style="float: left; border-radius: 50%;">
			Morose <br>
			<a style="font-size: 13px; margin: 0">
				Level 1
			</a>
		</p>
	</div>
</header>

{@render children()}

<style>
	header {
		width: 100%;
		height: 5rem;
		padding: 1rem;
	}

	#profile-panel {
		float: right;
	}
</style>
