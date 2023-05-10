# resume

This is my vitae / resume. It's built in {Xe,}LaTeX. I have an Obsidian table that
contains my past positions, relevant skills, and certifications. As of now, I
manually tailor the resume for jobs that especially pique my interest. I am curious
if I can automate that. As of now, I leave it more general for most positions. That
said, since being laid off, I've had a hard time getting interviews, and will be
looking to attack the market harder. I may build some job search tools to aid in this,
and to boost my portfolio.

## How to Use This

I found [this resume class](https://github.com/huxuan/resumecls/) on Overleaf.
I do not use Overleaf for editing. I have a `pdfviewer` buffer open in emacs with
`auto-revert-mode` set. I make changes in another buffer, and run `nix flake build`
to set changes. The resume class is styled just enough. It saves me the trouble of basing off
\article and writing a lot more markup. I may extend this one or make my own class in the future.
This single column, simple format is supposed to work well with applicant tracking systems
(ATS). So far, most resume importers have have worked well with it. Anyway, see the documentation
and linked example repo for more info on using the class

The `flake.nix` is able to handle CTAN dependencies and build the resume, reproducibly and
reliably. Emacs drops a `auto.el` thing when editing Tex files, and the `.gitignore` didn't
seem to respect it. So that's about that.

### Stealing My Resume Format and Building it Yourself

A disclaimer, as I mentioned it before. At time of writing, I've been laid off 4
months, have sent 1,000+ apps with 2 interviews so far. Actively working for very
little comp on our cloud startup while doing Uber/carpentry to earn and provide for my family.
I'm clearly having a hard time competing with the other 30,000 laid off engineers, so please
think thrice before taking this format, as I've had limited success.

So with the warning out of the way, here's how you can use this;

1. Open `resume.tex`, make your edits and change my name at the least
2. In the root of the directory run `nix flake build` or `nix build`
3. `resume.pdf` should be symlinked in `result/`

CTAN packages can be added in `flake.nix` under the let statement. You can search `nixpkgs`
to find packages and verify they are in the nix ecosystem. Please note that if it's not
under `texlive`, those packages tend to have unfree licenses.

## License
To best of my knowledge, my upstreams aren't using anything that would restrict me from
licensing this under the MIT license. If this repo helps you in some way, use it. If I can
help you somehow, let me know (this is not a warranty or guarentee of anything). Just take
my name/positions out...

### About Github and GPT
Language and Code Generations models being trained on public data not belonging to the public
domain has become a subject of great concern. Though I've had Github accounts for many, many
years, I have privately hosted my own code for most of my development career. I've used Redmine,
then GitLab and eventually just Gitea. I don't typically keep these UIs publicly accessible however.
I may link to portfolios of liberally licensed projects that I have contributed to/maintain. If
they aren't on GitHub already, I'd ask (though under the GPL/MIT/BSD licenses, you still have the right)
that you not mirror/republish it on platforms where LLMs could enable libre software codes snippets to
be used unethically, arguably illegally, without attribution.

[![Please don't upload to GitHub](https://nogithub.codeberg.page/badge.svg)](https://nogithub.codeberg.page)
