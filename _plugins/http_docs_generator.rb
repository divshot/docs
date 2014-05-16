Liquid::Condition.operators['is_current_page'.freeze] = lambda do |cond, left, right|
  left && right ? left.gsub('/index.html', '').match(Regexp.new(right + '$')) : false
end

module Jekyll

  class RoutePage < Page
    def initialize(site, base, dir, route)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(base, 'route.html')
      self.data['route'] = route
    end
  end

  class EntityPage < Page
    def initialize(site, base, dir, entity)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(base, 'entity.html')
      self.data['entity'] = entity
    end
  end

  class HttpDocsPageGenerator < Generator
    safe true

    def generate(site)
      site.data['http'].each do |entity|
        entity_page = EntityPage.new(site, site.source, "/http/entities/#{entity['entity_name']}", entity)
        site.pages.push entity_page
        entity['routes'].each do |route|
          route_page = RoutePage.new(site, site.source, "/http/#{route['method']}#{route['minpath']}", route)
          site.pages.push route_page
        end
      end
    end
  end

end