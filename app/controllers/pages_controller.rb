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

    @pandas_base_url = "https://colab.research.google.com/github/jigsawlabs-student/pandas-free-curriculum/blob/master/"
    pandas_links = ["0-pandas-intro-to-dataframes", "1-working-with-columns", "3-selecting-cols-lab", "2-selecting-rows","4-selecting-rows-lab", "5-exploring-data", "6-plotting-data", "7-exploring-plotting-data-lab"]
    pandas_titles = ["Dataframes", "Select Columns", "Select Columns Lab", "Selecting Rows", "Selecting Rows Lab", "Exploring Data", "Plotting Data", "Plotting Data Lab"]
    @pandas_titles_and_links = pandas_titles.zip(pandas_links)


    @neural_nets_base = "https://colab.research.google.com/github/jigsawlabs-student/neural-nets-from-scratch/blob/master/"
    neuron_links = ["0-intro-ml/0-ml-problem", "0-intro-ml/1-ml-process", "1-hypothesis-fn-neuron/1-intro-to-neurons", "1-hypothesis-fn-neuron/2-plotting-a-neuron",
                     "1-hypothesis-fn-neuron/3-sigmoid-neuron", "1-hypothesis-fn-neuron/4-sigmoid-neuron-lab",
                     "2-training-proc/2-training-conceptually/5-training-a-neuron",
                     "2-training-proc/2-training-conceptually/6-gradient-descent-single-param",
                     "2-training-proc/3-training-mathematically/1-working-with-derivatives", "2-training-proc/3-training-mathematically/2-derivative-shortcuts",
                     "2-training-proc/3-training-mathematically/3-intro-to-gradient-descent", "2-training-proc/3-training-mathematically/4-partial-derivatives",
                     "2-training-proc/3-training-mathematically/5-applying-gradient-descent",
                     "2-training-proc/3-training-mathematically/6-gradient-descent-lab",
                     "2-training-proc/3-training-mathematically/7-taking-stock",
                     "2-training-proc/3-training-mathematically/8-chain-rule",
                     "2-training-proc/3-training-mathematically/9-chain-rule-on-neuron"
    ]

    neuron_titles = ["Introduction", "The Process", "Intro to Neurons", "Plotting a Neuron", "Sigmoid Neuron", "Sigmoid Neuron Lab",
                      "Training a Neuron", "Gradient Descent", "Derivatives", "Derivative Rules", "Multiparameter Descent",
                      "Partial Derivatives", "Applying Gradient Descent", "Gradient Descent Lab", "Taking Stock", "Chain Rule", "Chain Rule With Neurons"]


    @neuron_titles_and_links = neuron_titles.zip(neuron_links)
    neural_net_links = ["3-layers/0-neurons-to-neural-networks", "3-layers/1-summations-and-dot-products", "3-layers/2-multiple-neurons", "3-layers/3-building-a-layer",
                         "3-layers/4-mnist-layer-lab", "3-layers/5-building-layers", "3-layers/6-the-last-layer", "3-layers/7-mnist-layers-lab",
                     "4-backpropagation/1-chain-rule-to-backprop",
                     "4-backpropagation/2-train-network", "4-backpropagation/3-mnist-train"]
    neural_net_titles = ["Onto Neural Networks", "Dot Products", "Multiple Neurons", "Building a Layer", "Building a Layer Lab", "Building Layers",
                      "Output Layers", "MNIST Layers Lab", "BackProp Revisited", "Building a Network", "Predicting with MNIST"]

    @neural_net_titles_and_links = neural_net_titles.zip(neural_net_links)
    @decision_trees_base = "https://colab.research.google.com/github/jigsawlabs-student/decision-trees-intro/blob/master/"

    tree_links = ["1-ml-overview-4/0-ml-problem", "1-ml-overview-4/1-ml-process",
                   "2-decision-trees-4/2-decision-trees-hypothesis", "2-decision-trees-4/3-training-decision-trees",
                   "2-decision-trees-4/4-adding-a-cost-function", "2-decision-trees-4/5-reviewing-ml",
                   "3-practical-ds-4/0-sklearn", "3-practical-ds-4/1-sklearn-lab", "4-ds-concepts-4/0-test-train-split", "4-ds-concepts-4/1-bias-variance-tradeoff"]

                  pandas_links = ["3-practical-ds-4/2-pandas-intro-to-dataframes", "3-practical-ds-4/3-working-with-columns", "3-practical-ds-4/4-selecting-cols-lab", "3-practical-ds-4/5-df-rows-and-cols-lab",
                   "3-practical-ds-4/6-feature-engineering-intro", "3-practical-ds-4/7-feature-engineering-lab" ]
                   pandas_titles = [ "Pandas Dataframes", "Pandas Columns", "Pandas Columns Lab", "Rows and Columns Lab",
                   "Feature Engineering", "Engineering to Model Lab"]

    tree_titles = ["Machine Learning Problem", "The Process", "Hypothesis Function", "Training", "Cost Function", "Reviewing",
                   "Sklearn", "Sklearn Lab", "Test Train Split", "Bias Variance Tradeoff"]

    @tree_links_and_titles = tree_titles.zip(tree_links)
    @pandas_links_and_titles = pandas_titles.zip(pandas_links)
  end

end
