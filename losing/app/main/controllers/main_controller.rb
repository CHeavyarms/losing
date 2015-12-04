# By default Volt generates this controller for your Main component
module Main
  class MainController < Volt::ModelController
    model :store

    def index
      # Add code for when the index view is loaded
    end

    def about
      # Add code for when the about view is loaded
    end

    before_action :require_login
    def progress
    end

    def add_check_in

      _check_ins << { date: Time.now, weight: page._new_weight,\
         bodyfat: page._new_bodyfat, bench: page._new_bench, height: page._new_height}
      page._new_weight = ''
      page._new_height = ''
      page._new_bodyfat = ''
      page._new_bench = ''


    end

    private

    # The main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._component, params._controller, and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end

    # Determine if the current nav component is the active one by looking
    # at the first part of the url against the href attribute.
    def active_tab?
      url.path.split('/')[1] == attrs.href.split('/')[1]
    end
  end
end
