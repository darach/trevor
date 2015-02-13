# **trevor** 

__ Because Travis CI leaves a little out if you Erlang/OTP much... __

![Trevor Logo](https://github.com/darach/trevor/blob/master/media/Trevor_transparent.png =200x)

## About

Simplify Erlang/OTP release management on my laptop and in my CI environment(s).

Trevor is a python script that can:

* Download and install kerl
  * Use kerl to install Erlang/OTP releases
* Install rebar
* Install rebar3
* Install relx
* Build and save dialyzer plts for OTP releases

Trevor caches built artefacts in its github repository so you can

* Fetch rebar, rebar3, relx into your continuous integration environment
* Fetch prebuild dialyzer

__ Why __

* Tired of rebar and relx changing under my feet
* Tired of locally cached rebar and relx copies going out of sync
* Tired of dialyzer blues
* Mostly automated. Use it on your laptop, in your vagrant, on your CI.
	* Just add your .kerlrc 

## Usage

__ Get listing on available commands __

```

$ ./trevor

Documented commands (type help <topic>):
========================================
get  help  interactive  travis  wink

```

__ Get detailed help on a specific command __

```

$ ./trevor help wink
 wink
        Conditionally build and install OTP releases via kerl
        
```

__ Install kerl, build and install default set of otp releases, and create plts __

```

bash-4.2$ ./trevor wink
Winking in 17.3
  - Skipping build. Already built!
  - Skipping build. Already installed!
  - Skipping dialyzer build_plt. Already built!
Winking in 17.0
  - Skipping build. Already built!
  - Skipping build. Already installed!
  - Skipping dialyzer build_plt. Already built!
Winking in 17.1
  - Skipping build. Already built!
  - Skipping build. Already installed!
  - Skipping dialyzer build_plt. Already built!
Winking in R16B03
  - Skipping build. Already built!
  - Skipping build. Already installed!
  - Skipping dialyzer build_plt. Already built!
Winking in R16B02
  - Skipping build. Already built!
  - Skipping build. Already installed!
  - Skipping dialyzer build_plt. Already built!

```

Already installed builds, installs and dialyzer plts will be skipped.

This is a very convenient way to setup a fresh machine once you've crafted a .kerlrc!

__ On Travis CI, to get a rebar,relx and plt for your current environment's Erlang/OTP __

```

$ ./trevor travis

```

## LICENSE

MIT

## Status

Work in progress

## Features

Work in progress

## Enjoy!
