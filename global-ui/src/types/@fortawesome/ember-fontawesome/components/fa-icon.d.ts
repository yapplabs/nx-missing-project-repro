declare module '@fortawesome/ember-fontawesome/components/fa-icon' {
  import Component from '@glimmer/component';

  export interface Signature {
    Element: SVGElement;
    Args: {
      icon: string;
      prefix?: string;
      size?:
        | '2xs'
        | 'xs'
        | 'sm'
        | 'lg'
        | 'xl'
        | '2xl'
        | '1x'
        | '2x'
        | '3x'
        | '4x'
        | '5x'
        | '6x'
        | '7x'
        | '8x'
        | '9x'
        | '10x';
      fixedWidth?: boolean;
      rotation?: number;
      flip?: 'horizontal' | 'vertical' | 'both';
      border?: boolean;
      pull?: 'left' | 'right';
      transform?: string;
    };
  }

  export default class FaIcon extends Component<Signature> {}
}
