export default class EditorError extends Error {
  public editor: string | string[];

  public success?: boolean;

  public code?: string;

  public constructor({
    editor = '',
    code = '',
    success = false,
  }, ...params) {
    super(...params);

    if (Error.captureStackTrace) {
      Error.captureStackTrace(this, EditorError);
    }

    this.name = 'EditorError';
    this.success = success;
    this.code = code;
    this.editor = editor;
  }
}
