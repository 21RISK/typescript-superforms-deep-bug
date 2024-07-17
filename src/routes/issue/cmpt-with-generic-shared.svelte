


<script lang="ts">

    import type { FormFieldProxy, FormPathLeaves, SuperForm } from 'sveltekit-superforms';


    type T = $$Generic;
    type G = $$Generic<Record<string, unknown>>;

    export let fieldProxy: FormFieldProxy<T | null>;
    export let form: SuperForm<G, unknown>;
    export let name: FormPathLeaves<G>;

    let value = fieldProxy.value;
</script>

<p>Value in nested field..</p>
{$value}