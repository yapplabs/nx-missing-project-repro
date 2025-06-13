import type { TOC } from '@ember/component/template-only';

interface Signature {
  Element: HTMLElement;
  Args: {
    class: string;
  };
}

const Separator: TOC<Signature> = <template>
  <hr class='Separator' ...attributes />
</template>;

export default Separator;
