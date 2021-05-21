#include "config.h"
#include "registers.h"

.text

	.global task_entry
task_entry:
	b secure_task
	b high_task
	b low_task

.section .bss_stack.usr_stack
usr_stack:
.space 3*CONFIG_TASK_STACK_SIZE
