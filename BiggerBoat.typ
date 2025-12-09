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

  [== What are we gonna need?],
  [(for next time)],
  checkbox("A bigger boat"),
  checkbox("More snacks"),
  checkbox("Electronics"),
  checkbox("Board games"),
  checkbox("More movies"),
  checkbox("More toys"),
  checkbox("More TV"),
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

#let columns = (
  100% * left-right-scaling,
  100% * (1 - left-right-scaling),
);

#let inset = (0mm, 2mm);

#grid(
  rows: 100%,
  columns: columns,
  align: left + horizon,
  inset: inset,

  photo, questionaire,
)

#grid(
  rows: 100%,
  columns: columns.rev(),
  align: left + horizon,
  inset: inset.rev(),

  questionaire, photo,
)
