<script lang="ts">
	import '../app.css';
	let { children } = $props();
</script>

<header>
	<h1 style="text-align: center; display: inline-block;">Study Games</h1>
	<div id="profile-panel">
		<p>
			<img src="default.jpg" width="32px" height="32px" alt="profile picture">
			Morose <br>
		</p>
		<p style="font-size: 13px;">
			Level 1
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

	#profile-panel img {
		float: left;
		border-radius: 50%;
		margin-right: 0.5rem;
	}
</style>
