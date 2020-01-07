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

    @intro_labs_base = "https://colab.research.google.com/github/jigsawlabs-student/zero-to-data-viz-workshop/blob/master/"
    lab_links = ["1-introduction-to-lists-lab.ipynb", "2-employee-dictionaries-lab.ipynb",
                   "3-nested-data-structures-lab.ipynb", "4-exploring-live-data-lab.ipynb",
                   "5-for-loops-lab.ipynb", "6-scraping-to-plotting-lab.ipynb" ]

    lab_titles = ["Lists Lab", "Dictionaries Lab", "Nested Data Lab", "Live Data Lab", "For Loops Lab", "Scraping to Plots Lab"]

    @lab_titles_and_links = lab_titles.zip(lab_links)
  end

end
