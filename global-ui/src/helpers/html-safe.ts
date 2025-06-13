import { helper } from '@ember/component/helper';
import { htmlSafe, isHTMLSafe, type SafeString } from '@ember/template';

export function makeHtmlSafe([s]: [string | SafeString] /*, hash*/) {
  if (s) {
    if (isHTMLSafe(s)) {
      return s;
    }
    return htmlSafe(s);
  }
}

export default helper(makeHtmlSafe);
