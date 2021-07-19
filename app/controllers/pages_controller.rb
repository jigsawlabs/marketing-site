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
    @docker_base_url = "https://colab.research.google.com/github/jigsawlabs-student/docker-intro/blob/master/"
    docker_links = ["0-docker-intro/0-docker-playground", "0-docker-intro/1-intro-to-docker", "0-docker-intro/2-why-docker", "1-docker-client/1-docker-image-client",
                     "1-docker-client/2-docker-containers", "1-docker-client/3-docker-images-containers-lab", "1-docker-client/4-altering-container-processes", "1-docker-client/5-bind-mounts",
                     "1-docker-client/6-volumes", "2-docker-files/1-base-run-cmd", "2-docker-files/2-docker-build-lab", "2-docker-files/3-advanced-build"
    ]

    docker_titles = ["Docker Playground", "Docker Overview", "Why Docker", "Images", "Containers", "Images and Containers Lab", "Altering Container Processes",
                     "Bind Mounts", "Volumes", "Dockerfiles", "Dockerfiles lab", "Advanced builds"]

    @docker_titles_and_links = docker_titles.zip(docker_links)

    @spark_base_url = "https://colab.research.google.com/github/jigsawlabs-student/"
    spark_rdds = "pyspark-rdds/blob/main/"
    spark_titles = ["Spark in Memory", "Spark in Parallel", "Spark Cluster Lab", "Map Reduce",
                    "Map Reduce Lab", "Lazy RDDs", "Spark Workflow", "RDDs Lab", "Resilient RDDs", "Spark DataFrames",
                    "Selecting Rows", "Selecting Lab", "Schema in Spark", "Schema in Spark Lab"]
    spark_links = ["#{spark_rdds}0-spark-in-memory", "#{spark_rdds}1-spark-in-parallel", "pyspark-cluster-lab/blob/main/1-pyspark-cluster-lab",
                   "#{spark_rdds}2-map-reduce-and-shuffle", "pyspark-map-reduce-lab/blob/main/2-map-reduce-lab", "#{spark_rdds}3-lazy-rdds",
                   "#{spark_rdds}4-spark-workflow", "4-spark-rdds-lab/blob/main/index", "#{spark_rdds}5-resilient-rdds", "spark-dataframes/blob/main/1-spark-dataframes",
                   "spark-dataframes/blob/main/2-selecting-rows", "pyspark-dataframes/blob/main/3-selecting-spark-lab", "pyspark-dataframes/blob/main/4-from-sql-to-spark",
                   "pyspark-dataframes/blob/main/5-sql-to-spark-lab"]

    @spark_titles_and_links = spark_titles.zip(spark_links)


    @neural_nets_base = "https://colab.research.google.com/github/jigsawlabs-student/pytorch-intro-curriculum/blob/main/"
    neuron_links = ["1-prediction-function/1-intro-to-neurons", "1-prediction-function/2-dot-products", "1-prediction-function/3-sigmoid-neuron", "1-prediction-function/4-first-neural-network",
                    "2-training/5-training-a-neuron", "2-training/6-gradient-descent-single-param", "2-training/7-pytorch-gradient-gradient",
    ]

    neuron_titles = ["Intro to Neurons", "Dot Products", "Sigmoid Neurons", "A Neural Network", "Training a Neuron", "Gradient Descent",
                      "Pytorch Gradient Descent" ]


    @neuron_titles_and_links = neuron_titles.zip(neuron_links)
    neural_net_links = ["3-layers/8-neurons-to-neural-networks", "3-layers/9-multiple-neurons",
                         "3-layers/10-building-layers", "3-layers/11-the-output-layer", "3-layers/12-the-input-layer", "4-neural-nets/13-building-neural-nets"]
    neural_net_titles = ["Neural Nets", "More Neurons", "Building Layers",
                      "The Output Layer", "The Input Layer", "Building Neural Nets"]

    training_links = ["5-training-mathematically/14-whats-next", "5-training-mathematically/15-understanding-derivatives",
                      "5-training-mathematically/16-derivative-shortcuts", "5-training-mathematically/17-chain-rule", "5-training-mathematically/18-multiparameter-gradient-descent",
                      "5-training-mathematically/19-algebra-gradient-descent", "5-training-mathematically/20-backpropagation-and-gradient-descent", "6-review-neural-nets/21-review-neural-nets"]
    training_titles = ["What's Next", "Derivatives", "Derivative Shortcuts", "The Chain Rule", "Multiparameter Descent", "Algebraic Descent", "Backpropagation", "Neural Nets Review"]

    @neural_net_titles_and_links = neural_net_titles.zip(neural_net_links)
    @training_titles_and_links = training_titles.zip(training_links)
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
