# Hoe to create multi branch trigger pipeline
- Create the pipeline yml files for each branch in the git repo master branch
- Create a new branches based on the master branch. These branch names should match with the names mentioned in the trigger settings of the yml file created in last step.
- Now create a pipeline and select - chose ecisting pipeline option.
- Mention the branch name for which we need to create the pipeline
- Mention the yml file name for this specific branch
- Save the pipeline
- Repeat above 4 steps for each branch pipeline creation
