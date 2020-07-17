module ArticlesHelper
	def format_article(article)
    if article== "haseeb"
    	"Mr. #{article}"
    else
      "Ms. #{article}"
    end
  end
end