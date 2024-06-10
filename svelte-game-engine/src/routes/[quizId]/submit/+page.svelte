<script lang="ts">
	import type { LayoutData } from '../$types';
	import { Label, Input, Button, Toast } from 'flowbite-svelte';
	import { slide } from 'svelte/transition';
	import { enhance } from '$app/forms';
	import { tweened } from 'svelte/motion';
	import { cubicOut } from 'svelte/easing';
	// import Fireworks from '@fireworks-js/svelte';
	import Rocket from '$lib/components/icons/Rocket.svelte';

	export let data: LayoutData;

	// TODO: figure out which questions and how many we have answered correctly
	// TODO: modify the form such that we POST data to the correct endpoint
	// /api/quizzes/<quiz-id>/scores
	const finalScore = 6 * 100;
	const score = tweened(finalScore, {
		duration: 500,
		easing: cubicOut,
		delay: 0
	});

	let submittedToastOpen = false;
</script>

<div class="relative flex h-screen w-screen items-center justify-center">
	<div class="w-full max-w-screen-sm space-y-4">
		<h2
			class="from-primary-500 via-primary-600 to-primary-700 w-full bg-gradient-to-br bg-clip-text text-center text-center font-extrabold text-transparent"
			style:font-size="128px"
		>
			{Math.ceil($score)}
		</h2>
		<form method="POST" class:hidden={submittedToastOpen} use:enhance>
			<input type="hidden" value={finalScore} name="score[points]" />
			<div class="mb-6">
				<Label for="player" class="sr-only mb-2 block">Name</Label>
				<Input
					type="text"
					id="player"
					name="score[player]"
					size="lg"
					placeholder="John Doe"
				/>
			</div>
			<Button size="xl" type="submit" class="w-full">
				<Rocket class="mr-2 h-8 w-8" />
				Send in
			</Button>
		</form>
	</div>
</div>

<div class="fixed bottom-0 flex w-full justify-center py-8">
	<Toast dismissable={true} transition={slide} bind:open={submittedToastOpen}>
		Mission accomplished!
	</Toast>
</div>
