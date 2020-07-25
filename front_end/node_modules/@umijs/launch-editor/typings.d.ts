declare module NodeJS {
  export interface Global {
    [key: string]: any;
  }
}

interface Window {
  [key: string]: any;
}
