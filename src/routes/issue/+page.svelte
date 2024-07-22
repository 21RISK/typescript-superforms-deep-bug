<script lang="ts">
	import { superForm } from "sveltekit-superforms";
	import type { PageData } from "./$types";


    import CmptWithGeneric from "./cmpt-with-generic.svelte";

    export let data: PageData;

      // Client API:
    const client = superForm(data.form);
    const form = client.form;
    
</script>


<h1>Let's reproduce an issue here</h1>

<form method="POST">
    <CmptWithGeneric form={client} name="email" />
</form>