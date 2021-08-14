#*******************************************************************************
# Function Begin
#*******************************************************************************

function git-branch-name {
	git symbolic-ref --short HEAD 2>/dev/null
}

function git-branch-prompt {
	local branch=`git-branch-name`
	if [ $branch  ]; then
		printf " <%s> " $branch;
	fi
}

#*******************************************************************************
# Function End
#*******************************************************************************
