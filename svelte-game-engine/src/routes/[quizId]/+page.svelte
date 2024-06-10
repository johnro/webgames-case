<script lang="ts">
	import Quiz from '$lib/components/Quiz.svelte';
	import type { PageData } from './$types';

	export let data: PageData;
</script>

<Quiz quiz={data.quiz} />
