<script lang="ts">
	import { goto } from '$app/navigation';
	import type { Question } from '$lib/schema';
	import { Button } from 'flowbite-svelte';
	import Cross from './icons/Cross.svelte';
	import Checkmark from './icons/Checkmark.svelte';

	export let question: Question;
	export let nextQuestionId: number | undefined;
	export let index: number;

	// TODO: show the current question number in the top left corner
	// TODO: remember what the user has answered so that you can calculate the score after they have answered all questions
	const answer = (answered: boolean) => () => {
		const redirectUrl =
			nextQuestionId === undefined
				? `/${question.quiz_id}/submit`
				: `/${question.quiz_id}/${nextQuestionId}`;
		goto(redirectUrl);
	};
</script>

<div class="flex h-screen w-screen items-center justify-center">
	<div class="w-full max-w-screen-sm">
		<h2 class="">{question.content}</h2>
		<div class="grid grid-cols-2 gap-2">
			<Button on:click={answer(false)}>
				<Cross class="mr-2 h-8 w-8" />
				False
			</Button>
			<Button on:click={answer(true)}>
				<Checkmark class="mr-2 h-6 w-6" />
				True
			</Button>
		</div>
	</div>
</div>
