(asdf:defsystem #:judge
  :serial t
  :description "Online Judge Using Common Lisp"
  :depends-on (#:hunchentoot
               #:cl-who
               #:postmodern
               #:simple-date
               #:drakma
               #:cl-json
               )
  :components ((:file "package")
               (:module :src
                        :serial t
                        :components
                        ((:module :util
                                  :serial t
                                  :components ((:file "general-utils")
                                               (:file "date-utils")
                                               (:file "heroku-utils")
                                               (:file "html-utils")
                                               (:file "model-utils")
                                               (:file "ide-utils")))
                         (:file "models")
                         (:module :views
                                  :serial t
                                  :components ((:file "layout")
                                               (:file "index")
                                               (:file "problems_new")
                                               (:file "submit_problem")))
                         
                         ;;(:file "new")
                                               ;;(:file "show")
                                               ;;(:file "edit")))
                         (:file "controllers")))))
