if [ ! -d ~/Documents/chrome-extenstions ]; then
  mkdir ~/Documents/chrome-extenstions
fi

quick_tabs_project=~/Documents/chrome-extenstions/quick-tabs-project
if [ ! -d $quick_tabs_project ]; then
  git clone git@bitbucket.org:seriiserii825/quick-tabs-project.git $quick_tabs_project
  cd $quick_tabs_project
  yarn && yarn build
  echo "-----------Quick Tabs Project is ready to use"
fi

tabs_copy=~/Documents/chrome-extenstions/tabs-copy
if [ ! -d $tabs_copy ]; then
  git clone git@bitbucket.org:seriiserii825/tabs-copy.git $tabs_copy
  echo "-----------Tabs Copy is ready to use"
fi

fill_form=~/Documents/chrome-extenstions/fill-form
if [ ! -d $fill_form ]; then
  git clone git@bitbucket.org:seriiserii825/fill-form.git $fill_form
  cd $fill_form
  yarn && yarn build
  echo "-----------Fill Form is ready to use"
fi

autofill=~/Documents/chrome-extenstions/autofill
if [ ! -d $autofill ]; then
  git clone git@bitbucket.org:seriiserii825/autofill.git $autofill
  echo "-----------Autofill is ready to use"
fi

