#    Copyright 2017 Operation Paws for Homes
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.

class PagesController < ApplicationController
  before_action :require_login, only: %i[status_definitions newsletters calendar]
  before_action :select_bootstrap41
  before_action :show_user_navbar, only: %i[newsletters calendar]

  def home
    return unless signed_in?
    redirect_to controller: 'dashboards', action: :index
  end

  def status_definitions
    @hide_topbar = true
  end
end
