#define __NR_read			5000
#define __NR_write			5001
#define __NR_open			5002
#define __NR_close			5003
#define __NR_stat			5004
#define __NR_fstat			5005
#define __NR_lstat			5006
#define __NR_poll			5007
#define __NR_lseek			5008
#define __NR_mmap			5009
#define __NR_mprotect			5010
#define __NR_munmap			5011
#define __NR_brk			5012
#define __NR_rt_sigaction		5013
#define __NR_rt_sigprocmask		5014
#define __NR_ioctl			5015
#define __NR_pread64			5016
#define __NR_pwrite64			5017
#define __NR_readv			5018
#define __NR_writev			5019
#define __NR_access			5020
#define __NR_pipe			5021
#define __NR__newselect			5022
#define __NR_sched_yield		5023
#define __NR_mremap			5024
#define __NR_msync			5025
#define __NR_mincore			5026
#define __NR_madvise			5027
#define __NR_shmget			5028
#define __NR_shmat			5029
#define __NR_shmctl			5030
#define __NR_dup			5031
#define __NR_dup2			5032
#define __NR_pause			5033
#define __NR_nanosleep			5034
#define __NR_getitimer			5035
#define __NR_setitimer			5036
#define __NR_alarm			5037
#define __NR_getpid			5038
#define __NR_sendfile			5039
#define __NR_socket			5040
#define __NR_connect			5041
#define __NR_accept			5042
#define __NR_sendto			5043
#define __NR_recvfrom			5044
#define __NR_sendmsg			5045
#define __NR_recvmsg			5046
#define __NR_shutdown			5047
#define __NR_bind			5048
#define __NR_listen			5049
#define __NR_getsockname		5050
#define __NR_getpeername		5051
#define __NR_socketpair			5052
#define __NR_setsockopt			5053
#define __NR_getsockopt			5054
#define __NR_clone			5055
#define __NR_fork			5056
#define __NR_execve			5057
#define __NR_exit			5058
#define __NR_wait4			5059
#define __NR_kill			5060
#define __NR_uname			5061
#define __NR_semget			5062
#define __NR_semop			5063
#define __NR_semctl			5064
#define __NR_shmdt			5065
#define __NR_msgget			5066
#define __NR_msgsnd			5067
#define __NR_msgrcv			5068
#define __NR_msgctl			5069
#define __NR_fcntl			5070
#define __NR_flock			5071
#define __NR_fsync			5072
#define __NR_fdatasync			5073
#define __NR_truncate			5074
#define __NR_ftruncate			5075
#define __NR_getdents			5076
#define __NR_getcwd			5077
#define __NR_chdir			5078
#define __NR_fchdir			5079
#define __NR_rename			5080
#define __NR_mkdir			5081
#define __NR_rmdir			5082
#define __NR_creat			5083
#define __NR_link			5084
#define __NR_unlink			5085
#define __NR_symlink			5086
#define __NR_readlink			5087
#define __NR_chmod			5088
#define __NR_fchmod			5089
#define __NR_chown			5090
#define __NR_fchown			5091
#define __NR_lchown			5092
#define __NR_umask			5093
#define __NR_gettimeofday		5094
#define __NR_getrlimit			5095
#define __NR_getrusage			5096
#define __NR_sysinfo			5097
#define __NR_times			5098
#define __NR_ptrace			5099
#define __NR_getuid			5100
#define __NR_syslog			5101
#define __NR_getgid			5102
#define __NR_setuid			5103
#define __NR_setgid			5104
#define __NR_geteuid			5105
#define __NR_getegid			5106
#define __NR_setpgid			5107
#define __NR_getppid			5108
#define __NR_getpgrp			5109
#define __NR_setsid			5110
#define __NR_setreuid			5111
#define __NR_setregid			5112
#define __NR_getgroups			5113
#define __NR_setgroups			5114
#define __NR_setresuid			5115
#define __NR_getresuid			5116
#define __NR_setresgid			5117
#define __NR_getresgid			5118
#define __NR_getpgid			5119
#define __NR_setfsuid			5120
#define __NR_setfsgid			5121
#define __NR_getsid			5122
#define __NR_capget			5123
#define __NR_capset			5124
#define __NR_rt_sigpending		5125
#define __NR_rt_sigtimedwait		5126
#define __NR_rt_sigqueueinfo		5127
#define __NR_rt_sigsuspend		5128
#define __NR_sigaltstack		5129
#define __NR_utime			5130
#define __NR_mknod			5131
#define __NR_personality		5132
#define __NR_ustat			5133
#define __NR_statfs			5134
#define __NR_fstatfs			5135
#define __NR_sysfs			5136
#define __NR_getpriority		5137
#define __NR_setpriority		5138
#define __NR_sched_setparam		5139
#define __NR_sched_getparam		5140
#define __NR_sched_setscheduler		5141
#define __NR_sched_getscheduler		5142
#define __NR_sched_get_priority_max	5143
#define __NR_sched_get_priority_min	5144
#define __NR_sched_rr_get_interval	5145
#define __NR_mlock			5146
#define __NR_munlock			5147
#define __NR_mlockall			5148
#define __NR_munlockall			5149
#define __NR_vhangup			5150
#define __NR_pivot_root			5151
#define __NR__sysctl			5152
#define __NR_prctl			5153
#define __NR_adjtimex			5154
#define __NR_setrlimit			5155
#define __NR_chroot			5156
#define __NR_sync			5157
#define __NR_acct			5158
#define __NR_settimeofday		5159
#define __NR_mount			5160
#define __NR_umount2			5161
#define __NR_swapon			5162
#define __NR_swapoff			5163
#define __NR_reboot			5164
#define __NR_sethostname		5165
#define __NR_setdomainname		5166
#define __NR_create_module		5167
#define __NR_init_module		5168
#define __NR_delete_module		5169
#define __NR_get_kernel_syms		5170
#define __NR_query_module		5171
#define __NR_quotactl			5172
#define __NR_nfsservctl			5173
#define __NR_getpmsg			5174
#define __NR_putpmsg			5175
#define __NR_afs_syscall		5176
#define __NR_reserved177		5177
#define __NR_gettid			5178
#define __NR_readahead			5179
#define __NR_setxattr			5180
#define __NR_lsetxattr			5181
#define __NR_fsetxattr			5182
#define __NR_getxattr			5183
#define __NR_lgetxattr			5184
#define __NR_fgetxattr			5185
#define __NR_listxattr			5186
#define __NR_llistxattr			5187
#define __NR_flistxattr			5188
#define __NR_removexattr		5189
#define __NR_lremovexattr		5190
#define __NR_fremovexattr		5191
#define __NR_tkill			5192
#define __NR_reserved193		5193
#define __NR_futex			5194
#define __NR_sched_setaffinity		5195
#define __NR_sched_getaffinity		5196
#define __NR_cacheflush			5197
#define __NR_cachectl			5198
#define __NR_sysmips			5199
#define __NR_io_setup			5200
#define __NR_io_destroy			5201
#define __NR_io_getevents		5202
#define __NR_io_submit			5203
#define __NR_io_cancel			5204
#define __NR_exit_group			5205
#define __NR_lookup_dcookie		5206
#define __NR_epoll_create		5207
#define __NR_epoll_ctl			5208
#define __NR_epoll_wait			5209
#define __NR_remap_file_pages		5210
#define __NR_rt_sigreturn		5211
#define __NR_set_tid_address		5212
#define __NR_restart_syscall		5213
#define __NR_semtimedop			5214
#define __NR_fadvise64			5215
#define __NR_timer_create		5216
#define __NR_timer_settime		5217
#define __NR_timer_gettime		5218
#define __NR_timer_getoverrun		5219
#define __NR_timer_delete		5220
#define __NR_clock_settime		5221
#define __NR_clock_gettime		5222
#define __NR_clock_getres		5223
#define __NR_clock_nanosleep		5224
#define __NR_tgkill			5225
#define __NR_utimes			5226
#define __NR_mbind			5227
#define __NR_get_mempolicy		5228
#define __NR_set_mempolicy		5229
#define __NR_mq_open			5230
#define __NR_mq_unlink			5231
#define __NR_mq_timedsend		5232
#define __NR_mq_timedreceive		5233
#define __NR_mq_notify			5234
#define __NR_mq_getsetattr		5235
#define __NR_vserver			5236
#define __NR_waitid			5237
#define __NR_add_key			5239
#define __NR_request_key		5240
#define __NR_keyctl			5241
#define __NR_set_thread_area		5242
#define __NR_inotify_init		5243
#define __NR_inotify_add_watch		5244
#define __NR_inotify_rm_watch		5245
#define __NR_migrate_pages		5246
#define __NR_openat			5247
#define __NR_mkdirat			5248
#define __NR_mknodat			5249
#define __NR_fchownat			5250
#define __NR_futimesat			5251
#define __NR_newfstatat			5252
#define __NR_unlinkat			5253
#define __NR_renameat			5254
#define __NR_linkat			5255
#define __NR_symlinkat			5256
#define __NR_readlinkat			5257
#define __NR_fchmodat			5258
#define __NR_faccessat			5259
#define __NR_pselect6			5260
#define __NR_ppoll			5261
#define __NR_unshare			5262
#define __NR_splice			5263
#define __NR_sync_file_range		5264
#define __NR_tee			5265
#define __NR_vmsplice			5266
#define __NR_move_pages			5267
#define __NR_set_robust_list		5268
#define __NR_get_robust_list		5269
#define __NR_kexec_load			5270
#define __NR_getcpu			5271
#define __NR_epoll_pwait		5272
#define __NR_ioprio_set			5273
#define __NR_ioprio_get			5274
#define __NR_utimensat			5275
#define __NR_signalfd			5276
#define __NR_timerfd			5277
#define __NR_eventfd			5278
#define __NR_fallocate			5279
#define __NR_timerfd_create		5280
#define __NR_timerfd_gettime		5281
#define __NR_timerfd_settime		5282
#define __NR_signalfd4			5283
#define __NR_eventfd2			5284
#define __NR_epoll_create1		5285
#define __NR_dup3			5286
#define __NR_pipe2			5287
#define __NR_inotify_init1		5288
#define __NR_preadv			5289
#define __NR_pwritev			5290
#define __NR_rt_tgsigqueueinfo		5291
#define __NR_perf_event_open		5292
#define __NR_accept4			5293
#define __NR_recvmmsg			5294
#define __NR_fanotify_init		5295
#define __NR_fanotify_mark		5296
#define __NR_prlimit64			5297
#define __NR_name_to_handle_at		5298
#define __NR_open_by_handle_at		5299
#define __NR_clock_adjtime		5300
#define __NR_syncfs			5301
#define __NR_sendmmsg			5302
#define __NR_setns			5303
#define __NR_process_vm_readv		5304
#define __NR_process_vm_writev		5305
#define __NR_kcmp			5306
#define __NR_finit_module		5307
#define __NR_getdents64			5308
#define __NR_sched_setattr		5309
#define __NR_sched_getattr		5310
#define __NR_renameat2			5311
#define __NR_seccomp			5312
#define __NR_getrandom			5313
#define __NR_memfd_create		5314
#define __NR_bpf			5315
#define __NR_execveat			5316
#define __NR_userfaultfd		5317
#define __NR_membarrier			5318
#define __NR_mlock2			5319
#define __NR_copy_file_range		5320
#define __NR_preadv2			5321
#define __NR_pwritev2			5322
#define __NR_pkey_mprotect		5323
#define __NR_pkey_alloc			5324
#define __NR_pkey_free			5325
#define __NR_statx			5326
#define __NR_rseq			5327
#define __NR_io_pgetevents		5328
#define __NR_pidfd_send_signal		5424
#define __NR_io_uring_setup		5425
#define __NR_io_uring_enter		5426
#define __NR_io_uring_register		5427
#define __NR_open_tree		5428
#define __NR_move_mount		5429
#define __NR_fsopen		5430
#define __NR_fsconfig		5431
#define __NR_fsmount		5432
#define __NR_fspick		5433
#define __NR_pidfd_open		5434
#define __NR_clone3		5435

#define SYS_read			5000
#define SYS_write			5001
#define SYS_open			5002
#define SYS_close			5003
#define SYS_stat			5004
#define SYS_fstat			5005
#define SYS_lstat			5006
#define SYS_poll			5007
#define SYS_lseek			5008
#define SYS_mmap			5009
#define SYS_mprotect			5010
#define SYS_munmap			5011
#define SYS_brk			5012
#define SYS_rt_sigaction		5013
#define SYS_rt_sigprocmask		5014
#define SYS_ioctl			5015
#define SYS_pread64			5016
#define SYS_pwrite64			5017
#define SYS_readv			5018
#define SYS_writev			5019
#define SYS_access			5020
#define SYS_pipe			5021
#define SYS__newselect			5022
#define SYS_sched_yield		5023
#define SYS_mremap			5024
#define SYS_msync			5025
#define SYS_mincore			5026
#define SYS_madvise			5027
#define SYS_shmget			5028
#define SYS_shmat			5029
#define SYS_shmctl			5030
#define SYS_dup			5031
#define SYS_dup2			5032
#define SYS_pause			5033
#define SYS_nanosleep			5034
#define SYS_getitimer			5035
#define SYS_setitimer			5036
#define SYS_alarm			5037
#define SYS_getpid			5038
#define SYS_sendfile			5039
#define SYS_socket			5040
#define SYS_connect			5041
#define SYS_accept			5042
#define SYS_sendto			5043
#define SYS_recvfrom			5044
#define SYS_sendmsg			5045
#define SYS_recvmsg			5046
#define SYS_shutdown			5047
#define SYS_bind			5048
#define SYS_listen			5049
#define SYS_getsockname		5050
#define SYS_getpeername		5051
#define SYS_socketpair			5052
#define SYS_setsockopt			5053
#define SYS_getsockopt			5054
#define SYS_clone			5055
#define SYS_fork			5056
#define SYS_execve			5057
#define SYS_exit			5058
#define SYS_wait4			5059
#define SYS_kill			5060
#define SYS_uname			5061
#define SYS_semget			5062
#define SYS_semop			5063
#define SYS_semctl			5064
#define SYS_shmdt			5065
#define SYS_msgget			5066
#define SYS_msgsnd			5067
#define SYS_msgrcv			5068
#define SYS_msgctl			5069
#define SYS_fcntl			5070
#define SYS_flock			5071
#define SYS_fsync			5072
#define SYS_fdatasync			5073
#define SYS_truncate			5074
#define SYS_ftruncate			5075
#define SYS_getdents			5076
#define SYS_getcwd			5077
#define SYS_chdir			5078
#define SYS_fchdir			5079
#define SYS_rename			5080
#define SYS_mkdir			5081
#define SYS_rmdir			5082
#define SYS_creat			5083
#define SYS_link			5084
#define SYS_unlink			5085
#define SYS_symlink			5086
#define SYS_readlink			5087
#define SYS_chmod			5088
#define SYS_fchmod			5089
#define SYS_chown			5090
#define SYS_fchown			5091
#define SYS_lchown			5092
#define SYS_umask			5093
#define SYS_gettimeofday		5094
#define SYS_getrlimit			5095
#define SYS_getrusage			5096
#define SYS_sysinfo			5097
#define SYS_times			5098
#define SYS_ptrace			5099
#define SYS_getuid			5100
#define SYS_syslog			5101
#define SYS_getgid			5102
#define SYS_setuid			5103
#define SYS_setgid			5104
#define SYS_geteuid			5105
#define SYS_getegid			5106
#define SYS_setpgid			5107
#define SYS_getppid			5108
#define SYS_getpgrp			5109
#define SYS_setsid			5110
#define SYS_setreuid			5111
#define SYS_setregid			5112
#define SYS_getgroups			5113
#define SYS_setgroups			5114
#define SYS_setresuid			5115
#define SYS_getresuid			5116
#define SYS_setresgid			5117
#define SYS_getresgid			5118
#define SYS_getpgid			5119
#define SYS_setfsuid			5120
#define SYS_setfsgid			5121
#define SYS_getsid			5122
#define SYS_capget			5123
#define SYS_capset			5124
#define SYS_rt_sigpending		5125
#define SYS_rt_sigtimedwait		5126
#define SYS_rt_sigqueueinfo		5127
#define SYS_rt_sigsuspend		5128
#define SYS_sigaltstack		5129
#define SYS_utime			5130
#define SYS_mknod			5131
#define SYS_personality		5132
#define SYS_ustat			5133
#define SYS_statfs			5134
#define SYS_fstatfs			5135
#define SYS_sysfs			5136
#define SYS_getpriority		5137
#define SYS_setpriority		5138
#define SYS_sched_setparam		5139
#define SYS_sched_getparam		5140
#define SYS_sched_setscheduler		5141
#define SYS_sched_getscheduler		5142
#define SYS_sched_get_priority_max	5143
#define SYS_sched_get_priority_min	5144
#define SYS_sched_rr_get_interval	5145
#define SYS_mlock			5146
#define SYS_munlock			5147
#define SYS_mlockall			5148
#define SYS_munlockall			5149
#define SYS_vhangup			5150
#define SYS_pivot_root			5151
#define SYS__sysctl			5152
#define SYS_prctl			5153
#define SYS_adjtimex			5154
#define SYS_setrlimit			5155
#define SYS_chroot			5156
#define SYS_sync			5157
#define SYS_acct			5158
#define SYS_settimeofday		5159
#define SYS_mount			5160
#define SYS_umount2			5161
#define SYS_swapon			5162
#define SYS_swapoff			5163
#define SYS_reboot			5164
#define SYS_sethostname		5165
#define SYS_setdomainname		5166
#define SYS_create_module		5167
#define SYS_init_module		5168
#define SYS_delete_module		5169
#define SYS_get_kernel_syms		5170
#define SYS_query_module		5171
#define SYS_quotactl			5172
#define SYS_nfsservctl			5173
#define SYS_getpmsg			5174
#define SYS_putpmsg			5175
#define SYS_afs_syscall		5176
#define SYS_reserved177		5177
#define SYS_gettid			5178
#define SYS_readahead			5179
#define SYS_setxattr			5180
#define SYS_lsetxattr			5181
#define SYS_fsetxattr			5182
#define SYS_getxattr			5183
#define SYS_lgetxattr			5184
#define SYS_fgetxattr			5185
#define SYS_listxattr			5186
#define SYS_llistxattr			5187
#define SYS_flistxattr			5188
#define SYS_removexattr		5189
#define SYS_lremovexattr		5190
#define SYS_fremovexattr		5191
#define SYS_tkill			5192
#define SYS_reserved193		5193
#define SYS_futex			5194
#define SYS_sched_setaffinity		5195
#define SYS_sched_getaffinity		5196
#define SYS_cacheflush			5197
#define SYS_cachectl			5198
#define SYS_sysmips			5199
#define SYS_io_setup			5200
#define SYS_io_destroy			5201
#define SYS_io_getevents		5202
#define SYS_io_submit			5203
#define SYS_io_cancel			5204
#define SYS_exit_group			5205
#define SYS_lookup_dcookie		5206
#define SYS_epoll_create		5207
#define SYS_epoll_ctl			5208
#define SYS_epoll_wait			5209
#define SYS_remap_file_pages		5210
#define SYS_rt_sigreturn		5211
#define SYS_set_tid_address		5212
#define SYS_restart_syscall		5213
#define SYS_semtimedop			5214
#define SYS_fadvise64			5215
#define SYS_timer_create		5216
#define SYS_timer_settime		5217
#define SYS_timer_gettime		5218
#define SYS_timer_getoverrun		5219
#define SYS_timer_delete		5220
#define SYS_clock_settime		5221
#define SYS_clock_gettime		5222
#define SYS_clock_getres		5223
#define SYS_clock_nanosleep		5224
#define SYS_tgkill			5225
#define SYS_utimes			5226
#define SYS_mbind			5227
#define SYS_get_mempolicy		5228
#define SYS_set_mempolicy		5229
#define SYS_mq_open			5230
#define SYS_mq_unlink			5231
#define SYS_mq_timedsend		5232
#define SYS_mq_timedreceive		5233
#define SYS_mq_notify			5234
#define SYS_mq_getsetattr		5235
#define SYS_vserver			5236
#define SYS_waitid			5237
#define SYS_add_key			5239
#define SYS_request_key		5240
#define SYS_keyctl			5241
#define SYS_set_thread_area		5242
#define SYS_inotify_init		5243
#define SYS_inotify_add_watch		5244
#define SYS_inotify_rm_watch		5245
#define SYS_migrate_pages		5246
#define SYS_openat			5247
#define SYS_mkdirat			5248
#define SYS_mknodat			5249
#define SYS_fchownat			5250
#define SYS_futimesat			5251
#define SYS_newfstatat			5252
#define SYS_unlinkat			5253
#define SYS_renameat			5254
#define SYS_linkat			5255
#define SYS_symlinkat			5256
#define SYS_readlinkat			5257
#define SYS_fchmodat			5258
#define SYS_faccessat			5259
#define SYS_pselect6			5260
#define SYS_ppoll			5261
#define SYS_unshare			5262
#define SYS_splice			5263
#define SYS_sync_file_range		5264
#define SYS_tee			5265
#define SYS_vmsplice			5266
#define SYS_move_pages			5267
#define SYS_set_robust_list		5268
#define SYS_get_robust_list		5269
#define SYS_kexec_load			5270
#define SYS_getcpu			5271
#define SYS_epoll_pwait		5272
#define SYS_ioprio_set			5273
#define SYS_ioprio_get			5274
#define SYS_utimensat			5275
#define SYS_signalfd			5276
#define SYS_timerfd			5277
#define SYS_eventfd			5278
#define SYS_fallocate			5279
#define SYS_timerfd_create		5280
#define SYS_timerfd_gettime		5281
#define SYS_timerfd_settime		5282
#define SYS_signalfd4			5283
#define SYS_eventfd2			5284
#define SYS_epoll_create1		5285
#define SYS_dup3			5286
#define SYS_pipe2			5287
#define SYS_inotify_init1		5288
#define SYS_preadv			5289
#define SYS_pwritev			5290
#define SYS_rt_tgsigqueueinfo		5291
#define SYS_perf_event_open		5292
#define SYS_accept4			5293
#define SYS_recvmmsg			5294
#define SYS_fanotify_init		5295
#define SYS_fanotify_mark		5296
#define SYS_prlimit64			5297
#define SYS_name_to_handle_at		5298
#define SYS_open_by_handle_at		5299
#define SYS_clock_adjtime		5300
#define SYS_syncfs			5301
#define SYS_sendmmsg			5302
#define SYS_setns			5303
#define SYS_process_vm_readv		5304
#define SYS_process_vm_writev		5305
#define SYS_kcmp			5306
#define SYS_finit_module		5307
#define SYS_getdents64			5308
#define SYS_sched_setattr		5309
#define SYS_sched_getattr		5310
#define SYS_renameat2			5311
#define SYS_seccomp			5312
#define SYS_getrandom			5313
#define SYS_memfd_create		5314
#define SYS_bpf			5315
#define SYS_execveat			5316
#define SYS_userfaultfd		5317
#define SYS_membarrier			5318
#define SYS_mlock2			5319
#define SYS_copy_file_range		5320
#define SYS_preadv2			5321
#define SYS_pwritev2			5322
#define SYS_pkey_mprotect		5323
#define SYS_pkey_alloc			5324
#define SYS_pkey_free			5325
#define SYS_statx			5326
#define SYS_rseq			5327
#define SYS_io_pgetevents		5328
#define SYS_pidfd_send_signal		5424
#define SYS_io_uring_setup		5425
#define SYS_io_uring_enter		5426
#define SYS_io_uring_register		5427
#define SYS_open_tree		5428
#define SYS_move_mount		5429
#define SYS_fsopen		5430
#define SYS_fsconfig		5431
#define SYS_fsmount		5432
#define SYS_fspick		5433
#define SYS_pidfd_open		5434
#define SYS_clone3		5435