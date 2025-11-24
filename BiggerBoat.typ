#set page(
  width: 6in,
  height: 4in,
  margin: 0mm,
  fill: rgb("#c4bbc5"),
)

#set text(
  fill: rgb("#ef1707"),
)

#let checkbox(label) = [
  #set list(marker: move(dy: -0.1em, (square(size: 0.7em))))
  - #label
]

#let questionaire = grid(
  columns: 100%,
  align: left + horizon,
  inset: (y: 2mm, x: 0mm),

  [== What are we going to need?],
  [(for next time)],
  [],
  checkbox("A bigger boat"),
  checkbox("More snacks"),
  checkbox("CCCCC"),
  checkbox("DDDDD"),
  checkbox("EEEEE"),
  checkbox("FFFFF"),
  //  checkbox("GGGGG"),
  checkbox("____________"),
  checkbox("____________"),
  checkbox("____________"),
  checkbox("____________"),

  "Name: __________",
)

#let left-right-scaling = 0.77;

#let photo = image(
  "BiggerBoat.webp",
  width: 6in * left-right-scaling,
  height: 4in,
  fit: "cover",
)

#grid(
  rows: 100%,
  columns: (
    100% * left-right-scaling,
    100% * (1 - left-right-scaling),
  ),
  align: left + horizon,
  inset: (0mm, 2mm),

  photo, questionaire,
)

#grid(
  rows: 100%,
  columns: (
    100% * (1 - left-right-scaling),
    100% * left-right-scaling,
  ),
  align: left + horizon,
  inset: (2mm, 0mm),

  questionaire, photo,
)
