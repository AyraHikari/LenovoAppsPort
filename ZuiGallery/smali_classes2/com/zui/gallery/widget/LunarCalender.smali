.class public Lcom/zui/gallery/widget/LunarCalender;
.super Ljava/lang/Object;
.source "LunarCalender.java"


# static fields
.field static final Gan:[Ljava/lang/String;

.field static final Zhi:[Ljava/lang/String;

.field static chineseDateFormat:Ljava/text/SimpleDateFormat;

.field static final chineseNumber:[Ljava/lang/String;

.field static final constellations:[Ljava/lang/String;

.field static final jcName:[[Ljava/lang/String;

.field static final ji_string:[Ljava/lang/String;

.field static final lunarHoliday:[Ljava/lang/String;

.field static final lunarInfo:[J

.field static final sTermInfo:[Ljava/lang/String;

.field static final solarHoliday:[Ljava/lang/String;

.field static final yi_string:[Ljava/lang/String;


# instance fields
.field private day:I

.field private leap:Z

.field public leapMonth:I

.field private lunarMonth:Ljava/lang/String;

.field private month:I

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 38

    const-string v0, "\u6b63"

    const-string v1, "\u4e8c"

    const-string v2, "\u4e09"

    const-string v3, "\u56db"

    const-string v4, "\u4e94"

    const-string v5, "\u516d"

    const-string v6, "\u4e03"

    const-string v7, "\u516b"

    const-string v8, "\u4e5d"

    const-string v9, "\u5341"

    const-string v10, "\u51ac"

    const-string v11, "\u814a"

    .line 24
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/widget/LunarCalender;->chineseNumber:[Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/gallery/widget/LunarCalender;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    const/16 v0, 0xc9

    new-array v0, v0, [J

    .line 28
    fill-array-data v0, :array_0

    sput-object v0, Lcom/zui/gallery/widget/LunarCalender;->lunarInfo:[J

    const-string v1, "0101 \u6625\u8282"

    const-string v2, "0115 \u5143\u5bb5\u8282"

    const-string v3, "0505 \u7aef\u5348\u8282"

    const-string v4, "0707 \u4e03\u5915\u60c5\u4eba\u8282"

    const-string v5, "0715 \u4e2d\u5143\u8282 \u5b5f\u5170\u8282"

    const-string v6, "0730 \u5730\u85cf\u8282"

    const-string v7, "0802 \u7076\u541b\u8bde"

    const-string v8, "0815 \u4e2d\u79cb\u8282"

    const-string v9, "0827 \u5148\u5e08\u8bde"

    const-string v10, "0909 \u91cd\u9633\u8282"

    const-string v11, "1208 \u814a\u516b\u8282  \u91ca\u8fe6\u5982\u6765\u6210\u9053\u65e5"

    const-string v12, "1223 \u5c0f\u5e74"

    const-string v13, "0100 \u9664\u5915"

    .line 52
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/widget/LunarCalender;->lunarHoliday:[Ljava/lang/String;

    const-string v1, "0101 \u5143\u65e6"

    const-string v2, "0110 \u4e2d\u56fd110\u5ba3\u4f20\u65e5"

    const-string v3, "0214 \u60c5\u4eba"

    const-string v4, "0221 \u56fd\u9645\u6bcd\u8bed\u65e5"

    const-string v5, "0303 \u56fd\u9645\u7231\u8033\u65e5"

    const-string v6, "0308 \u5987\u5973\u8282"

    const-string v7, "0312 \u690d\u6811\u8282"

    const-string v8, "0315 \u6d88\u8d39\u8005\u6743\u76ca\u65e5"

    const-string v9, "0322 \u4e16\u754c\u6c34\u65e5"

    const-string v10, "0323 \u4e16\u754c\u6c14\u8c61\u65e5"

    const-string v11, "0401 \u611a\u4eba\u8282"

    const-string v12, "0407 \u4e16\u754c\u536b\u751f\u65e5"

    const-string v13, "0501 \u52b3\u52a8\u8282"

    const-string v14, "0504 \u9752\u5e74\u8282"

    const-string v15, "0512 \u62a4\u58eb\u8282"

    const-string v16, "0519 \u5168\u56fd\u52a9\u6b8b\u65e5"

    const-string v17, "0531 \u4e16\u754c\u65e0\u70df\u65e5"

    const-string v18, "0601 \u513f\u7ae5\u8282"

    const-string v19, "0626 \u56fd\u9645\u7981\u6bd2\u65e5"

    const-string v20, "0701 \u5efa\u515a\u8282"

    const-string v21, "0801 \u5efa\u519b\u8282"

    const-string v22, "0909 \u6bdb\u6cfd\u4e1c\u901d\u4e16\u7eaa\u5ff5"

    const-string v23, "0910 \u6559\u5e08\u8282"

    const-string v24, "0917 \u56fd\u9645\u548c\u5e73\u65e5"

    const-string v25, "0927 \u4e16\u754c\u65c5\u6e38\u65e5"

    const-string v26, "0928 \u5b54\u5b50\u8bde\u8fb0"

    const-string v27, "1001 \u56fd\u5e86\u8282"

    const-string v28, "1006 \u8001\u4eba\u8282"

    const-string v29, "1007 \u56fd\u9645\u4f4f\u623f\u65e5"

    const-string v30, "1014 \u4e16\u754c\u6807\u51c6\u65e5"

    const-string v31, "1024 \u8054\u5408\u56fd\u65e5"

    const-string v32, "1112 \u5b59\u4e2d\u5c71\u8bde\u8fb0\u7eaa\u5ff5"

    const-string v33, "1210 \u4e16\u754c\u4eba\u6743\u65e5"

    const-string v34, "1220 \u6fb3\u95e8\u56de\u5f52\u7eaa\u5ff5"

    const-string v35, "1224 \u5e73\u5b89\u591c"

    const-string v36, "1225 \u5723\u8bde\u8282"

    const-string v37, "1226 \u6bdb\u6cfd\u4e1c\u8bde\u8fb0\u7eaa\u5ff5"

    .line 68
    filled-new-array/range {v1 .. v37}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/widget/LunarCalender;->solarHoliday:[Ljava/lang/String;

    const-string v1, "\u5c0f\u5bd2"

    const-string v2, "\u5927\u5bd2"

    const-string v3, "\u7acb\u6625"

    const-string v4, "\u96e8\u6c34"

    const-string v5, "\u60ca\u86f0"

    const-string v6, "\u6625\u5206"

    const-string v7, "\u6e05\u660e"

    const-string v8, "\u8c37\u96e8"

    const-string v9, "\u7acb\u590f"

    const-string v10, "\u5c0f\u6ee1"

    const-string v11, "\u8292\u79cd"

    const-string v12, "\u590f\u81f3"

    const-string v13, "\u5c0f\u6691"

    const-string v14, "\u5927\u6691"

    const-string v15, "\u7acb\u79cb"

    const-string v16, "\u5904\u6691"

    const-string v17, "\u767d\u9732"

    const-string v18, "\u79cb\u5206"

    const-string v19, "\u5bd2\u9732"

    const-string v20, "\u971c\u964d"

    const-string v21, "\u7acb\u51ac"

    const-string v22, "\u5c0f\u96ea"

    const-string v23, "\u5927\u96ea"

    const-string v24, "\u51ac\u81f3"

    .line 108
    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/widget/LunarCalender;->sTermInfo:[Ljava/lang/String;

    const-string v1, "\u6469\u874e\u5ea7:12.22\u201401.19"

    const-string v2, "\u6c34\u74f6\u5ea7:01.20\u201402.18"

    const-string v3, "\u53cc\u9c7c\u5ea7:02.19\u201403.20"

    const-string v4, "\u767d\u7f8a\u5ea7:03.21\u201404.19"

    const-string v5, "\u91d1\u725b\u5ea7:04.20\u201405.20"

    const-string v6, "\u53cc\u5b50\u5ea7:05.21\u201406.20"

    const-string v7, "\u5de8\u87f9\u5ea7:06.21\u201407.21"

    const-string v8, "\u72ee\u5b50\u5ea7:07.22\u201408.22"

    const-string v9, "\u5904\u5973\u5ea7:08.23\u201409.22"

    const-string v10, "\u5929\u79e4\u5ea7:09.23\u201410.22"

    const-string v11, "\u5929\u874e\u5ea7:10.23\u201411.21"

    const-string v12, "\u5c04\u624b\u5ea7:11.22\u201412.21"

    .line 123
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/widget/LunarCalender;->constellations:[Ljava/lang/String;

    const-string v1, "\u51fa\u884c.\u4e0a\u4efb.\u4f1a\u53cb.\u4e0a\u4e66.\u89c1\u5de5"

    const-string v2, "\u9664\u670d.\u7597\u75c5.\u51fa\u884c.\u62c6\u5378.\u5165\u5b85"

    const-string v3, "\u7948\u798f.\u796d\u7940.\u7ed3\u4eb2.\u5f00\u5e02.\u4ea4\u6613"

    const-string v4, "\u796d\u7940.\u4fee\u586b.\u6d82\u6ce5.\u4f59\u4e8b\u52ff\u53d6"

    const-string v5, "\u4ea4\u6613.\u7acb\u5238.\u4f1a\u53cb.\u7b7e\u7ea6.\u7eb3\u755c"

    const-string v6, "\u7948\u798f.\u796d\u7940.\u6c42\u5b50.\u7ed3\u5a5a.\u7acb\u7ea6"

    const-string v7, "\u6c42\u533b.\u8d74\u8003.\u796d\u7940.\u4f59\u4e8b\u52ff\u53d6"

    const-string v8, "\u7ecf\u8425.\u4ea4\u6613.\u6c42\u5b98.\u7eb3\u755c.\u52a8\u571f"

    const-string v9, "\u7948\u798f.\u5165\u5b66.\u5f00\u5e02.\u6c42\u533b.\u6210\u670d"

    const-string v10, "\u796d\u7940.\u6c42\u8d22.\u7b7e\u7ea6.\u5ac1\u5a36.\u8ba2\u76df"

    const-string v11, "\u7597\u75c5.\u7ed3\u5a5a.\u4ea4\u6613.\u5165\u4ed3.\u6c42\u804c"

    const-string v12, "\u796d\u7940.\u4ea4\u6613.\u6536\u8d22.\u5b89\u846c"

    .line 129
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/widget/LunarCalender;->yi_string:[Ljava/lang/String;

    const-string v1, "\u52a8\u571f.\u5f00\u4ed3.\u5ac1\u5a36.\u7eb3\u91c7"

    const-string v2, "\u6c42\u5b98.\u4e0a\u4efb.\u5f00\u5f20.\u642c\u5bb6.\u63a2\u75c5"

    const-string v3, "\u670d\u836f.\u6c42\u533b.\u683d\u79cd.\u52a8\u571f.\u8fc1\u79fb"

    const-string v4, "\u79fb\u5f99.\u5165\u5b85.\u5ac1\u5a36.\u5f00\u5e02.\u5b89\u846c"

    const-string v5, "\u79cd\u690d.\u7f6e\u4e1a.\u5356\u7530.\u6398\u4e95.\u9020\u8239"

    const-string v6, "\u5f00\u5e02.\u4ea4\u6613.\u642c\u5bb6.\u8fdc\u884c"

    const-string v7, "\u52a8\u571f.\u51fa\u884c.\u79fb\u5f99.\u5f00\u5e02.\u4fee\u9020"

    const-string v8, "\u767b\u9ad8.\u884c\u8239.\u5b89\u5e8a.\u5165\u5b85.\u535a\u5f69"

    const-string v9, "\u8bcd\u8bbc.\u5b89\u95e8.\u79fb\u5f99"

    const-string v10, "\u5f00\u5e02.\u5b89\u5e8a.\u5b89\u846c.\u5165\u5b85.\u7834\u571f"

    const-string v11, "\u5b89\u846c.\u52a8\u571f.\u9488\u7078"

    const-string v12, "\u5bb4\u4f1a.\u5b89\u5e8a.\u51fa\u884c.\u5ac1\u5a36.\u79fb\u5f99"

    .line 137
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/widget/LunarCalender;->ji_string:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "\u5efa"

    const-string v2, "\u9664"

    const-string v3, "\u6ee1"

    const-string v4, "\u5e73"

    const-string v5, "\u5b9a"

    const-string v6, "\u6267"

    const-string v7, "\u7834"

    const-string v8, "\u5371"

    const-string v9, "\u6210"

    const-string v10, "\u6536"

    const-string v11, "\u5f00"

    const-string v12, "\u95ed"

    .line 145
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v3, "\u95ed"

    const-string v4, "\u5efa"

    const-string v5, "\u9664"

    const-string v6, "\u6ee1"

    const-string v7, "\u5e73"

    const-string v8, "\u5b9a"

    const-string v9, "\u6267"

    const-string v10, "\u7834"

    const-string v11, "\u5371"

    const-string v12, "\u6210"

    const-string v13, "\u6536"

    const-string v14, "\u5f00"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v3, "\u5f00"

    const-string v4, "\u95ed"

    const-string v5, "\u5efa"

    const-string v6, "\u9664"

    const-string v7, "\u6ee1"

    const-string v8, "\u5e73"

    const-string v9, "\u5b9a"

    const-string v10, "\u6267"

    const-string v11, "\u7834"

    const-string v12, "\u5371"

    const-string v13, "\u6210"

    const-string v14, "\u6536"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v3, "\u6536"

    const-string v4, "\u5f00"

    const-string v5, "\u95ed"

    const-string v6, "\u5efa"

    const-string v7, "\u9664"

    const-string v8, "\u6ee1"

    const-string v9, "\u5e73"

    const-string v10, "\u5b9a"

    const-string v11, "\u6267"

    const-string v12, "\u7834"

    const-string v13, "\u5371"

    const-string v14, "\u6210"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v3, "\u6210"

    const-string v4, "\u6536"

    const-string v5, "\u5f00"

    const-string v6, "\u95ed"

    const-string v7, "\u5efa"

    const-string v8, "\u9664"

    const-string v9, "\u6ee1"

    const-string v10, "\u5e73"

    const-string v11, "\u5b9a"

    const-string v12, "\u6267"

    const-string v13, "\u7834"

    const-string v14, "\u5371"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v3, "\u5371"

    const-string v4, "\u6210"

    const-string v5, "\u6536"

    const-string v6, "\u5f00"

    const-string v7, "\u95ed"

    const-string v8, "\u5efa"

    const-string v9, "\u9664"

    const-string v10, "\u6ee1"

    const-string v11, "\u5e73"

    const-string v12, "\u5b9a"

    const-string v13, "\u6267"

    const-string v14, "\u7834"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v3, "\u7834"

    const-string v4, "\u5371"

    const-string v5, "\u6210"

    const-string v6, "\u6536"

    const-string v7, "\u5f00"

    const-string v8, "\u95ed"

    const-string v9, "\u5efa"

    const-string v10, "\u9664"

    const-string v11, "\u6ee1"

    const-string v12, "\u5e73"

    const-string v13, "\u5b9a"

    const-string v14, "\u6267"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v3, "\u6267"

    const-string v4, "\u7834"

    const-string v5, "\u5371"

    const-string v6, "\u6210"

    const-string v7, "\u6536"

    const-string v8, "\u5f00"

    const-string v9, "\u95ed"

    const-string v10, "\u5efa"

    const-string v11, "\u9664"

    const-string v12, "\u6ee1"

    const-string v13, "\u5e73"

    const-string v14, "\u5b9a"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v3, "\u5b9a"

    const-string v4, "\u6267"

    const-string v5, "\u7834"

    const-string v6, "\u5371"

    const-string v7, "\u6210"

    const-string v8, "\u6536"

    const-string v9, "\u5f00"

    const-string v10, "\u95ed"

    const-string v11, "\u5efa"

    const-string v12, "\u9664"

    const-string v13, "\u6ee1"

    const-string v14, "\u5e73"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v3, "\u5e73"

    const-string v4, "\u5b9a"

    const-string v5, "\u6267"

    const-string v6, "\u7834"

    const-string v7, "\u5371"

    const-string v8, "\u6210"

    const-string v9, "\u6536"

    const-string v10, "\u5f00"

    const-string v11, "\u95ed"

    const-string v12, "\u5efa"

    const-string v13, "\u9664"

    const-string v14, "\u6ee1"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v3, "\u6ee1"

    const-string v4, "\u5e73"

    const-string v5, "\u5b9a"

    const-string v6, "\u6267"

    const-string v7, "\u7834"

    const-string v8, "\u5371"

    const-string v9, "\u6210"

    const-string v10, "\u6536"

    const-string v11, "\u5f00"

    const-string v12, "\u95ed"

    const-string v13, "\u5efa"

    const-string v14, "\u9664"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v3, "\u9664"

    const-string v4, "\u6ee1"

    const-string v5, "\u5e73"

    const-string v6, "\u5b9a"

    const-string v7, "\u6267"

    const-string v8, "\u7834"

    const-string v9, "\u5371"

    const-string v10, "\u6210"

    const-string v11, "\u6536"

    const-string v12, "\u5f00"

    const-string v13, "\u95ed"

    const-string v14, "\u5efa"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/zui/gallery/widget/LunarCalender;->jcName:[[Ljava/lang/String;

    const-string v3, "\u7532"

    const-string v4, "\u4e59"

    const-string v5, "\u4e19"

    const-string v6, "\u4e01"

    const-string v7, "\u620a"

    const-string v8, "\u5df1"

    const-string v9, "\u5e9a"

    const-string v10, "\u8f9b"

    const-string v11, "\u58ec"

    const-string v12, "\u7678"

    .line 159
    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/widget/LunarCalender;->Gan:[Ljava/lang/String;

    const-string v1, "\u5b50"

    const-string v2, "\u4e11"

    const-string v3, "\u5bc5"

    const-string v4, "\u536f"

    const-string v5, "\u8fb0"

    const-string v6, "\u5df3"

    const-string v7, "\u5348"

    const-string v8, "\u672a"

    const-string v9, "\u7533"

    const-string v10, "\u9149"

    const-string v11, "\u620c"

    const-string v12, "\u4ea5"

    .line 161
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/widget/LunarCalender;->Zhi:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x5554
        0x56af
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0xd255
        0xb54f
        0xd6a0
        0xada2
        0x95b0
        0x4977
        0x497f
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0xab54
        0x2b6f
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6a95
        0x5adf
        0x2b60
        0x86e3
        0x92ef
        0xc8d7
        0xc95f
        0xd4a0
        0xd8a6
        0xb55f
        0x56a0
        0xa5b4
        0x25df
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x5355
        0x4daf
        0xa5b0
        0x4573
        0x52bf
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb6a0
        0x95a6
        0x95bf
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x5ac0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x5176
        0x52bf
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4afb
        0x4ad0
        0xa4d0
        0xd0b6
        0xd25f
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0xb255
        0x6d2f
        0xada0
        0x4b63
        0x937f
        0x49f8
        0x4970
        0x64b0
        0x68a6
        0xea5f
        0x6b20
        0xa6c4
        0xaaef
        0x92e0
        0xd2e3
        0xc960
        0xd557
        0xd4a0
        0xda50
        0x5d55
        0x56a0
        0xa6d0
        0x55d4
        0x52d0
        0xa9b8
        0xa950
        0xb4a0
        0xb6a6
        0xad50
        0x55a0
        0xaba4
        0xa5b0
        0x52b0
        0xb273
        0x6930
        0x7337
        0x6aa0
        0xad50
        0x4b55
        0x4b6f
        0xa570
        0x54e4
        0xd260
        0xe968
        0xd520
        0xdaa0
        0x6aa6
        0x56df
        0x4ae0
        0xa9d4
        0xa4d0
        0xd150
        0xf252
        0xd520
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/zui/gallery/widget/LunarCalender;->leapMonth:I

    return-void
.end method

.method private static final cyclicalm(I)Ljava/lang/String;
    .locals 3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/widget/LunarCalender;->Gan:[Ljava/lang/String;

    rem-int/lit8 v2, p0, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/zui/gallery/widget/LunarCalender;->Zhi:[Ljava/lang/String;

    rem-int/lit8 p0, p0, 0xc

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChinaDayString(I)Ljava/lang/String;
    .locals 12

    const-string v0, "\u521d"

    const-string v1, "\u5341"

    const-string v2, "\u5eff"

    const-string v3, "\u5345"

    .line 225
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u4e00"

    const-string v3, "\u4e8c"

    const-string v4, "\u4e09"

    const-string v5, "\u56db"

    const-string v6, "\u4e94"

    const-string v7, "\u516d"

    const-string v8, "\u4e03"

    const-string v9, "\u516b"

    const-string v10, "\u4e5d"

    const-string v11, "\u5341"

    .line 226
    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    if-eq p0, v3, :cond_0

    const/16 v4, 0x1e

    if-eq p0, v4, :cond_0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p0, p0, -0x1

    div-int/lit8 v3, p0, 0xa

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 p0, p0, 0xa

    aget-object p0, v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eq p0, v3, :cond_1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 p0, p0, 0xa

    aget-object p0, v0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "\u4e8c\u5341"

    :goto_0
    return-object p0
.end method

.method private sTerm(II)I
    .locals 9

    const/16 v0, 0x18

    new-array v0, v0, [I

    .line 588
    fill-array-data v0, :array_0

    .line 592
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/16 v2, 0x76c

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x0

    move-object v1, v8

    .line 593
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 594
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 595
    new-instance v3, Ljava/util/Date;

    add-int/lit16 p1, p1, -0x76c

    int-to-double v4, p1

    const-wide v6, 0x421d63c1e85acccdL    # 3.15569259747E10

    mul-double/2addr v4, v6

    aget p1, v0, p2

    int-to-long p1, p1

    const-wide/32 v6, 0xea60

    mul-long/2addr p1, v6

    long-to-double p1, p1

    add-double/2addr v4, p1

    long-to-double p1, v1

    add-double/2addr v4, p1

    double-to-long p1, v4

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x5

    .line 596
    invoke-virtual {v8, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1

    nop

    :array_0
    .array-data 4
        0x0
        0x52d8
        0xa5e3
        0xf95c
        0x14d59
        0x1a206
        0x1f763
        0x24d89
        0x2a45d
        0x2fbdf
        0x353d8
        0x3ac35
        0x404af
        0x45d25
        0x4b553
        0x50d19
        0x56446
        0x5bac6
        0x61087
        0x6658a
        0x6b9db
        0x70d90
        0x760cc
        0x7b3b6
    .end array-data
.end method


# virtual methods
.method public CalConv2(IIIIIII)Ljava/lang/String;
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    .line 632
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v7, p5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    if-nez v0, :cond_0

    if-eq v2, v7, :cond_b

    :cond_0
    if-ne v0, v7, :cond_1

    if-eqz v2, :cond_b

    :cond_1
    const/4 v8, 0x1

    const/4 v9, 0x7

    if-ne v0, v8, :cond_2

    if-eq v2, v9, :cond_b

    :cond_2
    if-ne v0, v9, :cond_3

    if-eq v2, v8, :cond_b

    :cond_3
    const/16 v10, 0x8

    const/4 v11, 0x2

    if-ne v0, v11, :cond_4

    if-eq v2, v10, :cond_b

    :cond_4
    if-ne v0, v10, :cond_5

    if-eq v2, v11, :cond_b

    :cond_5
    const/16 v12, 0x9

    const/4 v13, 0x3

    if-ne v0, v13, :cond_6

    if-eq v2, v12, :cond_b

    :cond_6
    if-ne v0, v12, :cond_7

    if-eq v2, v13, :cond_b

    :cond_7
    const/16 v14, 0xa

    const/4 v15, 0x4

    if-ne v0, v15, :cond_8

    if-eq v2, v14, :cond_b

    :cond_8
    if-ne v0, v14, :cond_9

    if-eq v2, v15, :cond_b

    :cond_9
    const/16 v14, 0xb

    const/4 v15, 0x5

    if-ne v0, v15, :cond_a

    if-eq v2, v14, :cond_b

    :cond_a
    if-ne v0, v14, :cond_c

    if-ne v2, v15, :cond_c

    :cond_b
    const-string v0, "\u65e5\u503c\u5c81\u7834 \u5927\u4e8b\u4e0d\u5b9c"

    return-object v0

    :cond_c
    if-nez v1, :cond_d

    if-eq v2, v7, :cond_18

    :cond_d
    if-ne v1, v7, :cond_e

    if-eqz v2, :cond_18

    :cond_e
    if-ne v1, v8, :cond_f

    if-eq v2, v9, :cond_18

    :cond_f
    if-ne v1, v9, :cond_10

    if-eq v2, v8, :cond_18

    :cond_10
    if-ne v1, v11, :cond_11

    if-eq v2, v10, :cond_18

    :cond_11
    if-ne v1, v10, :cond_12

    if-eq v2, v11, :cond_18

    :cond_12
    if-ne v1, v13, :cond_13

    if-eq v2, v12, :cond_18

    :cond_13
    if-ne v1, v12, :cond_14

    if-eq v2, v13, :cond_18

    :cond_14
    const/4 v0, 0x4

    const/16 v12, 0xa

    if-ne v1, v0, :cond_15

    if-eq v2, v12, :cond_18

    :cond_15
    if-ne v1, v12, :cond_16

    if-eq v2, v0, :cond_18

    :cond_16
    if-ne v1, v15, :cond_17

    if-eq v2, v14, :cond_18

    :cond_17
    if-ne v1, v14, :cond_19

    if-ne v2, v15, :cond_19

    :cond_18
    const-string v0, "\u65e5\u503c\u6708\u7834 \u5927\u4e8b\u4e0d\u5b9c"

    return-object v0

    :cond_19
    if-nez v3, :cond_1a

    const-string v0, "911"

    if-eq v6, v0, :cond_23

    :cond_1a
    if-ne v3, v8, :cond_1b

    const-string v0, "55"

    if-eq v6, v0, :cond_23

    :cond_1b
    if-ne v3, v11, :cond_1c

    const-string v0, "111"

    if-eq v6, v0, :cond_23

    :cond_1c
    if-ne v3, v13, :cond_1d

    const-string v0, "75"

    if-eq v6, v0, :cond_23

    :cond_1d
    const/4 v0, 0x4

    if-ne v3, v0, :cond_1e

    const-string v0, "311"

    if-eq v6, v0, :cond_23

    :cond_1e
    if-ne v3, v15, :cond_1f

    const-string v0, "95"

    if-eq v6, v0, :cond_23

    :cond_1f
    if-ne v3, v7, :cond_20

    const-string v0, "511"

    if-eq v6, v0, :cond_23

    :cond_20
    if-ne v3, v9, :cond_21

    const-string v0, "15"

    if-eq v6, v0, :cond_23

    :cond_21
    if-ne v3, v10, :cond_22

    const-string v0, "711"

    if-eq v6, v0, :cond_23

    :cond_22
    const/16 v0, 0x9

    if-ne v3, v0, :cond_24

    const-string v0, "35"

    if-ne v6, v0, :cond_24

    :cond_23
    const-string v0, "\u65e5\u503c\u4e0a\u6714 \u5927\u4e8b\u4e0d\u5b9c"

    return-object v0

    :cond_24
    if-ne v4, v8, :cond_25

    const/16 v0, 0xd

    if-eq v5, v0, :cond_31

    :cond_25
    if-ne v4, v11, :cond_26

    if-eq v5, v14, :cond_31

    :cond_26
    if-ne v4, v13, :cond_27

    const/16 v0, 0x9

    if-eq v5, v0, :cond_31

    :cond_27
    const/4 v0, 0x4

    if-ne v4, v0, :cond_28

    if-eq v5, v9, :cond_31

    :cond_28
    if-ne v4, v15, :cond_29

    if-eq v5, v15, :cond_31

    :cond_29
    if-ne v4, v7, :cond_2a

    if-eq v5, v13, :cond_31

    :cond_2a
    if-ne v4, v9, :cond_2b

    if-eq v5, v8, :cond_31

    :cond_2b
    if-ne v4, v9, :cond_2c

    const/16 v0, 0x1d

    if-eq v5, v0, :cond_31

    :cond_2c
    if-ne v4, v10, :cond_2d

    const/16 v0, 0x1b

    if-eq v5, v0, :cond_31

    :cond_2d
    const/16 v0, 0x9

    if-ne v4, v0, :cond_2e

    const/16 v0, 0x19

    if-eq v5, v0, :cond_31

    :cond_2e
    const/16 v0, 0xa

    if-ne v4, v0, :cond_2f

    const/16 v0, 0x17

    if-eq v5, v0, :cond_31

    :cond_2f
    if-ne v4, v14, :cond_30

    const/16 v0, 0x15

    if-eq v5, v0, :cond_31

    :cond_30
    const/16 v0, 0xc

    if-ne v4, v0, :cond_32

    const/16 v0, 0x13

    if-ne v5, v0, :cond_32

    :cond_31
    const-string v0, "\u65e5\u503c\u6768\u516c\u5341\u4e09\u5fcc \u5927\u4e8b\u4e0d\u5b9c"

    return-object v0

    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method

.method public animalsYear(I)Ljava/lang/String;
    .locals 12

    const-string v0, "\u9f20"

    const-string v1, "\u725b"

    const-string v2, "\u864e"

    const-string v3, "\u5154"

    const-string v4, "\u9f99"

    const-string v5, "\u86c7"

    const-string v6, "\u9a6c"

    const-string v7, "\u7f8a"

    const-string v8, "\u7334"

    const-string v9, "\u9e21"

    const-string v10, "\u72d7"

    const-string v11, "\u732a"

    .line 201
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, -0x4

    rem-int/lit8 p1, p1, 0xc

    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u5e74"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final cyclical(III)Ljava/lang/String;
    .locals 2

    add-int/lit16 v0, p1, -0x76c

    add-int/lit8 v0, v0, 0x24

    const/4 v1, 0x2

    .line 215
    invoke-direct {p0, p1, v1}, Lcom/zui/gallery/widget/LunarCalender;->sTerm(II)I

    move-result p1

    if-gt p2, v1, :cond_1

    if-ne p2, v1, :cond_0

    if-lt p3, p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, 0x0

    .line 221
    :goto_1
    invoke-static {v0}, Lcom/zui/gallery/widget/LunarCalender;->cyclicalm(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getConstellation(II)Ljava/lang/String;
    .locals 0

    mul-int/lit8 p1, p1, 0x64

    add-int/2addr p1, p2

    const/16 p2, 0x78

    if-lt p1, p2, :cond_0

    const/16 p2, 0xda

    if-gt p1, p2, :cond_0

    .line 560
    sget-object p1, Lcom/zui/gallery/widget/LunarCalender;->constellations:[Ljava/lang/String;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    goto/16 :goto_0

    :cond_0
    const/16 p2, 0xdb

    if-lt p1, p2, :cond_1

    const/16 p2, 0x140

    if-gt p1, p2, :cond_1

    .line 562
    sget-object p1, Lcom/zui/gallery/widget/LunarCalender;->constellations:[Ljava/lang/String;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    goto/16 :goto_0

    :cond_1
    const/16 p2, 0x141

    if-lt p1, p2, :cond_2

    const/16 p2, 0x1a3

    if-gt p1, p2, :cond_2

    .line 564
    sget-object p1, Lcom/zui/gallery/widget/LunarCalender;->constellations:[Ljava/lang/String;

    const/4 p2, 0x3

    aget-object p1, p1, p2

    goto/16 :goto_0

    :cond_2
    const/16 p2, 0x1a4

    if-lt p1, p2, :cond_3

    const/16 p2, 0x208

    if-gt p1, p2, :cond_3

    .line 566
    sget-object p1, Lcom/zui/gallery/widget/LunarCalender;->constellations:[Ljava/lang/String;

    const/4 p2, 0x4

    aget-object p1, p1, p2

    goto/16 :goto_0

    :cond_3
    const/16 p2, 0x209

    if-lt p1, p2, :cond_4

    const/16 p2, 0x26c

    if-gt p1, p2, :cond_4

    .line 568
    sget-object p1, Lcom/zui/gallery/widget/LunarCalender;->constellations:[Ljava/lang/String;

    const/4 p2, 0x5

    aget-object p1, p1, p2

    goto :goto_0

    :cond_4
    const/16 p2, 0x26d

    if-lt p1, p2, :cond_5

    const/16 p2, 0x2d1

    if-gt p1, p2, :cond_5

    .line 570
    sget-object p1, Lcom/zui/gallery/widget/LunarCalender;->constellations:[Ljava/lang/String;

    const/4 p2, 0x6

    aget-object p1, p1, p2

    goto :goto_0

    :cond_5
    const/16 p2, 0x2d2

    if-lt p1, p2, :cond_6

    const/16 p2, 0x336

    if-gt p1, p2, :cond_6

    .line 572
    sget-object p1, Lcom/zui/gallery/widget/LunarCalender;->constellations:[Ljava/lang/String;

    const/4 p2, 0x7

    aget-object p1, p1, p2

    goto :goto_0

    :cond_6
    const/16 p2, 0x337

    if-lt p1, p2, :cond_7

    const/16 p2, 0x39a

    if-gt p1, p2, :cond_7

    .line 574
    sget-object p1, Lcom/zui/gallery/widget/LunarCalender;->constellations:[Ljava/lang/String;

    const/16 p2, 0x8

    aget-object p1, p1, p2

    goto :goto_0

    :cond_7
    const/16 p2, 0x39b

    if-lt p1, p2, :cond_8

    const/16 p2, 0x3fe

    if-gt p1, p2, :cond_8

    .line 576
    sget-object p1, Lcom/zui/gallery/widget/LunarCalender;->constellations:[Ljava/lang/String;

    const/16 p2, 0x9

    aget-object p1, p1, p2

    goto :goto_0

    :cond_8
    const/16 p2, 0x3ff

    if-lt p1, p2, :cond_9

    const/16 p2, 0x461

    if-gt p1, p2, :cond_9

    .line 578
    sget-object p1, Lcom/zui/gallery/widget/LunarCalender;->constellations:[Ljava/lang/String;

    const/16 p2, 0xa

    aget-object p1, p1, p2

    goto :goto_0

    :cond_9
    const/16 p2, 0x462

    if-lt p1, p2, :cond_a

    const/16 p2, 0x4c5

    if-gt p1, p2, :cond_a

    .line 580
    sget-object p1, Lcom/zui/gallery/widget/LunarCalender;->constellations:[Ljava/lang/String;

    const/16 p2, 0xb

    aget-object p1, p1, p2

    goto :goto_0

    .line 582
    :cond_a
    sget-object p1, Lcom/zui/gallery/widget/LunarCalender;->constellations:[Ljava/lang/String;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    :goto_0
    return-object p1
.end method

.method public getDateFromBaseDate(I)I
    .locals 5

    .line 792
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x76c

    .line 793
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 794
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    const/16 v4, 0x1f

    .line 795
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 796
    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->add(II)V

    .line 797
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 798
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 799
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit16 p1, p1, 0x2710

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr p1, v2

    add-int/2addr p1, v0

    return p1
.end method

.method public getDateOfSolarTerms(II)I
    .locals 1

    add-int/lit8 p2, p2, -0x1

    mul-int/lit8 p2, p2, 0x2

    .line 601
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/widget/LunarCalender;->sTerm(II)I

    move-result v0

    add-int/lit8 p2, p2, 0x1

    .line 602
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/widget/LunarCalender;->sTerm(II)I

    move-result p1

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v0, p1

    return v0
.end method

.method public getDaysOfMonth(II)I
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 670
    rem-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_0

    rem-int/lit8 p2, p1, 0x64

    if-nez p2, :cond_1

    :cond_0
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_2

    :cond_1
    const/16 p1, 0x1d

    goto :goto_0

    :cond_2
    const/16 p1, 0x1c

    :goto_0
    return p1

    :cond_3
    const/4 p1, 0x1

    if-eq p2, p1, :cond_5

    const/4 p1, 0x3

    if-eq p2, p1, :cond_5

    const/4 p1, 0x5

    if-eq p2, p1, :cond_5

    const/4 p1, 0x7

    if-eq p2, p1, :cond_5

    const/16 p1, 0x8

    if-eq p2, p1, :cond_5

    const/16 p1, 0xa

    if-eq p2, p1, :cond_5

    const/16 p1, 0xc

    if-ne p2, p1, :cond_4

    goto :goto_1

    :cond_4
    const/16 p1, 0x1e

    return p1

    :cond_5
    :goto_1
    const/16 p1, 0x1f

    return p1
.end method

.method public getDaysOfTwoDate(IIIIII)I
    .locals 6

    const-string v0, "\u65e5"

    const-string v1, "\u6708"

    const-string v2, "\u5e74"

    const/4 v3, 0x0

    .line 246
    :try_start_0
    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    :try_start_1
    sget-object p2, Lcom/zui/gallery/widget/LunarCalender;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v3

    .line 249
    :goto_0
    invoke-virtual {p2}, Ljava/text/ParseException;->printStackTrace()V

    .line 252
    :goto_1
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p4

    sub-long/2addr p2, p4

    const-wide/32 p4, 0x5265c00

    div-long/2addr p2, p4

    long-to-int p1, p2

    return p1
.end method

.method public getFestival(III)Ljava/lang/String;
    .locals 12

    .line 410
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/widget/LunarCalender;->getLunarDateINT(III)I

    move-result v0

    .line 411
    div-int/lit16 v1, v0, 0x2710

    .line 412
    rem-int/lit16 v2, v0, 0x2710

    div-int/lit8 v2, v2, 0x64

    mul-int/lit16 v1, v1, 0x2710

    sub-int/2addr v0, v1

    mul-int/lit8 v1, v2, 0x64

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    move v3, v1

    .line 414
    :goto_0
    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->lunarHoliday:[Ljava/lang/String;

    array-length v5, v4

    const-string v6, "0"

    const-string v7, " "

    const/16 v8, 0xa

    const-string v9, ""

    const/4 v10, 0x1

    if-ge v3, v5, :cond_3

    .line 416
    aget-object v4, v4, v3

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    .line 417
    sget-object v5, Lcom/zui/gallery/widget/LunarCalender;->lunarHoliday:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v10

    .line 418
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 419
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-ge p2, v8, :cond_0

    .line 422
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_0
    if-ge p3, v8, :cond_1

    .line 425
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 427
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 428
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 434
    :goto_1
    sget-object v2, Lcom/zui/gallery/widget/LunarCalender;->solarHoliday:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_e

    .line 435
    array-length v2, v2

    if-ne v0, v2, :cond_4

    const/16 v2, 0x765

    if-lt p1, v2, :cond_e

    :cond_4
    add-int/lit8 v2, v0, 0x3

    sget-object v3, Lcom/zui/gallery/widget/LunarCalender;->solarHoliday:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_5

    const/16 v2, 0x7cf

    if-lt p1, v2, :cond_e

    :cond_5
    add-int/lit8 v2, v0, 0x6

    sget-object v3, Lcom/zui/gallery/widget/LunarCalender;->solarHoliday:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_6

    const/16 v2, 0x796

    if-lt p1, v2, :cond_e

    :cond_6
    add-int/lit8 v2, v0, 0xa

    sget-object v3, Lcom/zui/gallery/widget/LunarCalender;->solarHoliday:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_7

    const/16 v2, 0x79d

    if-lt p1, v2, :cond_e

    :cond_7
    const/16 v2, 0x13

    if-ne v0, v2, :cond_8

    const/16 v2, 0x781

    if-lt p1, v2, :cond_e

    :cond_8
    const/16 v2, 0x14

    if-ne v0, v2, :cond_9

    const/16 v2, 0x78d

    if-lt p1, v2, :cond_e

    :cond_9
    const/16 v2, 0x16

    if-ne v0, v2, :cond_a

    const/16 v2, 0x7b8

    if-ge p1, v2, :cond_a

    goto :goto_2

    .line 445
    :cond_a
    sget-object v2, Lcom/zui/gallery/widget/LunarCalender;->solarHoliday:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    .line 446
    sget-object v3, Lcom/zui/gallery/widget/LunarCalender;->solarHoliday:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v10

    .line 447
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-ge p2, v8, :cond_b

    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_b
    if-ge p3, v8, :cond_c

    .line 454
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 456
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 457
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-object v3

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 463
    :cond_e
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/widget/LunarCalender;->getDateOfSolarTerms(II)I

    move-result p1

    .line 464
    div-int/lit8 v0, p1, 0x64

    if-ne p3, v0, :cond_f

    .line 465
    sget-object p1, Lcom/zui/gallery/widget/LunarCalender;->sTermInfo:[Ljava/lang/String;

    sub-int/2addr p2, v10

    mul-int/lit8 p2, p2, 0x2

    aget-object p1, p1, p2

    return-object p1

    .line 466
    :cond_f
    rem-int/lit8 p1, p1, 0x64

    if-ne p3, p1, :cond_10

    .line 467
    sget-object p1, Lcom/zui/gallery/widget/LunarCalender;->sTermInfo:[Ljava/lang/String;

    sub-int/2addr p2, v10

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v10

    aget-object p1, p1, p2

    return-object p1

    :cond_10
    return-object v9
.end method

.method public getLeapMonth()I
    .locals 1

    .line 523
    iget v0, p0, Lcom/zui/gallery/widget/LunarCalender;->leapMonth:I

    return v0
.end method

.method public getLunarCalendar(IIILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 293
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zui/gallery/widget/LunarCalender;->getLunarString(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLunarDate(IIIZ)Ljava/lang/String;
    .locals 5

    .line 483
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/widget/LunarCalender;->getLunarDateINT(III)I

    move-result v0

    .line 485
    div-int/lit16 v1, v0, 0x2710

    iput v1, p0, Lcom/zui/gallery/widget/LunarCalender;->year:I

    .line 486
    invoke-virtual {p0, v1}, Lcom/zui/gallery/widget/LunarCalender;->setYear(I)V

    .line 489
    rem-int/lit16 v1, v0, 0x2710

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/zui/gallery/widget/LunarCalender;->month:I

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zui/gallery/widget/LunarCalender;->chineseNumber:[Ljava/lang/String;

    iget v3, p0, Lcom/zui/gallery/widget/LunarCalender;->month:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0xc

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u6708"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zui/gallery/widget/LunarCalender;->setLunarMonth(Ljava/lang/String;)V

    .line 491
    iget v1, p0, Lcom/zui/gallery/widget/LunarCalender;->year:I

    mul-int/lit16 v1, v1, 0x2710

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/widget/LunarCalender;->month:I

    mul-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zui/gallery/widget/LunarCalender;->day:I

    if-nez p4, :cond_0

    .line 493
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/widget/LunarCalender;->getFestival(III)Ljava/lang/String;

    move-result-object p1

    .line 494
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v4, :cond_0

    return-object p1

    .line 498
    :cond_0
    iget p1, p0, Lcom/zui/gallery/widget/LunarCalender;->day:I

    if-ne p1, v4, :cond_1

    .line 499
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/zui/gallery/widget/LunarCalender;->chineseNumber:[Ljava/lang/String;

    iget p3, p0, Lcom/zui/gallery/widget/LunarCalender;->month:I

    sub-int/2addr p3, v4

    rem-int/lit8 p3, p3, 0xc

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 501
    :cond_1
    invoke-static {p1}, Lcom/zui/gallery/widget/LunarCalender;->getChinaDayString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLunarDateINT(III)I
    .locals 7

    const/16 v1, 0x76c

    const/4 v2, 0x1

    const/16 v3, 0x1f

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    .line 346
    invoke-virtual/range {v0 .. v6}, Lcom/zui/gallery/widget/LunarCalender;->getDaysOfTwoDate(IIIIII)I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0x76c

    move v0, p2

    :goto_0
    const/16 v1, 0x834

    if-ge p3, v1, :cond_0

    if-lez p1, :cond_0

    .line 353
    invoke-virtual {p0, p3}, Lcom/zui/gallery/widget/LunarCalender;->yearDays(I)I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    add-int/2addr p1, v0

    add-int/lit8 p3, p3, -0x1

    .line 366
    :cond_1
    invoke-virtual {p0, p3}, Lcom/zui/gallery/widget/LunarCalender;->leapMonth(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/widget/LunarCalender;->leapMonth:I

    .line 367
    iput-boolean p2, p0, Lcom/zui/gallery/widget/LunarCalender;->leap:Z

    const/4 v0, 0x1

    move v2, p2

    move v1, v0

    :goto_1
    const/16 v3, 0xd

    if-ge v1, v3, :cond_4

    if-lez p1, :cond_4

    .line 373
    iget v2, p0, Lcom/zui/gallery/widget/LunarCalender;->leapMonth:I

    if-lez v2, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_2

    iget-boolean v2, p0, Lcom/zui/gallery/widget/LunarCalender;->leap:Z

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 375
    iput-boolean v0, p0, Lcom/zui/gallery/widget/LunarCalender;->leap:Z

    .line 376
    invoke-virtual {p0, p3}, Lcom/zui/gallery/widget/LunarCalender;->leapDays(I)I

    move-result v2

    goto :goto_2

    .line 378
    :cond_2
    invoke-virtual {p0, p3, v1}, Lcom/zui/gallery/widget/LunarCalender;->monthDays(II)I

    move-result v2

    .line 381
    :goto_2
    iget-boolean v3, p0, Lcom/zui/gallery/widget/LunarCalender;->leap:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/zui/gallery/widget/LunarCalender;->leapMonth:I

    add-int/2addr v3, v0

    if-ne v1, v3, :cond_3

    iput-boolean p2, p0, Lcom/zui/gallery/widget/LunarCalender;->leap:Z

    :cond_3
    sub-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-nez p1, :cond_6

    .line 387
    iget v3, p0, Lcom/zui/gallery/widget/LunarCalender;->leapMonth:I

    if-lez v3, :cond_6

    add-int/2addr v3, v0

    if-ne v1, v3, :cond_6

    .line 388
    iget-boolean v3, p0, Lcom/zui/gallery/widget/LunarCalender;->leap:Z

    if-eqz v3, :cond_5

    .line 389
    iput-boolean p2, p0, Lcom/zui/gallery/widget/LunarCalender;->leap:Z

    goto :goto_3

    .line 391
    :cond_5
    iput-boolean v0, p0, Lcom/zui/gallery/widget/LunarCalender;->leap:Z

    add-int/lit8 v1, v1, -0x1

    :cond_6
    :goto_3
    if-gez p1, :cond_7

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, -0x1

    :cond_7
    add-int/2addr p1, v0

    mul-int/lit16 p3, p3, 0x2710

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr p3, v1

    add-int/2addr p3, p1

    return p3
.end method

.method public getLunarMonth()Ljava/lang/String;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/zui/gallery/widget/LunarCalender;->lunarMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getLunarString(IIILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 297
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/widget/LunarCalender;->getLunarDateINT(III)I

    move-result v0

    .line 298
    div-int/lit16 v1, v0, 0x2710

    .line 299
    rem-int/lit16 v2, v0, 0x2710

    div-int/lit8 v2, v2, 0x64

    mul-int/lit16 v3, v1, 0x2710

    sub-int/2addr v0, v3

    mul-int/lit8 v3, v2, 0x64

    sub-int/2addr v0, v3

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/widget/LunarCalender;->cyclical(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5e74"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 303
    invoke-virtual {p0, v1, v2, v0, v4}, Lcom/zui/gallery/widget/LunarCalender;->getSunDate(IIIZ)Ljava/util/Calendar;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p2, :cond_0

    const-string v1, "\u95f0"

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 307
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/zui/gallery/widget/LunarCalender;->chineseNumber:[Ljava/lang/String;

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6708"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-static {v0}, Lcom/zui/gallery/widget/LunarCalender;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-direct {p0, p1, v4}, Lcom/zui/gallery/widget/LunarCalender;->sTerm(II)I

    move-result v2

    if-gt p2, v4, :cond_2

    if-ne p2, v4, :cond_1

    if-lt p3, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, p1, -0x1

    goto :goto_2

    :cond_2
    :goto_1
    move v2, p1

    .line 320
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/widget/LunarCalender;->getFestival(III)Ljava/lang/String;

    move-result-object p1

    const-string p2, "lunarCalendarDryBranch"

    .line 322
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 323
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p2, "lunarCalendar"

    .line 324
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p2, "festival"

    .line 326
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-object p1

    .line 333
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSunDate(IIIZ)Ljava/util/Calendar;
    .locals 5

    add-int/lit16 v0, p1, -0x76c

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit16 v4, v2, 0x76c

    .line 265
    invoke-virtual {p0, v4}, Lcom/zui/gallery/widget/LunarCalender;->yearDays(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v2, v0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 268
    invoke-virtual {p0, p1, v2}, Lcom/zui/gallery/widget/LunarCalender;->monthDays(II)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 270
    :cond_1
    invoke-virtual {p0, p1}, Lcom/zui/gallery/widget/LunarCalender;->leapMonth(I)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/zui/gallery/widget/LunarCalender;->leapMonth(I)I

    move-result v2

    if-le p2, v2, :cond_2

    .line 271
    invoke-virtual {p0, p1}, Lcom/zui/gallery/widget/LunarCalender;->leapDays(I)I

    move-result v2

    add-int/2addr v3, v2

    :cond_2
    if-eqz p4, :cond_3

    .line 274
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/widget/LunarCalender;->monthDays(II)I

    move-result p1

    add-int/2addr v3, p1

    :cond_3
    add-int/2addr v3, p3

    sub-int/2addr v3, v0

    .line 278
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 p2, 0x76c

    .line 279
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x2

    .line 280
    invoke-virtual {p1, p2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0x1f

    const/4 p3, 0x5

    .line 281
    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->set(II)V

    .line 282
    invoke-virtual {p1, p3, v3}, Ljava/util/Calendar;->add(II)V

    return-object p1
.end method

.method public getYear()I
    .locals 1

    .line 549
    iget v0, p0, Lcom/zui/gallery/widget/LunarCalender;->year:I

    return v0
.end method

.method public getyiji(III)Ljava/lang/String;
    .locals 18

    move-object/from16 v8, p0

    move/from16 v7, p1

    move/from16 v9, p2

    add-int/lit16 v10, v7, -0x76c

    mul-int/lit8 v0, v10, 0xc

    add-int v11, v0, v9

    add-int/lit8 v0, v11, -0x1

    add-int/lit8 v12, v0, 0xc

    .line 750
    invoke-virtual/range {p0 .. p2}, Lcom/zui/gallery/widget/LunarCalender;->getDaysOfMonth(II)I

    move-result v0

    move/from16 v1, p3

    if-le v1, v0, :cond_0

    move v13, v0

    goto :goto_0

    :cond_0
    move v13, v1

    :goto_0
    const/4 v14, 0x2

    .line 758
    invoke-direct {v8, v7, v14}, Lcom/zui/gallery/widget/LunarCalender;->sTerm(II)I

    move-result v15

    add-int/lit8 v0, v9, -0x1

    mul-int/2addr v0, v14

    .line 759
    invoke-direct {v8, v7, v0}, Lcom/zui/gallery/widget/LunarCalender;->sTerm(II)I

    move-result v6

    const/16 v1, 0x76c

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v17, v6

    move/from16 v6, v16

    .line 760
    invoke-virtual/range {v0 .. v6}, Lcom/zui/gallery/widget/LunarCalender;->getDaysOfTwoDate(IIIIII)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    if-ne v9, v14, :cond_1

    if-ne v13, v15, :cond_1

    add-int/lit8 v10, v10, 0x24

    goto :goto_1

    :cond_1
    const/4 v10, -0x1

    :goto_1
    move/from16 v1, v17

    if-ne v13, v1, :cond_2

    add-int/lit8 v12, v11, 0xc

    :cond_2
    add-int/2addr v0, v13

    add-int/lit8 v0, v0, -0x1

    .line 772
    invoke-virtual {v8, v7, v9, v13}, Lcom/zui/gallery/widget/LunarCalender;->getLunarDateINT(III)I

    move-result v1

    .line 773
    div-int/lit16 v2, v1, 0x2710

    .line 774
    rem-int/lit16 v3, v1, 0x2710

    div-int/lit8 v6, v3, 0x64

    mul-int/lit16 v2, v2, 0x2710

    sub-int/2addr v1, v2

    mul-int/lit8 v2, v6, 0x64

    sub-int v7, v1, v2

    .line 778
    rem-int/lit8 v1, v10, 0xc

    rem-int/lit8 v12, v12, 0xc

    rem-int/lit8 v9, v0, 0xc

    rem-int/lit8 v4, v10, 0xa

    rem-int/lit8 v5, v0, 0xa

    move-object/from16 v0, p0

    move v2, v12

    move v3, v9

    invoke-virtual/range {v0 .. v7}, Lcom/zui/gallery/widget/LunarCalender;->CalConv2(IIIIIII)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 780
    sget-object v0, Lcom/zui/gallery/widget/LunarCalender;->jcName:[[Ljava/lang/String;

    aget-object v0, v0, v12

    aget-object v0, v0, v9

    invoke-virtual {v8, v0}, Lcom/zui/gallery/widget/LunarCalender;->jcrt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public getyiji(II)Ljava/util/ArrayList;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    add-int/lit16 v11, v9, -0x76c

    mul-int/lit8 v0, v11, 0xc

    add-int v12, v0, v10

    add-int/lit8 v0, v12, -0x1

    add-int/lit8 v7, v0, 0xc

    .line 688
    invoke-virtual/range {p0 .. p2}, Lcom/zui/gallery/widget/LunarCalender;->getDaysOfMonth(II)I

    move-result v13

    .line 689
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x2

    .line 694
    invoke-direct {v8, v9, v15}, Lcom/zui/gallery/widget/LunarCalender;->sTerm(II)I

    move-result v6

    add-int/lit8 v0, v10, -0x1

    mul-int/2addr v0, v15

    .line 697
    invoke-direct {v8, v9, v0}, Lcom/zui/gallery/widget/LunarCalender;->sTerm(II)I

    move-result v5

    const/16 v1, 0x76c

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v4, p1

    move/from16 v17, v5

    move/from16 v5, p2

    move/from16 v18, v6

    move/from16 v6, v16

    .line 702
    invoke-virtual/range {v0 .. v6}, Lcom/zui/gallery/widget/LunarCalender;->getDaysOfTwoDate(IIIIII)I

    move-result v0

    add-int/lit8 v16, v0, 0xa

    const/4 v0, 0x0

    const/16 v19, 0x1

    const/4 v1, -0x1

    move v2, v1

    move/from16 v3, v19

    move v4, v3

    move v1, v0

    :goto_0
    if-ge v0, v13, :cond_6

    if-le v3, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 706
    invoke-virtual {v8, v9, v10, v1}, Lcom/zui/gallery/widget/LunarCalender;->getLunarDateINT(III)I

    move-result v1

    .line 707
    div-int/lit16 v3, v1, 0x2710

    .line 708
    rem-int/lit16 v4, v1, 0x2710

    div-int/lit8 v4, v4, 0x64

    mul-int/lit16 v5, v3, 0x2710

    sub-int/2addr v1, v5

    mul-int/lit8 v5, v4, 0x64

    sub-int/2addr v1, v5

    .line 710
    invoke-virtual {v8, v3}, Lcom/zui/gallery/widget/LunarCalender;->leapMonth(I)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v8, v3}, Lcom/zui/gallery/widget/LunarCalender;->leapDays(I)I

    move-result v3

    goto :goto_1

    :cond_0
    invoke-virtual {v8, v3, v4}, Lcom/zui/gallery/widget/LunarCalender;->monthDays(II)I

    move-result v3

    :goto_1
    move/from16 v20, v3

    move/from16 v21, v4

    move v3, v1

    goto :goto_2

    :cond_1
    move/from16 v20, v1

    move/from16 v21, v4

    :goto_2
    if-ne v10, v15, :cond_2

    add-int/lit8 v1, v0, 0x1

    move/from16 v6, v18

    if-ne v1, v6, :cond_3

    add-int/lit8 v1, v11, 0x24

    move/from16 v18, v1

    goto :goto_3

    :cond_2
    move/from16 v6, v18

    :cond_3
    move/from16 v18, v2

    :goto_3
    add-int/lit8 v5, v0, 0x1

    move/from16 v4, v17

    if-ne v5, v4, :cond_4

    add-int/lit8 v1, v12, 0xc

    move/from16 v17, v1

    goto :goto_4

    :cond_4
    move/from16 v17, v7

    :goto_4
    add-int v0, v16, v0

    add-int/lit8 v22, v3, 0x1

    .line 729
    rem-int/lit8 v1, v18, 0xc

    rem-int/lit8 v23, v17, 0xc

    rem-int/lit8 v24, v0, 0xc

    rem-int/lit8 v7, v18, 0xa

    rem-int/lit8 v25, v0, 0xa

    add-int/lit8 v26, v22, -0x1

    move-object/from16 v0, p0

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v27, v4

    move v4, v7

    move/from16 v28, v5

    move/from16 v5, v25

    move/from16 v25, v6

    move/from16 v6, v21

    move/from16 v7, v26

    invoke-virtual/range {v0 .. v7}, Lcom/zui/gallery/widget/LunarCalender;->CalConv2(IIIIIII)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 731
    sget-object v0, Lcom/zui/gallery/widget/LunarCalender;->jcName:[[Ljava/lang/String;

    aget-object v0, v0, v23

    aget-object v0, v0, v24

    .line 732
    invoke-virtual {v8, v0}, Lcom/zui/gallery/widget/LunarCalender;->jcrt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 736
    :cond_5
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v7, v17

    move/from16 v2, v18

    move/from16 v1, v20

    move/from16 v4, v21

    move/from16 v3, v22

    move/from16 v18, v25

    move/from16 v17, v27

    move/from16 v0, v28

    goto/16 :goto_0

    :cond_6
    return-object v14
.end method

.method public jcrt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "\u5b9c:\t"

    const-string v1, "\u5fcc:\t"

    const-string v2, "-"

    const-string v3, "\u5efa"

    if-ne p1, v3, :cond_0

    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->yi_string:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->ji_string:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    const-string v4, "\u9664"

    if-ne p1, v4, :cond_1

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->yi_string:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->ji_string:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v4, "\u6ee1"

    if-ne p1, v4, :cond_2

    .line 613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->yi_string:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->ji_string:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    const-string v4, "\u5e73"

    if-ne p1, v4, :cond_3

    .line 614
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->yi_string:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->ji_string:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string v4, "\u5b9a"

    if-ne p1, v4, :cond_4

    .line 615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->yi_string:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->ji_string:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    const-string v4, "\u6267"

    if-ne p1, v4, :cond_5

    .line 616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->yi_string:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->ji_string:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    const-string v4, "\u7834"

    if-ne p1, v4, :cond_6

    .line 617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->yi_string:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->ji_string:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_6
    const-string v4, "\u5371"

    if-ne p1, v4, :cond_7

    .line 618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->yi_string:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->ji_string:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_7
    const-string v4, "\u6210"

    if-ne p1, v4, :cond_8

    .line 619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->yi_string:[Ljava/lang/String;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->ji_string:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_8
    const-string v4, "\u6536"

    if-ne p1, v4, :cond_9

    .line 620
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->yi_string:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->ji_string:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_9
    const-string v4, "\u5f00"

    if-ne p1, v4, :cond_a

    .line 621
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->yi_string:[Ljava/lang/String;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/widget/LunarCalender;->ji_string:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_a
    const-string v4, "\u95ed"

    if-ne p1, v4, :cond_b

    .line 622
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/zui/gallery/widget/LunarCalender;->yi_string:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/zui/gallery/widget/LunarCalender;->ji_string:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_b
    return-object v3
.end method

.method public leapDays(I)I
    .locals 4

    .line 176
    invoke-virtual {p0, p1}, Lcom/zui/gallery/widget/LunarCalender;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    sget-object v0, Lcom/zui/gallery/widget/LunarCalender;->lunarInfo:[J

    add-int/lit16 p1, p1, -0x76b

    aget-wide v0, v0, p1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/16 p1, 0x1e

    return p1

    :cond_0
    const/16 p1, 0x1d

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public leapMonth(I)I
    .locals 4

    .line 187
    sget-object v0, Lcom/zui/gallery/widget/LunarCalender;->lunarInfo:[J

    add-int/lit16 p1, p1, -0x76c

    aget-wide v0, v0, p1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    long-to-int p1, v0

    return p1
.end method

.method public monthDays(II)I
    .locals 2

    .line 193
    sget-object v0, Lcom/zui/gallery/widget/LunarCalender;->lunarInfo:[J

    add-int/lit16 p1, p1, -0x76c

    aget-wide v0, v0, p1

    const/high16 p1, 0x10000

    shr-int/2addr p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/16 p1, 0x1d

    return p1

    :cond_0
    const/16 p1, 0x1e

    return p1
.end method

.method public setLeapMonth(I)V
    .locals 0

    .line 527
    iput p1, p0, Lcom/zui/gallery/widget/LunarCalender;->leapMonth:I

    return-void
.end method

.method public setLunarMonth(Ljava/lang/String;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/zui/gallery/widget/LunarCalender;->lunarMonth:Ljava/lang/String;

    return-void
.end method

.method public setYear(I)V
    .locals 0

    .line 553
    iput p1, p0, Lcom/zui/gallery/widget/LunarCalender;->year:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 507
    sget-object v0, Lcom/zui/gallery/widget/LunarCalender;->chineseNumber:[Ljava/lang/String;

    iget v1, p0, Lcom/zui/gallery/widget/LunarCalender;->month:I

    add-int/lit8 v1, v1, -0x1

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    const-string v1, "\u521d\u4e00"

    const-string v2, "\u6b63"

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/zui/gallery/widget/LunarCalender;->day:I

    invoke-static {v0}, Lcom/zui/gallery/widget/LunarCalender;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v0

    if-ne v0, v1, :cond_0

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u519c\u5386"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/widget/LunarCalender;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 509
    :cond_0
    iget v0, p0, Lcom/zui/gallery/widget/LunarCalender;->day:I

    invoke-static {v0}, Lcom/zui/gallery/widget/LunarCalender;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v0

    if-ne v0, v1, :cond_1

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/widget/LunarCalender;->chineseNumber:[Ljava/lang/String;

    iget v2, p0, Lcom/zui/gallery/widget/LunarCalender;->month:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 512
    :cond_1
    iget v0, p0, Lcom/zui/gallery/widget/LunarCalender;->day:I

    invoke-static {v0}, Lcom/zui/gallery/widget/LunarCalender;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public yearDays(I)I
    .locals 6

    const/16 v0, 0x15c

    const v1, 0x8000

    :goto_0
    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 168
    sget-object v2, Lcom/zui/gallery/widget/LunarCalender;->lunarInfo:[J

    add-int/lit16 v3, p1, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p0, p1}, Lcom/zui/gallery/widget/LunarCalender;->leapDays(I)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method
