/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef _IPCONNTRACK_NETLINK_H
#define _IPCONNTRACK_NETLINK_H
#include <linux/netfilter/nfnetlink.h>

enum cntl_msg_types {
	IPCTNL_MSG_CT_NEW,
	IPCTNL_MSG_CT_GET,
	IPCTNL_MSG_CT_DELETE,
	IPCTNL_MSG_CT_GET_CTRZERO,
	IPCTNL_MSG_CT_GET_STATS_CPU,
	IPCTNL_MSG_CT_GET_STATS,
	IPCTNL_MSG_CT_GET_DYING,
	IPCTNL_MSG_CT_GET_UNCONFIRMED,

	IPCTNL_MSG_MAX
};

enum ctnl_exp_msg_types {
	IPCTNL_MSG_EXP_NEW,
	IPCTNL_MSG_EXP_GET,
	IPCTNL_MSG_EXP_DELETE,
	IPCTNL_MSG_EXP_GET_STATS_CPU,

	IPCTNL_MSG_EXP_MAX
};


enum ctattr_type {
	CTA_UNSPEC,
	CTA_TUPLE_ORIG,
	CTA_TUPLE_REPLY,
	CTA_STATUS,
	CTA_PROTOINFO,
	CTA_HELP,
	CTA_NAT_SRC,
#define CTA_NAT	CTA_NAT_SRC	/* backwards compatibility */
	CTA_TIMEOUT,
	CTA_MARK,
	CTA_COUNTERS_ORIG,
	CTA_COUNTERS_REPLY,
	CTA_USE,
	CTA_ID,
	CTA_NAT_DST,
	CTA_TUPLE_MASTER,
	CTA_SEQ_ADJ_ORIG,
	CTA_NAT_SEQ_ADJ_ORIG	= CTA_SEQ_ADJ_ORIG,
	CTA_SEQ_ADJ_REPLY,
	CTA_NAT_SEQ_ADJ_REPLY	= CTA_SEQ_ADJ_REPLY,
	CTA_SECMARK,		/* obsolete */
	CTA_ZONE,
	CTA_SECCTX,
	CTA_TIMESTAMP,
	CTA_MARK_MASK,
	CTA_LABELS,
	CTA_LABELS_MASK,
	CTA_SYNPROXY,
	__CTA_MAX
};
#define CTA_MAX (__CTA_MAX - 1)

enum ctattr_tuple {
	CTA_TUPLE_UNSPEC,
	CTA_TUPLE_IP,
	CTA_TUPLE_PROTO,
	CTA_TUPLE_ZONE,
	__CTA_TUPLE_MAX
};
#define CTA_TUPLE_MAX (__CTA_TUPLE_MAX - 1)

enum ctattr_ip {
	CTA_IP_UNSPEC,
	CTA_IP_V4_SRC,
	CTA_IP_V4_DST,
	CTA_IP_V6_SRC,
	CTA_IP_V6_DST,
	__CTA_IP_MAX
};
#define CTA_IP_MAX (__CTA_IP_MAX - 1)

enum ctattr_l4proto {
	CTA_PROTO_UNSPEC,
	CTA_PROTO_NUM,
	CTA_PROTO_SRC_PORT,
	CTA_PROTO_DST_PORT,
	CTA_PROTO_ICMP_ID,
	CTA_PROTO_ICMP_TYPE,
	CTA_PROTO_ICMP_CODE,
	CTA_PROTO_ICMPV6_ID,
	CTA_PROTO_ICMPV6_TYPE,
	CTA_PROTO_ICMPV6_CODE,
	__CTA_PROTO_MAX
};
#define CTA_PROTO_MAX (__CTA_PROTO_MAX - 1)

enum ctattr_protoinfo {
	CTA_PROTOINFO_UNSPEC,
	CTA_PROTOINFO_TCP,
	CTA_PROTOINFO_DCCP,
	CTA_PROTOINFO_SCTP,
	__CTA_PROTOINFO_MAX
};
#define CTA_PROTOINFO_MAX (__CTA_PROTOINFO_MAX - 1)

enum ctattr_protoinfo_tcp {
	CTA_PROTOINFO_TCP_UNSPEC,
	CTA_PROTOINFO_TCP_STATE,
	CTA_PROTOINFO_TCP_WSCALE_ORIGINAL,
	CTA_PROTOINFO_TCP_WSCALE_REPLY,
	CTA_PROTOINFO_TCP_FLAGS_ORIGINAL,
	CTA_PROTOINFO_TCP_FLAGS_REPLY,
	__CTA_PROTOINFO_TCP_MAX
};
#define CTA_PROTOINFO_TCP_MAX (__CTA_PROTOINFO_TCP_MAX - 1)

enum ctattr_protoinfo_dccp {
	CTA_PROTOINFO_DCCP_UNSPEC,
	CTA_PROTOINFO_DCCP_STATE,
	CTA_PROTOINFO_DCCP_ROLE,
	CTA_PROTOINFO_DCCP_HANDSHAKE_SEQ,
	CTA_PROTOINFO_DCCP_PAD,
	__CTA_PROTOINFO_DCCP_MAX,
};
#define CTA_PROTOINFO_DCCP_MAX (__CTA_PROTOINFO_DCCP_MAX - 1)

enum ctattr_protoinfo_sctp {
	CTA_PROTOINFO_SCTP_UNSPEC,
	CTA_PROTOINFO_SCTP_STATE,
	CTA_PROTOINFO_SCTP_VTAG_ORIGINAL,
	CTA_PROTOINFO_SCTP_VTAG_REPLY,
	__CTA_PROTOINFO_SCTP_MAX
};
#define CTA_PROTOINFO_SCTP_MAX (__CTA_PROTOINFO_SCTP_MAX - 1)

enum ctattr_counters {
	CTA_COUNTERS_UNSPEC,
	CTA_COUNTERS_PACKETS,		/* 64bit counters */
	CTA_COUNTERS_BYTES,		/* 64bit counters */
	CTA_COUNTERS32_PACKETS,		/* old 32bit counters, unused */
	CTA_COUNTERS32_BYTES,		/* old 32bit counters, unused */
	CTA_COUNTERS_PAD,
	__CTA_COUNTERS_MAX
};
#define CTA_COUNTERS_MAX (__CTA_COUNTERS_MAX - 1)

enum ctattr_tstamp {
	CTA_TIMESTAMP_UNSPEC,
	CTA_TIMESTAMP_START,
	CTA_TIMESTAMP_STOP,
	CTA_TIMESTAMP_PAD,
	__CTA_TIMESTAMP_MAX
};
#define CTA_TIMESTAMP_MAX (__CTA_TIMESTAMP_MAX - 1)

enum ctattr_nat {
	CTA_NAT_UNSPEC,
	CTA_NAT_V4_MINIP,
#define CTA_NAT_MINIP CTA_NAT_V4_MINIP
	CTA_NAT_V4_MAXIP,
#define CTA_NAT_MAXIP CTA_NAT_V4_MAXIP
	CTA_NAT_PROTO,
	CTA_NAT_V6_MINIP,
	CTA_NAT_V6_MAXIP,
	__CTA_NAT_MAX
};
#define CTA_NAT_MAX (__CTA_NAT_MAX - 1)

enum ctattr_protonat {
	CTA_PROTONAT_UNSPEC,
	CTA_PROTONAT_PORT_MIN,
	CTA_PROTONAT_PORT_MAX,
	__CTA_PROTONAT_MAX
};
#define CTA_PROTONAT_MAX (__CTA_PROTONAT_MAX - 1)

enum ctattr_seqadj {
	CTA_SEQADJ_UNSPEC,
	CTA_SEQADJ_CORRECTION_POS,
	CTA_SEQADJ_OFFSET_BEFORE,
	CTA_SEQADJ_OFFSET_AFTER,
	__CTA_SEQADJ_MAX
};
#define CTA_SEQADJ_MAX (__CTA_SEQADJ_MAX - 1)

enum ctattr_natseq {
	CTA_NAT_SEQ_UNSPEC,
	CTA_NAT_SEQ_CORRECTION_POS,
	CTA_NAT_SEQ_OFFSET_BEFORE,
	CTA_NAT_SEQ_OFFSET_AFTER,
	__CTA_NAT_SEQ_MAX
};
#define CTA_NAT_SEQ_MAX (__CTA_NAT_SEQ_MAX - 1)

enum ctattr_synproxy {
	CTA_SYNPROXY_UNSPEC,
	CTA_SYNPROXY_ISN,
	CTA_SYNPROXY_ITS,
	CTA_SYNPROXY_TSOFF,
	__CTA_SYNPROXY_MAX,
};
#define CTA_SYNPROXY_MAX (__CTA_SYNPROXY_MAX - 1)

enum ctattr_expect {
	CTA_EXPECT_UNSPEC,
	CTA_EXPECT_MASTER,
	CTA_EXPECT_TUPLE,
	CTA_EXPECT_MASK,
	CTA_EXPECT_TIMEOUT,
	CTA_EXPECT_ID,
	CTA_EXPECT_HELP_NAME,
	CTA_EXPECT_ZONE,
	CTA_EXPECT_FLAGS,
	CTA_EXPECT_CLASS,
	CTA_EXPECT_NAT,
	CTA_EXPECT_FN,
	__CTA_EXPECT_MAX
};
#define CTA_EXPECT_MAX (__CTA_EXPECT_MAX - 1)

enum ctattr_expect_nat {
	CTA_EXPECT_NAT_UNSPEC,
	CTA_EXPECT_NAT_DIR,
	CTA_EXPECT_NAT_TUPLE,
	__CTA_EXPECT_NAT_MAX
};
#define CTA_EXPECT_NAT_MAX (__CTA_EXPECT_NAT_MAX - 1)

enum ctattr_help {
	CTA_HELP_UNSPEC,
	CTA_HELP_NAME,
	CTA_HELP_INFO,
	__CTA_HELP_MAX
};
#define CTA_HELP_MAX (__CTA_HELP_MAX - 1)

enum ctattr_secctx {
	CTA_SECCTX_UNSPEC,
	CTA_SECCTX_NAME,
	__CTA_SECCTX_MAX
};
#define CTA_SECCTX_MAX (__CTA_SECCTX_MAX - 1)

enum ctattr_stats_cpu {
	CTA_STATS_UNSPEC,
	CTA_STATS_SEARCHED,	/* no longer used */
	CTA_STATS_FOUND,
	CTA_STATS_NEW,		/* no longer used */
	CTA_STATS_INVALID,
	CTA_STATS_IGNORE,
	CTA_STATS_DELETE,	/* no longer used */
	CTA_STATS_DELETE_LIST,	/* no longer used */
	CTA_STATS_INSERT,
	CTA_STATS_INSERT_FAILED,
	CTA_STATS_DROP,
	CTA_STATS_EARLY_DROP,
	CTA_STATS_ERROR,
	CTA_STATS_SEARCH_RESTART,
	__CTA_STATS_MAX,
};
#define CTA_STATS_MAX (__CTA_STATS_MAX - 1)

enum ctattr_stats_global {
	CTA_STATS_GLOBAL_UNSPEC,
	CTA_STATS_GLOBAL_ENTRIES,
	CTA_STATS_GLOBAL_MAX_ENTRIES,
	__CTA_STATS_GLOBAL_MAX,
};
#define CTA_STATS_GLOBAL_MAX (__CTA_STATS_GLOBAL_MAX - 1)

enum ctattr_expect_stats {
	CTA_STATS_EXP_UNSPEC,
	CTA_STATS_EXP_NEW,
	CTA_STATS_EXP_CREATE,
	CTA_STATS_EXP_DELETE,
	__CTA_STATS_EXP_MAX,
};
#define CTA_STATS_EXP_MAX (__CTA_STATS_EXP_MAX - 1)

#endif /* _IPCONNTRACK_NETLINK_H */