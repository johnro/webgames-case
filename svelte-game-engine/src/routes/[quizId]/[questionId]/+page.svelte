<script lang="ts">
	import { page } from '$app/stores';
	import Question from '$lib/components/Question.svelte';
	import type { LayoutData } from '../$types';

	export let data: LayoutData;
	$: questionId = +$page.params.questionId;
	$: questionIndex = data.quiz.questions.findIndex((q) => q.id == questionId);
	$: question = data.quiz.questions[questionIndex];
	$: nextQuestionId =
		questionIndex === data.quiz.questions.length - 1
			? undefined
			: data.quiz.questions[questionIndex + 1].id;
</script>

<Question index={questionIndex} {question} {nextQuestionId} />
