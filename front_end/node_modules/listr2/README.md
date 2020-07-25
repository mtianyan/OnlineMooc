# Listr2

[![Build Status](https://cd.ev.kilic.dev/api/badges/cenk1cenk2/listr2/status.svg)](https://cd.ev.kilic.dev/cenk1cenk2/listr2) [![Version](https://img.shields.io/npm/v/listr2.svg)](https://npmjs.org/package/listr2) [![Downloads/week](https://img.shields.io/npm/dw/listr2.svg)](https://npmjs.org/package/listr2) [![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)

**Create beautiful CLI interfaces via easy and logical to implement task lists that feel alive and interactive.**

This is the expanded and re-written in Typescript version of the beautiful plugin by [Sam Verschueren](https://github.com/SamVerschueren) called [Listr](https://github.com/SamVerschueren/listr).

![Demo](./demo/demo.gif)

> **It breaks backward compatibility with [Listr](https://github.com/SamVerschueren/listr) after v1.3.12, albeit refactoring requires only moving renderer options to their own key, concerning the [conversation on the original repository](https://github.com/SamVerschueren/listr/issues/143#issuecomment-623094930).** You can find the README of compatible version [here](https://github.com/cenk1cenk2/listr2/tree/84ff9c70ba4aab16106d1e7114453ac5e0351ec0). Keep in mind that it will not get further bug fixes.

- [Changelog](./CHANGELOG.md)

<!-- toc -->

- [Install](#install)
- [Create A New Listr](#create-a-new-listr)
  - [Tasks](#tasks)
  - [Options](#options)
- [The Concept of Context](#the-concept-of-context)
- [General Usage](#general-usage)
  - [Subtasks](#subtasks)
  - [Get User Input](#get-user-input)
    - [Create A Prompt](#create-a-prompt)
      - [Single Prompt](#single-prompt)
      - [Multiple Prompts](#multiple-prompts)
    - [Use an Custom Prompt](#use-an-custom-prompt)
  - [Enable a Task](#enable-a-task)
  - [Skip a Task](#skip-a-task)
  - [Show Output](#show-output)
    - [Utilizing the Task Itself](#utilizing-the-task-itself)
    - [Utilizing the Bottom Bar](#utilizing-the-bottom-bar)
    - [Utilizing an Observable or Stream](#utilizing-an-observable-or-stream)
    - [Passing the Output Through as a Stream](#passing-the-output-through-as-a-stream)
  - [Throw Errors](#throw-errors)
- [Task Manager](#task-manager)
  - [Basic Use-Case Scenerio](#basic-use-case-scenerio)
  - [More Functionality](#more-functionality)
- [Generic Features](#generic-features)
  - [Tasks Without Titles](#tasks-without-titles)
  - [Signal Interrupt](#signal-interrupt)
- [Testing](#testing)
- [Default Renderers](#default-renderers)
- [Custom Renderers](#custom-renderers)
- [Render Hooks](#render-hooks)
- [Log To A File](#log-to-a-file)
- [Migration from Version v1](#migration-from-version-v1)
- [Types](#types)

<!-- tocstop -->

# How to Use

Check out `examples/` folder in the root of the repository for the code in demo or follow through with this README.

## Install

```bash
# Install the latest supported version
npm install listr2

yarn add listr2

# Install listr compatabile version
npm install listr2@1.3.12

yarn add listr2@1.3.12
```

## Create A New Listr

Create a new task list. It will returns a Listr class.

```typescript
import { Listr } from 'listr2'

interface Ctx {
  /* some variables for internal use */
}

const tasks = new Listr<Ctx>(
  [
    /* tasks */
  ],
  {
    /* options */
  }
)
```

Then you can run this task lists as a async function and it will return the context that is used.

```typescript
try {
  await tasks.run()
} catch (e) {
  // it will collect all the errors encountered if { exitOnError: false } is set as an option
  // elsewise it will throw the first error encountered as expected
  console.error(e)
}
```

### Tasks

```typescript
export interface ListrTask<Ctx, Renderer extends ListrRendererFactory> {
  // A title can be given or omitted. For default renderer if the title is omitted,
  title?: string
  // A task can be a sync or async function that returns a string, readable stream or an observable or plain old void
  // if it does actually return string, readable stream or an observable, task output will be refreshed with each data push
  task: (ctx: Ctx, task: ListrTaskWrapper<Ctx, Renderer>) => void | ListrTaskResult<Ctx>
  // to skip the task programmatically, skip can be a sync or async function that returns a boolean or string
  // if string is returned it will be showed as the skip message, else the task title will be used
  skip?: boolean | string | ((ctx: Ctx) => boolean | string | Promise<boolean> | Promise<string>)
  // to enable the task programmatically, this will show no messages comparing to skip and it will hide the tasks enabled depending on the context
  // enabled can be external boolean, a sync or async function that returns a boolean
  // pay in mind that context enabled functionallity might depend on other functions to finish first, therefore the list shall be treated as a async function
  enabled?: boolean | ((ctx: Ctx) => boolean | Promise<boolean>)
  // this will change depending on the available options on the renderer
  // these renderer options are per task basis and does not affect global options
  options?: ListrGetRendererTaskOptions<Renderer>
}
```

### Options

```typescript
export interface ListrOptions<Ctx = ListrContext> {
  // how many tasks can be run at the same time.
  // false or 1 for synhronous task list, true or Infinity for compelete parallel operation, a number for limitting tasks that can run at the same time
  // defaults to false
  concurrent?: boolean | number
  // it will silently fail or throw out an error
  // defaults to false
  exitOnError?: boolean
  // inject a context from another operation
  // defaults to any
  ctx?: Ctx
  // to have graceful exit on signal terminate and to inform the renderer all the tasks awaiting or processing are failed
  // defaults to true
  registerSignalListeners?: boolean
  // select the renderer or inject a class yourself
  // defaults to 'default' which is a updating renderer
  renderer?: 'default' | 'verbose' | 'silent' | ListrRendererFactory
  // renderer options depends on the selected renderer
  rendererOptions?: ListrGetRendererOptions<T>
  // renderer will fallback to the nonTTYRenderer on non-tty environments as the name suggest
  // defaults to verbose
  nonTTYRenderer?: 'default' | 'verbose' | 'silent' | ListrRendererFactory
  // options for the non-tty renderer
  nonTTYrendererOptions?: ListrGetRendererOptions<T>
}
```

## The Concept of Context

Context is the variables that are shared across the task list. Even though external variables can be used to do the same operation, context gives a self-contained way to process internal tasks.

A successful task will return the context back for further operation.

You can also manually inject a context variable preset depending on the prior operations through the task options.

**If all tasks are in one big Listr list you do not have to inject context manually to the child tasks since it is automatically injected as in the original.**

If an outside variable wants to be injected inside the Listr itself it can be done in two ways.

- Injecting it as an option.

```typescript
const ctx: Ctx = {}

const tasks = new Listr<Ctx>(
  [
    /* tasks */
  ],
  { ctx }
)
```

- Injecting it at runtime.

```typescript
try {
  await tasks.run({ ctx })
} catch (e) {
  console.error(e)
}
```

## General Usage

### Subtasks

Any task can return a new Listr. But rather than calling it as `new Listr` to get the full autocompeletion features depending on the parent task's selected renderer, it is a better idea to call it through the `Task` itself by `task.newListr()`.

_Please refer to [examples section](examples/subtasks.example.ts) for more detailed and further examples._

```typescript
new Listr<Ctx>(
  [
    {
      title: 'This task will execute.',
      task: (ctx, task): Listr =>
        task.newListr([
          {
            title: 'This is a subtask.',
            task: async (): Promise<void> => {
              await delay(3000)
            }
          }
        ])
    }
  ],
  { concurrent: false }
)
```

You can change indivudual settings of the renderer on per-subtask basis.

This includes renderer options as well as Listr options like `exitOnError`, `concurrent` to be set on a per subtask basis independent of the parent task, while it will always use the most adjacent setting.

```typescript
new Listr<Ctx>(
  [
    {
      title: 'This task will execute.',
      task: (ctx, task): Listr =>
        task.newListr(
          [
            {
              title: 'This is a subtask.',
              task: async (): Promise<void> => {
                await delay(3000)
              }
            },
            {
              title: 'This is an another subtask.',
              task: async (): Promise<void> => {
                await delay(2000)
              }
            }
          ],
          { concurrent: true, rendererOptions: { collapse: true } }
        )
    },

    {
      title: 'This task will execute.',
      task: (ctx, task): Listr =>
        task.newListr(
          [
            {
              title: 'This is a subtask.',
              task: async (): Promise<void> => {
                await delay(3000)
              }
            },
            {
              title: 'This is an another subtask.',
              task: async (): Promise<void> => {
                await delay(2000)
              }
            }
          ],
          { concurrent: true, rendererOptions: { collapse: false } }
        )
    }
  ],
  { concurrent: false }
)
```

_Please refer to [Throw Errors Section](#Throw-Errors) for more detailed and further examples on how to handle silently failing errors._

### Get User Input

The input module uses the beautiful [enquirer](https://www.npmjs.com/package/enquirer).

> **Attention: Enquirer is a optional dependency. Please install it first.**

So with running a `task.prompt` function, you can get access to any [enquirer](https://www.npmjs.com/package/enquirer) default prompts as well as using a custom enquirer prompt.

To get an input you can assign the task a new prompt in an async function and write the response to the context.

**It is not advisable to run prompts in a concurrent task because multiple prompts will clash and overwrite each other's console output and when you do keyboard movements it will apply to them both.**

Prompts, since their rendering is getting passed as a data output will render multiple times in verbose renderer since verbose renderer is not terminal-updating intended to be used in nonTTY environments. It will work anyhow albeit it might not look great.

Prompts can either have a title or not but they will always be rendered at the end of the current console while using the default renderer.

_Please refer to [examples section](examples/get-user-input.example.ts) for more detailed and further examples._

#### Create A Prompt

To access the prompts just utilize the `task.prompt` jumper function. The first argument takes in one of the default [enquirer](https://www.npmjs.com/package/enquirer) prompts as a string or you can also pass in a custom [enquirer](https://www.npmjs.com/package/enquirer) prompt class as well, while the second argument is the options for the given prompt.

Prompts always rendered at the bottom of the tasks when using the default renderer with one line return in between it and the tasks.

_Please note that I rewrote the types for enquirer, since some of them was failing for me. So it may have a chance of having some mistakes in it since I usually do not use all of them._

**>v2.1.0, defining the prompt style has been changed a little. It know requires type to be integrated inside the prompt itself, instead of passing two variables. Custom prompts still work the same way.**

##### Single Prompt

```typescript
new Listr<Ctx>(
  [
    {
      task: async (ctx, task): Promise<boolean> => (ctx.input = await task.prompt<boolean>({ type: 'Toggle', message: 'Do you love me?' }))
    },
    {
      title: 'This task will get your input.',
      task: async (ctx, task): Promise<void> => {
        ctx.input = await task.prompt<boolean>({ type: 'Toggle', message: 'Do you love me?' })
        // do something
        if (ctx.input === false) {
          throw new Error(':/')
        }
      }
    }
  ],
  { concurrent: false }
)
```

##### Multiple Prompts

**Important: If you want to pass in an array of prompts, becareful that you should name them, this is also enforced by Typescript as well. This is not true for single prompts, since they only return a single value, it will be directly gets passed to the assigned variable.**

```typescript
new Listr<Ctx>(
  [
    {
      title: 'This task will get your input.',
      task: async (ctx, task): Promise<void> => {
        ctx.input = await task.prompt<{ first: boolean; second: boolean }>([
          { type: 'Toggle', name: 'first', message: 'Do you love me?' },
          { type: 'Toggle', name: 'second', message: 'Do you love me?' }
        ])
        // do something
        if (ctx.input.first === false) {
          logger.log('oh okay')
        }
        if (ctx.input.second === false) {
          throw new Error('You did not had to tell me for the second time')
        }
      }
    }
  ],
  { concurrent: false }
)
```

#### Use an Custom Prompt

You can either use a custom prompt out of the npm registry or custom-created one as long as it works with [enquirer](https://www.npmjs.com/package/enquirer), it will work expectedly. Instead of passing in the prompt name use the not-generated class.

```typescript
new Listr<Ctx>(
  [
    {
      title: 'Custom prompt',
      task: async (ctx, task): Promise<void> => {
        ctx.testInput = await task.prompt({
          type: EditorPrompt,
          message: 'Write something in this enquirer custom prompt.',
          initial: 'Start writing!',
          validate: (response): boolean | string => {
            //  i do declare you valid!
            return true
          }
        })
      }
    }
  ],
  { concurrent: false }
)
```

### Enable a Task

Tasks can be enabled depending on the variables programmatically. This enables to skip them depending on the context. Not enabled tasks will never show up in the default renderer, but when or if they get enabled they will magically appear.

_Please pay attention to asynchronous operation while designing a context enabled task list since it does not await for any variable in the context._

_Please refer to [examples section](examples/task-enable.example.ts) for more detailed and further examples._

```typescript
new Listr<Ctx>(
  [
    {
      title: 'This task will execute.',
      task: (ctx): void => {
        ctx.skip = true
      }
    },

    {
      title: 'This task will never execute.',
      enabled: (ctx): boolean => !ctx.skip,
      task: (): void => {}
    }
  ],
  { concurrent: false }
)
```

### Skip a Task

Skip is more or less the same with enable when used at `Task` level. But the main difference is it will always render the given task. If it is skipped it renders it as skipped.

There are to main ways to skip a task. One is utilizing the `Task` so that instead of enabled it will show a visual output while the other one is inside the task.

_Please pay attention to asynchronous operation while designing a context skipped task list since it does not await for any variable in the context._

_Please refer to [examples section](examples/task-skip.example.ts) for more detailed and further examples._

Inside the task itself after some logic is done.

```typescript
new Listr<Ctx>(
  [
    {
      title: 'This task will execute.',
      task: (ctx, task): void => {
        task.skip('I am skipping this tasks for reasons.')
      }
    }
  ],
  { concurrent: false }
)
```

Through the task wrapper.

```typescript
new Listr<Ctx>(
  [
    {
      title: 'This task will execute.',
      task: (ctx): void => {
        ctx.skip = true
      }
    },

    {
      title: 'This task will never execute.',
      skip: (ctx): boolean => ctx.skip,
      task: (): void => {}
    }
  ],
  { concurrent: false }
)
```

There are two rendering methods for the default renderer for skipping the task. The default behavior is to replace the task title with skip message if the skip function returns a string. You can select the other way around with `rendererOptions: { collapseSkips: false }` for the default renderer to show the skip message under the task title.

### Show Output

Showing output from a task can be done in various ways.

To keep the output when the task finishes while using default renderer, you can set `{ persistentOutput: true }` in the `Task`.

```typescript
new Listr<Ctx>(
  [
    {
      title: 'This task will execute.',
      task: async (ctx, task): Promise<void> => {
        task.output = 'I will push an output. [0]'
      },
      options: { persistentOutput: true }
    }
  ],
  { concurrent: false }
)
```

_Please refer to [examples section](examples/show-output.example.ts) for more detailed and further examples._

#### Utilizing the Task Itself

This will show the output in a small bar that can only show the last output from the task.

```typescript
new Listr<Ctx>(
  [
    {
      title: 'This task will execute.',
      task: async (ctx, task): Promise<void> => {
        task.output = 'I will push an output. [0]'
        await delay(500)

        task.output = 'I will push an output. [1]'
        await delay(500)

        task.output = 'I will push an output. [2]'
        await delay(500)
      }
    }
  ],
  { concurrent: false }
)
```

#### Utilizing the Bottom Bar

If task output to the bottom bar is selected, it will create a bar at the end of the tasks leaving one line return space in between. The bottom bar can only be used in the default renderer.

Items count that is desired to be showed in the bottom bar can be set through `Task` option `bottomBar`.

- If set to `true` it will only show the last output from the task.
- If it is set to a number it will limit the output to that number.
- If set to `Infinity`, it will keep all the output.

```typescript
new Listr<Ctx>(
  [
    {
      title: 'This task will execute.',
      task: async (ctx, task): Promise<void> => {
        task.output = 'I will push an output. [0]'
        await delay(500)

        task.output = 'I will push an output. [1]'
        await delay(500)

        task.output = 'I will push an output. [2]'
        await delay(500)
      },
      options: {
        bottomBar: Infinity
      }
    }
  ],
  { concurrent: false }
)
```

#### Utilizing an Observable or Stream

Since observables and streams are supported they can also be used to generate output.

_Please refer to [examples section](examples/stream.example.ts) for more detailed and further examples._

```typescript
new Listr<Ctx>(
  [
    {
      // Task can also handle and observable
      title: 'Observable test.',
      task: (): Observable<string> =>
        new Observable((observer) => {
          observer.next('test')

          delay(500)
            .then(() => {
              observer.next('changed')
              return delay(500)
            })
            .then(() => {
              observer.complete()
            })
        })
    }
  ],
  { concurrent: false }
)
```

#### Passing the Output Through as a Stream

Since `process.stdout` method is controlled by `log-update` to create a refreshing interface, for anything else that might need to output data and can use `Writeable` streams, `task.stdout()` will create a new punch-hole to redirect all the write requests to `task.output`. This is esspecially benefical for external libraries like `enquirer`, which is already integrated or something like `ink`.

**Supported for >v2.1.0.**

_This unfortunetly relies on cleaning all ANSI escape charachters, since currently I do not find a good way to sandbox them inside `log-update` which utilizes the cursor position by itself. So use this with caution, because it will only render the last chunk in a stream as well as cleaning up all the ANSI escape charachters except for styles._

```typescript
import { Box, Color, render } from 'ink'
import React, { Fragment, useEffect, useState } from 'react'

import { Listr } from 'Listr2'
import { Logger } from '@utils/logger'

type Ctx = {}

const logger = new Logger({ useIcons: false })

async function main(): Promise<void> {
  let task: Listr<Ctx, 'default'>

  task = new Listr<Ctx, 'default'>(
    [
      {
        title: 'This task will show INK as output.',
        task: async (ctx, task): Promise<any> => {
          const Counter = () => {
            const [counter, setCounter] = useState(0)

            useEffect(() => {
              const timer = setInterval(() => {
                setCounter((previousCounter) => previousCounter + 1)
              }, 100)

              return (): void => {
                clearInterval(timer)
              }
            }, [])

            return <Color green>{counter} tests passed</Color>
          }

          const { unmount, waitUntilExit } = render(<Counter />, task.stdout())

          setTimeout(unmount, 2000)

          return waitUntilExit()
        }
      }
    ],
    { concurrent: false }
  )

  try {
    const context = await task.run()
    console.log(`Context: ${JSON.stringify(context)}`)
  } catch (e) {
    console.error(e)
  }
}

main()
```

### Throw Errors

You can throw errors out of the tasks to show they are insuccessful. While this gives a visual output on the terminal, it also handles how to handle tasks that are failed. The default behaviour is any of the tasks have failed, it will deem itself as unsuccessful and exit. This behaviour can be changed with `exitOnError` option.

- Throw out an error in serial execution mode will cause all of the upcoming tasks to be never executed.

```typescript
new Listr<Ctx>(
  [
    {
      title: 'This task will fail.',
      task: async (): Promise<void> => {
        await delay(2000)
        throw new Error('This task failed after 2 seconds.')
      }
    },
    {
      title: 'This task will never execute.',
      task: (ctx, task): void => {
        task.title = 'I will change my title if this executes.'
      }
    }
  ],
  { concurrent: false }
)
```

- Throwing out an error while execution in parallel mode will immediately stop all the actions.

```typescript
new Listr<Ctx>(
  [
    {
      title: 'This task will fail.',
      task: async (): Promise<void> => {
        await delay(2000)
        throw new Error('This task failed after 2 seconds.')
      }
    },
    {
      title: 'This task will execute.',
      task: (ctx, task): void => {
        task.title = 'I will change my title since it is concurrent.'
      }
    }
  ],
  { concurrent: true }
)
```

- Default behavior can be changed with `exitOnError` option.

```typescript
new Listr<Ctx>(
  [
    {
      title: 'This task will fail.',
      task: async (): Promise<void> => {
        await delay(2000)
        throw new Error('This task failed after 2 seconds.')
      }
    },
    {
      title: 'This task will execute.',
      task: (ctx, task): void => {
        task.title = 'I will change my title if this executes.'
      }
    }
  ],
  { concurrent: false, exitOnError: false }
)
```

- `exitOnError` is subtask based so you can change it on the fly for given set of subtasks.

```typescript
new Listr<Ctx>(
  [
    {
      title: 'This task will execute and not quit on errors.',
      task: (ctx, task): Listr =>
        task.newListr(
          [
            {
              title: 'This is a subtask.',
              task: async (): Promise<void> => {
                throw new Error('I have failed [0]')
              }
            },
            {
              title: 'This is yet an another subtask and it will run.',
              task: async (ctx, task): Promise<void> => {
                task.title = 'I have succeeded.'
              }
            }
          ],
          { exitOnError: false }
        )
    },
    {
      title: 'This task will execute.',
      task: (): void => {
        throw new Error('I will exit on error since I am a direct child of parent task.')
      }
    }
  ],
  { concurrent: false, exitOnError: true }
)
```

- The error that makes the application to quit will be thrown out from the async function.

```typescript
try {
  const context = await task.run()
} catch (e) {
  logger.fail(e)
  // which will show the last error
}
```

- Access all of the errors that makes the application quit or not through `task.err` which is an array of all the errors encountered.

```typescript
const task = new Listr(...)
logger.fail(task.err)
// will show all of the errors that are encountered through execution
```

- ListrError which is thrown out of `task.err´ in prior example is in the structure of

```typescript
public message: string
public errors?: Error[]
public context?: any
```

## Task Manager

Task manager is a great way to create a custom-tailored Listr class once and then utilize it more than once.

_Please refer to [examples section](examples/manager.example.ts) for more detailed and further examples._

### Basic Use-Case Scenerio

- Create something like a manager factory with your own default settings

```typescript
export function TaskManagerFactory<T = any>(override?: ListrBaseClassOptions): Manager<T> {
  const myDefaultOptions: ListrBaseClassOptions = {
    concurrent: false,
    exitOnError: false,
    rendererOptions: {
      collapse: false,
      collapseSkips: false
    }
  }
  return new Manager({ ...myDefaultOptions, ...override })
}
```

- Create your class that benefits from manager

```typescript
export class MyMainClass {
  private tasks = TaskManagerFactory<Ctx>()

  constructor() {
    this.run()
  }

  private async run(): Promise<void> {
    // CODE WILL GO HERE IN THIS EXAMPLE
  }
}
```

- Add multiple set of subtasks with their own options

```typescript
this.tasks.add(
  [
    {
      title: 'A task running manager [0]',
      task: async (): Promise<void> => {
        throw new Error('Do not dare to run the second task.')
      }
    },
    {
      title: 'This will never run first one failed.',
      task: async (): Promise<void> => {
        await delay(2000)
      }
    }
  ],
  { exitOnError: true, concurrent: false }
)
```

- Run the tasks. Running the tasks will clear the pending queue so you can go ahead and add more new tasks!

```typescript
try {
  const ctx = await this.tasks.runAll()
} catch (e) {
  this.logger.fail(e)
}
```

### More Functionality

- Indenting tasks, to change options like `concurrency`, `exitOnError` and so on.

```typescript
this.tasks.add(
  [
    {
      title: 'Some task that will run in sequential execution mode. [0]',
      task: async (): Promise<void> => {
        await delay(2000)
      }
    },
    {
      title: 'Some task that will run in sequential execution mode. [1]',
      task: async (): Promise<void> => {
        await delay(2000)
      }
    },
    this.tasks.indent([
      {
        title: 'This will run in parallel. [0]',
        task: async (): Promise<void> => {
          await delay(2000)
        }
      },
      {
        title: 'This will run in parallel. [1]',
        task: async (): Promise<void> => {
          await delay(2000)
        }
      }
    ])
  ],
  { concurrent: true }
)
```

- Run a Task Directly, which will use the defaults settings you set in the manager.

```typescript
await this.tasks.run([
  {
    title: 'I will survive, dont worry',
    task: (): void => {
      throw new Error('This will not crash since exitOnError is set to false eventhough default setting in Listr is false.')
    }
  }
])
```

- Access the errors of the last task as in the Listr.

```typescript
await this.tasks.run([
  {
    title: 'I will survive, dont worry',
    task: (): void => {
      throw new Error('This will not crash since exitOnError is set to false eventhough default setting in Listr is false.')
    }
  }
])
this.logger.data(this.tasks.err.toString())
// will yield: ListrError: Task failed without crashing. with the error details in the object
```

- Access base Listr class directly, this will use the default Listr settings and just a mere jumper function for omiting the need the import the Listr class when using manager.

```typescript
try {
  await this.tasks
    .newListr([
      {
        title: 'I will die now, goodbye my freinds.',
        task: (): void => {
          throw new Error('This will not crash since exitOnError is set to false eventhough default setting in Listr is false.')
        }
      }
    ])
    .run()
} catch (e) {
  this.logger.fail(e)
}
```

- Get Task Runtime, and tailor it as your own

```typescript
await this.tasks.run(
  [
    {
      task: async (ctx): Promise<void> => {
        // start the clock
        ctx.runTime = Date.now()
      }
    },
    {
      title: 'Running',
      task: async (): Promise<void> => {
        await delay(1000)
      }
    },
    {
      task: async (ctx, task): Promise<string> => (task.title = this.tasks.getRuntime(ctx.runTime))
    }
  ],
  { concurrent: false }
)
// outputs: "1.001s" in seconds
```

## Generic Features

### Tasks Without Titles

For default renderer, all tasks that do not have titles will be hidden from the visual task list and executed behind. You can still set `task.title` inside the task wrapper programmatically afterward, if you so desire.

Since tasks can have subtasks as in the form of Listr classes again, if a task without a title does have subtasks with the title it will be rendered one less level indented. So you can use this operation to change the individual options of the set of tasks like `exitOnError` or `concurrency` or even render properties, like while you do want collapse parent's subtasks after completed but do not want this for a given set of subtasks.

For verbose renderer, since it is not updating, it will show tasks that do not have a title as `Task without title.`

### Signal Interrupt

When the interrupt signal is caught Listr will render for one last time therefore you will always have clean exits. This registers event listener `process.on('exit')`, therefore it will use a bit more of CPU cycles depending on the Listr task itself.

You can disable this default behavior by passing in the options for the root task `{ registerSignalListeners: false }`.

## Testing

For testing purposes you can use the verbose renderer by passing in the option of `{ renderer: 'verbose' }`. This will generate text-based and linear output which is required for testing.

If you want to change the logger of the verbose renderer you can do that by passing a class implementing `Logger` class which is exported from the index and passing it through as a renderer option with `{ renderer: 'verbose', rendererOptions: { logger: MyLoggerClass } }`.

Verbose renderer will always output predicted output with no fancy features.

| On              | Output                                                              |
| --------------- | ------------------------------------------------------------------- |
| Task Started    | \[STARTED\] \${TASK TITLE ?? 'Task without title.'}                 |
| Task Failure    | \[FAILED\] \${TASK TITLE ?? 'Task without title.'}                  |
| Task Skipped    | \[SKIPPED\] \${SKIP MESSAGE ?? TASK TITLE ?? 'Task without title.'} |
| Task Successful | \[SUCCESS\] \${TASK TITLE ?? 'Task without title.'}                 |
| Spit Output     | \[DATA\] \${TASK OUTPUT}                                            |
| Title Change    | \[TITLE\] \${NEW TITLE}                                             |

## Default Renderers

There are three main renderers which are 'default', 'verbose' and 'silent'. Default renderer is the one that can be seen in the demo, which is an updating renderer. But if the environment advirteses itself as non-tty it will fallback to the verbose renderer automatically. Verbose renderer is a text based renderer. It uses the silent renderer for the subtasks since the parent task already started a renderer. But silent renderer can also be used for processes that wants to have no output but just a task list.

Depending on the selected renderer, `rendererOptions` as well as the `options` in the `Task` will change accordingly. It defaults to default renderer as mentioned with the fallback to verbose renderer on non-tty environments.

- Options for the default renderer.
  - Global
  ```typescript
  public static rendererOptions: {
    indentation?: number
    clearOutput?: boolean
    showSubtasks?: boolean
    collapse?: boolean
    collapseSkips?: boolean
  } = {
    indentation: 2,
    clearOutput: false,
    showSubtasks: true,
    collapse: true,
    collapseSkips: true
  }
  ```
  - Per-Task
  ```typescript
  public static rendererTaskOptions: {
    bottomBar?: boolean | number
    persistentOutput?: boolean
  }
  ```
- Options for the verbose renderer.
  - Global
  ```typescript
  public static rendererOptions: { useIcons?: boolean, logger?: new (...args: any) => Logger }
  ```
- Options for the silent renderer.
  - NONE

## Custom Renderers

Creating a custom renderer with a beautiful interface can be done in one of two ways.

- First create a Listr renderer class.

```typescript
/* eslint-disable @typescript-eslint/no-empty-function */
import { ListrRenderer, ListrTaskObject } from 'listr2'

export class MyAmazingRenderer implements ListrRenderer {
  // Designate this renderer as tty or nonTTY
  public static nonTTY = true
  // designate your renderer options that will be showed inside the `ListrOptions` as rendererOptions
  public static rendererOptions: never
  // designate your custom internal task-based options that will show as `options` in the task itself
  public static rendererTaskOptions: never

  // get tasks to be renderered and options of the renderer from the parent
  constructor(public tasks: ListrTaskObject<any, typeof MyAmazingRenderer>[], public options: typeof MyAmazingRenderer['rendererOptions']) {}

  // implement custom logic for render functionality
  render(): void {}

  // implement custom logic for end functionality
  end(err): void {}
}
```

- Then there is a branching here you can either use:
  - Utilizing the task functions themselves. Take a look at [default renderer](src/renderer/default.renderer.ts) since it is implemented this way.
  ```typescript
  id: taskUUID
  hasSubtasks(): boolean
  isPending(): boolean
  isSkipped(): boolean
  isCompleted(): boolean
  isEnabled(): boolean
  isPrompt(): boolean
  hasFailed(): boolean
  hasTitle(): boolean
  ```
  - Observables, where `event` has `event.type` which can either be `SUBTASK`, `STATE`, `DATA` or `TITLE` and `event.data` depending on the `event.type`. Take a look at [verbose renderer](src/renderer/verbose.renderer.ts) since it is implemented this way.
  ```typescript
  tasks?.forEach((task) => {
      task.subscribe((event: ListrEvent) => {
        ...
  ```
  - Or if you so desire both!

## Render Hooks

Additional to rendering through `task.subscribe` or with a given interval, a renderer can also render on demand via a observable passed through the renderer.

Render hook can be the third optional variable of a given renderer, while using it is always optional.

```typescript
constructor (
    public tasks: ListrTaskObject<any, typeof DefaultRenderer>[],
    public options: typeof DefaultRenderer['rendererOptions'],
    public renderHook$?: ListrTaskObject<any, any>['renderHook$']
  )
```

Render hook is a void subject, which can be used to trigger re-render dynamically when any changes occur in the underneath.

```typescript
this.renderHook$.subscribe(() => {
  /* DO SOME RENDER MAGIC like render() */
})
```

**Supported for >v2.1.0.**

## Log To A File

Logging to a file can be done utilizing a module like [winston](https://www.npmjs.com/package/winston). This can be obtained through using the verbose renderer and creating a custom logger class that implements `Logger` which is exported from the index.

While calling a new Listr you can call it with `{ renderer: 'verbose', rendererOptions: { logger: MyLoggerClass } }`.

```typescript
import { logLevels, Logger } from 'listr2'

export class MyLoggerClass implements Logger {
  constructor(private options?: LoggerOptions) {}

  /* CUSTOM LOGIC */
  /* CUSTOM LOGIC */
  /* CUSTOM LOGIC */

  public fail(message: string): void {
    message = this.parseMessage(logLevels.fail, message)
    console.error(message)
  }

  public skip(message: string): void {
    message = this.parseMessage(logLevels.skip, message)
    console.warn(message)
  }

  public success(message: string): void {
    message = this.parseMessage(logLevels.success, message)
    console.log(message)
  }

  public data(message: string): void {
    message = this.parseMessage(logLevels.data, message)
    console.info(message)
  }

  public start(message: string): void {
    message = this.parseMessage(logLevels.start, message)
    console.log(message)
  }

  public title(message: string): void {
    message = this.parseMessage(logLevels.title, message)
    console.info(message)
  }
}
```

## Migration from Version v1

To migrate from prior versions that are older than v1.3.12, which is advisable due to upcoming potential bug fixes:

- rendererOptions has to be moved to their own key
- some of the types if initiated before assigning a Listr has to be fixed accordingly
- test renderer also combined with verbose renderer and icons of the verbose renderer is disabled by default which makes them basically same thing, so I think verbose is a better name for it

Please checkout [the entry in changelog.](./CHANGELOG.md#200-2020-05-06)

## Types

Useful types are exported from the root. It is written with Typescript, so it will work great with any modern IDE/Editor.
