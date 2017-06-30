module Jekyll


  class CategoryPage < Page
    def initialize(site, base, dir, category)
      p "initialize CategoryPage"
      p category
      p dir
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'category_index.html')
      self.data['category'] = category
    end
  end

  class CategoryPageGenerator < Generator
    safe true

    def generate(site)
      p "generating Categories pages"
      if site.layouts.key? 'category_index'
        dir = site.config['category_dir'] || 'categories'
        site.categories.each_key do |category|
          slug = category.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
          site.pages << CategoryPage.new(site, site.source, File.join(dir, slug), category)
        end
      end
    end

  end


end
