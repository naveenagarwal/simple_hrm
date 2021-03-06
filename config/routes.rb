SimpleHrm::Application.routes.draw do


  devise_for :admins
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Admin namespace
  namespace :admin do
    resources :dashboard, only: [:index] do
    end
  end

  namespace :user_management do
    resources :users, except: [:show]
    resources :roles, except: [:show]
    resources :authentication_configurations, only: [:update]
  end

  resources :user_dashboard, only: [:index]

  get 'user_management/authentication_configurations/edit' => "user_management/authentication_configurations#edit", as: :edit_user_management_authentication_configuration

  resources :profiles, only: [:edit, :update]

  namespace :job do
    resources :job_titles, except: [:show] do
      member do
        delete :destroy_specification
      end
    end

    resources :salary_components,         except: [:show]
    resources :pay_grades,                except: [:show]
    resources :employment_statuses,       except: [:show]
    resources :categories,                except: [:show]
    resources :work_shifts,               except: [:show]
    resources :interviews,                except: [:show]
  end

  namespace :organization do
    resources :organization_general_informations, only: [:edit, :update]
    resources :organization_locations,            except: [:show]

    resources :organization_structures,           except: [:show] do
      collection do
        get "show_structure"
      end
    end
  end

  namespace :qualifications do
    resources :skills,                except: [:show]
    resources :educations,            except: [:show]
    resources :licenses,              except: [:show]
    resources :languages,             except: [:show]
    resources :memberships,           except: [:show]
  end

  resources :nationalities,           except: [:show]
  resources :manage_news,             except: [:show]
  resources :documents,               except: [:show]

  namespace :document do
    resources :categories,            except: [:show]
    resources :manage_documents,      except: [:show]
  end

  namespace :configuration do
    # Admin Module configuration routes
    resources :email_configurations,  except: [:show] do
      member do
        get  :test_email
      end
    end

    resources :email_subscriptions,   except: [:show]
    resources :available_modules,     only: [:edit, :update]

    # PIM Module configuration routes
    resources :custom_fields,         except: [:show]
    resources :csv_imports,           except: [:show]
    resources :reporting_methods,     except: [:show]
    resources :termination_reasons,   except: [:show]

    # Leave Moudle Configuration routes
    resources :leave_periods,         except: [:show]
    resources :leave_types
    resources :work_weeks,            except: [:show]
    resources :holidays,              except: [:show]
    resources :leave_notifications,   except: [:show]

    resources :leaves,                only:   [:index, :create]

    get "leaves/new",       to: "leaves#new",     as: :new_leave
    get "leaves/:id/edit",  to: "leaves#edit",    as: :edit_leave
    match "leaves/:id",     to: "leaves#update",  as: :update_leave, via: [:put, :patch]
    delete "leaves/:id",    to: "leaves#destroy", as: :destroy_leave

  end


  resources :subscribers,             except: [:show]
  resources :notifications,           except: [:show]

  namespace :authentication do
    resources :openid_providers,      except: [:show]
    resources :ldap_configurations,   except: [:show]
  end

  namespace :leave do
    resources :entitlements,    except: [:show]
  end

  namespace :timesheets do
    resources :employee_timesheets
  end

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
