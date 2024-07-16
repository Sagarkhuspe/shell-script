!/bin/bash

#each and every action in linux have a exit code.

# 0 to 255 is the range of the code.
# Among all 0 is representes--action--successsful--completed
# anything between 1 to 255 is representes--partial success--partial error--complete failed

# 0          --> global success
# 1 to 125   --> some failure from the commoand.
# 125+       --> system failed

# exit code also plays a key role in debugging scripts
# ex- if you have big scripts and if your scripts is fails and its really challenging figure out 
#     mistake as its make us to wa instead, we can use the exit code everywhere to find the where 
#     code is failure.

# i am sagar

