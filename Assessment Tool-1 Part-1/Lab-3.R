# Install package (first time only)
# install.packages("DiagrammeR")

library(DiagrammeR)

grViz("
digraph MDP {

graph [
  layout = dot,
  rankdir = TB,
  bgcolor = white,
  splines = ortho,
  nodesep = 0.5,
  ranksep = 0.8
]

node [
  shape = box,
  style = 'filled,rounded',
  fontname = Helvetica,
  fontsize = 16,
  penwidth = 2,
  color = black
]

edge [
  penwidth = 2,
  color = black,
  arrowsize = 0.8
]

A [label='MARKOV DECISION PROCESS',
   fillcolor='#1F77B4',
   fontcolor=white,
   fontsize=22]

B [label='Environment',
   fillcolor='#A8D5BA']

C [label='Agent',
   fillcolor='#FFD966']

D [label='Current State (S)',
   fillcolor='#C9DAF8']

E [label='Available Actions (A)',
   fillcolor='#F9CB9C']

F [label='Transition Model\nP(S_next|S,A)',
   fillcolor='#B4A7D6']

G [label='Reward Function\nR(S,A)',
   fillcolor='#F4CCCC']

H [label='Policy',
   fillcolor='#D9EAD3']

I [label='Value Function',
   fillcolor='#FFF2CC']

J [label='Decision Making',
   fillcolor='#D0E0E3']

K [label='Next State (S_next)',
   fillcolor='#B6D7A8']

L [label='Performance Evaluation',
   fillcolor='#CFE2F3']

M [label='Optimal Policy',
   fillcolor='#6FA8DC',
   fontcolor=white]

A -> B
A -> C
B -> D
C -> E
D -> F
E -> F
F -> G
G -> H
H -> I
I -> J
J -> K
K -> L
L -> M

}
")