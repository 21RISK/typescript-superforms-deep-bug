<script lang="ts" context="module">
	type T = Record<string, unknown>;
	type Path = FormPathLeaves<T, string>;
	type Proxy = FormFieldProxy<string, FormPathLeaves<T>>;
</script>

<script lang="ts" generics="T extends Record<string, unknown>">
	import type { FormFieldProxy, FormPathLeaves, SuperForm } from 'sveltekit-superforms';

	export let fieldProxy: Proxy;
	export let form: SuperForm<T>;
	export let name: Path;

	let value = fieldProxy.value;

	console.log(form, name);
</script>

<p>Value in nested field..</p>
{$value}
