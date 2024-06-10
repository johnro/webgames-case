<script lang="ts">
	export let title: string;
	export let description: string;
	export let background: string;
</script>

<div class="relative flex h-screen w-screen snap-center items-center justify-center">
	<div class="absolute inset-0 bg-rose-400">
		<!-- svelte-ignore a11y-missing-attribute -->
		<img src="/api{background}" class="h-full w-full object-cover" />
	</div>
	<header class="relative border-0 border-gray-200 bg-white p-16">
		<div class="relative">
			<h1 class="pb-3 text-5xl font-extrabold tracking-tight sm:text-5xl md:pb-0 md:text-6xl">
				{title}
			</h1>
			<p
				class="mx-auto mt-3 max-w-md text-base text-gray-600 sm:text-lg md:mt-5 md:max-w-3xl md:text-xl"
			>
				{description}
			</p>

			<div class="my-2">
				<slot />
			</div>
		</div>
	</header>
</div>
