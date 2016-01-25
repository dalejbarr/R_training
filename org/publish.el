(require 'ox-publish)
(setq org-publish-project-alist
			'(
				("org-notes"
				 :base-directory "~/dhome/R_TRAINING/org"
				 :base-extension "org"
				 :publishing-directory "~/talklab_html/r_training"
				 :recursive t
				 :publishing-function org-html-publish-to-html
				 :headline-levels 4
				 :auto-preamble t
				 )
				("org-static"
				 :base-directory "~/dhome/R_TRAINING/org"
				 :base-extension "css\\|png\\|jpg\\|gif\\|pdf\\|csv\\|rds\\|zip\\|R\\|Rmd"
				 :publishing-directory "~/talklab_html/r_training"
				 :recursive t
				 :publishing-function org-publish-attachment
				 )
				("org" :components ("org-notes" "org-static"))
				))
