
<script lang="ts" context="module">
    type T = Record<string, unknown>;
  </script>

<script lang="ts">
	import { formFieldProxy, type FormPathLeaves, type SuperForm } from "sveltekit-superforms";
	import CmptWithGenericShared from "./cmpt-with-generic-shared.svelte";


    export let form: SuperForm<T, unknown>;
    export let name: FormPathLeaves<T, string>;

    const fieldProxy = formFieldProxy<T, FormPathLeaves<T>, string>(form, name);
</script>

<CmptWithGenericShared {fieldProxy} {form} {name}/>