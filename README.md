# AtCoder

https://atcoder.jp/

## Prepare for contests

Initialize:

```bash
acc login
acc session

pipenv shell
oj login https://atcoder.jp/

cp -r .acc/templates/* $(acc config-dir)
acc config default-task-choice all
acc config default-template ruby
acc config
```

Setup for every contests:

```bash
pipenv shell

acc new abcXXX
cd abcXXX
cd a/
edit main.xxx
oj test -d tests/ -c 'xxx main.xxx'
acc s main.xxx
```

### ref

- https://github.com/Tatamo/atcoder-cli
- https://github.com/kmyk/online-judge-tools

## Practices

https://atcoder.jp/contests/practice/custom_test

## Languages

| Name       | Version         | URL                                                                                                     |
| :--------- | :-------------- | :------------------------------------------------------------------------------------------------------ |
| Ruby       | 2.3.3           | https://docs.ruby-lang.org/ja/2.3.0/doc/index.html                                                      |
| Python3    | 3.4.3           | https://docs.python.org/release/3.4.3/                                                                  |
| Rust       | 1.15.1          | https://doc.rust-lang.org/1.15.1/std/index.html                                                         |
| Scala      | 2.11.7          | https://www.scala-lang.org/api/2.11.7/#package                                                          |
| Haskell    | GHC 7.10.3      | https://hoogle.haskell.org/, <https://downloads.haskell.org/~ghc/7.10.3/docs/html/libraries/index.html> |
| Clojure    | 1.8.0           | https://clojuredocs.org/, https://clojure.github.io/clojure/branch-clojure-1.8.0/index.html             |
| TypeScript | 2.1.6           | https://devdocs.io/javascript/                                                                          |
| JavaScript | node.js v5.12.0 | https://devdocs.io/javascript/                                                                          |

ref: https://language-test-201603.contest.atcoder.jp/
