#set page(paper: "a4", margin: 10mm)

#let image6x4 = source => image(
  source,
  width: 6in,
  height: 4in,
  fit: "cover",
)

#align(
  center + horizon,
  {
    image6x4("BiggerBoat-1.png")
    image6x4("BiggerBoat-2.png")
  },
)
