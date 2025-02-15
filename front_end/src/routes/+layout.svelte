<script lang="ts">
	import '../app.css';
	let { children } = $props();
</script>

<header>
	<div id="profle-panel" style="float: right">
		<p>
			<img src="agent47.png" width="32px" height="32px" alt="profile picture" style="float: left; border-radius: 50%;">
			Morose
		</p>
		<p>
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
</style>
