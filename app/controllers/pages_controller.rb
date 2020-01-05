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
                    "5-introduction-to-loops", "6-nested-data-structures", "7-a-review", "7-looping-through-live-data", "8-loops-to-lists",
                "9-exploring-live-data", "10-saving-work-with-functions", "11-function-arguments", "12-code-to-codebase"
    ]
    @intro_titles = ["Introduction", "Variables", "Lists", "Dictionaries", "Coding Tips",
                     "Loops", "Nested Data", "Make it Easy", "Loop Over Data", "Loops to Lists",
                     "Live Data", "Functions", "Arguments", "Code to Codebase" ]
    @intro_titles_and_links = @intro_titles.zip(@intro_links)


  end

end
