import quiz from '$lib/quiz.json';
import { quizSchema } from '$lib/schema';
import type { PageLoadData } from './$types';

// https://kit.svelte.dev/docs/load#page-data
// A dev proxy /api/ has been configured in Vite which means that you can ignore CORS issues.
// TODO: fetch the quiz from `/api/quizzes/${quizId}`.
export const load = async ({ params, fetch }: PageLoadData) => {
	const quizId = params.quizId;
	// const quiz = quizSchema.parse(json);

	return { quiz };
};
