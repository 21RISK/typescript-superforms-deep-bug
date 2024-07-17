
<script lang="ts" generics="T extends Record<string, unknown>">
	import { formFieldProxy, type FormPathLeaves, type SuperForm } from "sveltekit-superforms";
	import CmptWithGenericShared from "./cmpt-with-generic-shared.svelte";


    export let form: SuperForm<T, unknown>;
    export let name: FormPathLeaves<T, string>;

    const fieldProxy = formFieldProxy<T, FormPathLeaves<T>, string>(form, name);
</script>

<CmptWithGenericShared {fieldProxy} {form} {name}/>