# resume

This is my vitae / resume. It's built in {Xe,}LaTeX. I have an Obsidian database
full of past employments and skills used. As of now, I just manually tailor
for jobs that really interest me and leave it broad for the rest. That said,
since losing my last job I've had a hard time getting interviews so watch this
repo if you're looking for a si9mple script to tailor resumes from an Obsidian
notes database.

## How to Use This

I found [this resume class](https://github.com/huxuan/resumecls/) on overleaf and
said it looked great, and was styled just enough and saved me the trouble of trying
to achieve something similar with just an \article and markup. The `flake.nix` is
able to handle all the CTAN dependencies and build the resume, reproducibly and
reliably. Emacs drops a `auto.el` thing, and the `.gitignore` didn't seem to respect
it, so that's about that.

### Stealing My Resume Format and Building it Yourself

A disclaimer, as I mentioned it before. At time of writing, I've been laid off 4
months, have sent 1,000+ apps with 2 interviews so far. Actively working for very
little comp on our cloud startup while doing Uber to occupy time. I'm clearly doing
something wrong, so please think thrice before taking this format.

So with the warning out of the way, here's how you can use this;

    1. Open `resume.tex`, make your edits and change my name at the least
    2. In the root of the directory run `nix flake build` or `nix build`
    3. `resume.pdf` should be symlinked in `result/`

CTAN packages can be added in `flake.nix` under the let statement. You can search `nixpkgs`
to find packages and verify they are in the nix ecosystem. Please note that if it's not
under `texlive`, those packages tend to have unfree licenses.

## License
To best of my knowledge, my upstreams aren't using anything that would restrict me from
licensing this however I want. That said, do whatever you want as long as you take my
name out of it.

### About Github and GPT
Futhermore, you may find I link to a portfolio of other liberally licensed projects in
my vitae/resume. You'll find that while I've been using Github for many years, I don't
have many public repositories. I've been happy self-hosting for many years, and with
the recent advent of the LLM, I'm glad that I have been. I publish some of my stuff here in the
interest of furthering my career by establishing an online presence, and not being a
total hermit. I intend to publish my planned resume automations solely on my own version
control platform. See the badge below for details. GPT integrations have been suggested
to me recently as well. I intend to keep my resumes and cover letters a natural reflection
of myself and capability. I think the value of written and well voiced cover letters will
only increase with AI, though I'm sure getting them read will be tougher.

[![Please don't upload to GitHub](https://nogithub.codeberg.page/badge.svg)](https://nogithub.codeberg.page)

See above. This stuff is WTFPL, you may do as you wish, however remember feeding the beast
is an ethical choice.
