#import "peace-of-posters/lib.typ" as pop

#set page("a1", margin: 2cm)
#pop.set-poster-layout(pop.layout-a1)
#pop.set-theme(pop.psi-ch)
#set text(font: "arial", size: pop.layout-a1.at("body-size"))
#let box-spacing = 1.2em
#set columns(gutter: box-spacing)
#set block(spacing: box-spacing)
#pop.update-poster-layout(spacing: box-spacing)

#pop.title-box(
  "Predicting electronic screening for fast Koopmans spectral functionals",
  authors: "Edward Linscott¹², Yannick Schubert³, Sandra Luber³, and Nicola Marzari¹²⁴",
  institutes: "¹Center for Scientific Computing, Theory and Data, Paul Scherrer Institute, Switzerland ²National Centre for Computational Design and Discovery of Novel Materials (MARVEL), Paul Scherrer Institute, Switzerland ³Department of Chemistry, University of Zurich, Switzerland ⁴Theory and Simulation of Materials, École Polytechnique Fédérale de Lausanne, Switzerland",
  logo: image("media/logos/psi_scd_banner_white.png", width: 35%),
  background-image: "../media/backgrounds/pink-yellow.png",
  banner-height: 20%)

#columns(2,[
  #pop.column-box(heading: "Summary")[
    - Koopmans functionals are a powerful tool for predicting spectral properties of materials (as accurate as state-of-the-art GW)
    - However, they rely on electronic screening being captured by "screening parameters"
    - We construct a machine-learning model to predict these parameters
    - Minimal training data is required
  ]

  #pop.column-box(heading: "Screening parameters")[
    Insert here a figure of the screening parameters being required (see CECAM talk)
  ]

  #pop.column-box(heading: "The use-case")[
    Insert here the figure from MARVEL meeting
  ]

  #pop.column-box(heading: "The model")[
    *Descriptors* inspired by SOAP descriptors

    $rho_i (bold(r)) arrow.r $

    *Network* simply ridge regression!

  ]

  #pop.column-box(heading: "Accuracy")[
    - Model predicts screening parameters with high accuracy
    - Koopmans functionals with predicted parameters are as accurate as GW
    - Model is transferable to new materials
  ]

  #pop.column-box(heading: "Speed-up")[
    
  ]

  #pop.column-box(heading: "Transferability")[

  ]
  #colbreak()

#pop.bibliography-box("../references.bib")

])


#pop.bottom-box()[
  #stack(dir: ltr, spacing: 0.5em,
    box(height: 3em, inset: 1em, [For more details see Schubert _et al._, npj Computational Materials (2024)]),
    image("figures/qr_placeholder.svg", height: 3em),
  )
  #linebreak()
]

