import { concat } from '@ember/helper';
import Component from '@glimmer/component';
import htmlSafe from '@yappbox/global-ui/helpers/html-safe';
import './style.scss';

interface ColorPillDisplay {
  color: string;
  height: string;
}

interface Signature {
  Element: HTMLDivElement;
  Args: {
    colors?: string[];
    maxColors?: number;
    className?: string;
  };
}

function join(array: ColorPillDisplay[], separator: string) {
  return array.map((item) => item.color).join(separator);
}

export default class ColorPills extends Component<Signature> {
  get maxColors() {
    return this.args.maxColors || 3;
  }

  get className() {
    return this.args.className || '';
  }

  get hasColors() {
    return Boolean(this.args?.colors?.length);
  }

  get colorPills(): ColorPillDisplay[] {
    const colors = this.args.colors || [];
    const colorCount = colors.length;

    // More than maxColors: single gray pill
    if (colorCount > this.maxColors) {
      return [
        {
          color: '#D8D8D8',
          height: '75%',
        },
      ];
    }

    // Heights based on number of colors
    let height;
    switch (colorCount) {
      case 1:
        height = '75%';
        break;
      case 2:
        height = '35%';
        break;
      case 3:
        height = '20%';
        break;
      default:
        height = '0%';
    }

    // Return color and height for each color
    return colors.map((color) => ({
      color: color,
      height,
    }));
  }

  <template>
    {{#if this.hasColors}}
      <div
        class='ColorPills {{this.className}}'
        data-test-colors={{join this.colorPills ' '}}
      >
        {{#each this.colorPills as |pill|}}
          <div
            class='ColorPills-pill'
            style={{htmlSafe
              (concat
                'background-color: ' pill.color '; ' 'height: ' pill.height ';'
              )
            }}
          ></div>
        {{/each}}
      </div>
    {{/if}}
  </template>
}
