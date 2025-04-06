+++
title = "The Tanglenomicon"
authors = ["jstarr"]
+++

{{< mathjax >}}

# Tangle Tabulation in Our Research Group

The tangle tabulation portion of UIAT works to systematically catalog various
types of tangles and their invariants. These efforts aim to create a
comprehensive database to serve as a valuable resources for researchers.

## Importance of Tabulation Efforts

Much like protein databases are essential for biologists studying the structure
and function of proteins, our tangle databases provide crucial information for
understanding the properties and behaviors of tangles and knots. By creating
detailed and accurate tables, we provide a foundation for further research,
enabling discoveries in theoretical and applied mathematics as well as hard
science disciplines such as; physics, chemistry, and biology.

## What is a Knot?

A knot, when used in everyday life, is a tool, whether the "bunny ear" knot
holding on your shoe, a decorative monkey's fist on your keychain, or a climbing
hitch securing yourself to a rock wall. These everyday knots are made of a
single string with open ends, which can always be untied by pulling on the
loops. However, in mathematical knot theory, we consider knots as closed loops
in three-dimensional space that do not intersect themselves. Imagine taking a
piece of string, tying it into a knot, and then joining the ends together,
creating a knot that can be studied mathematically.

{{< figure
    src="5_1.svg"
    alt="Knot $5_1$"
    caption="Knot $5_1$ by [knotplot](https://knotplot.com/)"
    >}}

## History of Knot Tabulation

Interest in knot tabulation began in the 1860s, when Lord Kelvin hypothesized
that atoms were knotted vortices in the aether. This idea led to the creation of
the first knot table by P.G. Tait, who manually computed tables of prime knots
up to seven crossings. Tait, along with Kirkman and Little, continued this work
for 25 years, eventually publishing a complete list of prime knots up to ten
crossings. Their tables contained a single error, which was corrected in 1974 by
Perko, an amateur mathematician.

In the 1960s, J.H. Conway introduced a novel approach to knot tabulation by
breaking knots into simpler components called tangles. Conway's tangle calculus
made the combinatorial work of knot tabulation more manageable. This approach
was later verified and expanded by Caudron, marking the end of the hand
computation era.

With the advent of electronic computers in the early 1980s, researchers like
Dowker and Thistlethwaite began using computers to construct knot tables. Their
two-pass approach, which involved enumerating all knot projections and computing
invariants to distinguish them, became the standard for subsequent efforts.
Hoste, Thistlethwaite, and Weeks used a similar method to extended knot tables
to sixteen crossings in 1998. Burton's 2020 effort pushed the boundary to
nineteen crossings, highlighting the computational challenges of knot
tabulation.

{{< figure
    src="knots_to_7.svg"
    alt="Knot to seven crossings"
    caption="Knots up to seven crossings by [knotplot](https://knotplot.com/)"
    >}}

## What is a Tangle?

A tangle is a distinct portion of a knot diagram characterized by four arcs
extending in the compass directions: northwest (NW), northeast (NE), southwest
(SW), and southeast (SE). This portion is bounded by a Conway circle, a
[Jordan curve](https://en.wikipedia.org/wiki/Curve#Jordan) intersecting the knot
diagram at exactly four points. Tangles serve as fundamental components in knot
theory, facilitating the construction and analysis of complex knots.

{{< figure
    src="tangle_maker.svg"
    alt="Making a tangle"
    caption="making a tangle by [Joe Starr](https://joe-starr.com/)"
    >}}

## Introduction to Our Tangle Tabulation Projects

Our group is engaged in several tangle tabulation projects, including:
