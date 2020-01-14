class PagesController < ApplicationController
  def index

  end

  def about

  end

  def course_details

  end

  def tos

  end

  def free
    @intro_base_url = "https://colab.research.google.com/github/jigsawlabs-student/code-intro/blob/master/"


    @intro_links = ["0-starting-to-code", "1-visual-variables", "2-visual-lists", "3-visual-dicts", "4-review",
                    "5-introduction-to-loops", "6-nested-data-structures", "7-make-it-easy", "8-looping-through-live-data", "9-loops-to-lists",
                "10-exploring-live-data", "11-saving-work-with-functions", "12-function-arguments", "13-code-to-codebase"
    ]
    @intro_titles = ["Introduction", "Variables", "Lists", "Dictionaries", "Coding Tips",
                     "Loops", "Nested Data", "Make it Easy", "Loop Over Data", "Loops to Lists",
                     "Live Data", "Functions", "Arguments", "Code to Codebase" ]
    @intro_titles_and_links = @intro_titles.zip(@intro_links)

    @intro_labs_base = "https://colab.research.google.com/github/jigsawlabs-student/zero-to-data-viz-workshop/blob/master/labs/"
    lab_links = ["1-introduction-to-lists-lab", "2-employee-dictionaries-lab",
                   "3-nested-data-structures-lab", "4-exploring-live-data-lab",
                   "5-for-loops-lab", "6-scraping-to-plotting-lab" ]

    lab_titles = ["Lists Lab", "Dictionaries Lab", "Nested Data Lab", "Live Data Lab", "For Loops Lab", "Scraping to Plots Lab"]

    @lab_titles_and_links = lab_titles.zip(lab_links)


    @neural_nets_base = "https://colab.research.google.com/github/jigsawlabs-student/neural-nets-from-scratch/blob/master/"
    neural_links = ["0-intro-ml/0-ml-problem", "0-intro-ml/1-ml-process", "1-hypothesis-fn-neuron/1-single-neurons/0-intro-to-neural-networks",
                     "1-hypothesis-fn-neuron/1-single-neurons/1-intro-to-perceptrons", "1-hypothesis-fn-neuron/1-single-neurons/2-plotting-a-perceptron",
                     "1-hypothesis-fn-neuron/1-single-neurons/3-sigmoid-neuron", "1-hypothesis-fn-neuron/1-single-neurons/4-sigmoid-neuron-lab",
                     "2-layers/0-summations-and-dot-products", "2-layers/1-multiple-neurons", "2-layers/2-building-a-layer","2-layers/6-building-layer-lab", "2-layers/4-building-layers",
                     "2-layers/5-the-last-layer", "3-training-proc/2-training-conceptually/5-training-a-neuron",
                     "3-training-proc/2-training-conceptually/6-gradient-descent-single-param",
                     "3-training-proc/3-training-mathematically/1-working-with-derivatives", "3-training-proc/3-training-mathematically/2-derivative-shortcuts",
                     "3-training-proc/3-training-mathematically/3-intro-to-gradient-descent",
                     "3-training-proc/3-training-mathematically/4-partial-derivatives",
                     "3-training-proc/3-training-mathematically/5-applying-gradient-descent", "4-backpropagation/0-chain-rule",
                     "4-backpropagation/1-chain-rule-to-backprop", "4-backpropagation/2-train-network"]
    neural_titles = ["Introduction", "The Process", "Neural Networks", "Perceptrons", "Plotting Perceptrons",
                      "Sigmoid Neuron", "Sigmoid Neuron Lab", "Dot Products", "Multiple Neurons", "Building a Layer", "Building a Layer Lab", "Building Layers",
                      "Output Layers", "Training a Neuron", "Gradient Descent", "Derivatives", "Derivative Rules", "The Gradient Multiparameter",
                      "Partial Derivatives", "Applying Gradient Descent", "Chain Rule", "Back Propagation", "Building a Network"]

    @neural_nets_titles_and_links = neural_titles.zip(neural_links)
  end

end
