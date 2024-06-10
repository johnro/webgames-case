import z from 'zod';

export const questionSchema = z.object({
	id: z.number(),
	content: z.string().min(1),
	answer: z.boolean(),
	quiz_id: z.number(),

	created_at: z.string(),
	updated_at: z.string()
});

export type Question = z.infer<typeof questionSchema>;

export const quizSchema = z.object({
	id: z.number(),
	title: z.string().min(1),
	description: z.string().min(1),
	image: z.string(),
	url: z.string(),
	questions: z.array(questionSchema),

	created_at: z.string(),
	updated_at: z.string()
});

export type Quiz = z.infer<typeof quizSchema>;
