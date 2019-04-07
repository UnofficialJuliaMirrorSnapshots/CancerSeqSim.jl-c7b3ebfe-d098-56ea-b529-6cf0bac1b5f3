module CancerSeqSim

using Distributions
using DataFrames
using GLM
using HypothesisTests
using StatsBase
using Printf
using Statistics
using Random
using RecipesBase

import Base.show

export
  # types
  Simulation,
  AllMetrics,
  MetricObj,
  RsqObj,
  AnalysedData,
  SampledData,
  InputParameters,
  SimResult,
  RawOutput,
  cancercell,
  bdprocess,
  SimulationSamples,

  #functions
  simulate,
  getmetrics,
  getsummary,
  vafhistogram,
  cumulativeplot,
  cumulativedist,
  birthdeathprocess,
  getsamples,
  tumourgrow_stemcell,
  run1simulationstem,
  simulatestemcells,
  simulatedifferentmutations,
  simulatedifferentmutationsmoran


### source files
include("readdata.jl")
include("runsims.jl")
include("runsimssample.jl")
include("runstemcellsim.jl")
include("runsimsdifferentmu.jl")
include("samplesim.jl")
include("util.jl")
include("multiplesamples.jl")
include("plots.jl")


end
