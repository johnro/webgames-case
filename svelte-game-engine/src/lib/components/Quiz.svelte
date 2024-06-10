<script lang="ts">
	import type { Quiz } from '$lib/schema';
	import { Button } from 'flowbite-svelte';
	import Title from './Title.svelte';

	export let quiz: Quiz;
</script>

<main class="h-screen snap-y snap-mandatory overflow-y-auto">
	<Title title={quiz.title} description={quiz.description} background={quiz.image}>
		<Button size="xl" class="w-full" href="/{quiz.id}/{quiz.questions[0].id}">Start</Button>
	</Title>
</main>
