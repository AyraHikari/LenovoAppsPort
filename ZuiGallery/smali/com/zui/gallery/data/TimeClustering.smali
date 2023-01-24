.class public Lcom/zui/gallery/data/TimeClustering;
.super Lcom/zui/gallery/data/Clustering;
.source "TimeClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/TimeClustering$DateComparator;
    }
.end annotation


# static fields
.field private static CLUSTER_SPLIT_MULTIPLIER:I = 0x3

.field private static final GEOGRAPHIC_DISTANCE_CUTOFF_IN_MILES:I = 0x14

.field private static final MAX_CLUSTER_SPLIT_TIME_IN_MS:J = 0x6ddd00L

.field private static final MAX_MAX_CLUSTER_SIZE:I = 0x32

.field private static final MAX_MIN_CLUSTER_SIZE:I = 0xf

.field private static final MIN_CLUSTER_SPLIT_TIME_IN_MS:J = 0xea60L

.field private static final MIN_MAX_CLUSTER_SIZE:I = 0x14

.field private static final MIN_MIN_CLUSTER_SIZE:I = 0x8

.field private static final MIN_PARTITION_CHANGE_FACTOR:I = 0x2

.field private static final NUM_CLUSTERS_TARGETED:I = 0x9

.field private static final PARTITION_CLUSTER_SPLIT_TIME_FACTOR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TimeClustering"

.field private static final sDateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/zui/gallery/data/SmallItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClusterSplitTime:J

.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Cluster;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrCluster:Lcom/zui/gallery/data/Cluster;

.field private mLargeClusterSplitTime:J

.field private mMaxClusterSize:I

.field private mMinClusterSize:I

.field private mNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Lcom/zui/gallery/data/TimeClustering$DateComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/gallery/data/TimeClustering$DateComparator;-><init>(Lcom/zui/gallery/data/TimeClustering$1;)V

    sput-object v0, Lcom/zui/gallery/data/TimeClustering;->sDateComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 93
    invoke-direct {p0}, Lcom/zui/gallery/data/Clustering;-><init>()V

    const-wide/32 v0, 0x3763b0

    .line 75
    iput-wide v0, p0, Lcom/zui/gallery/data/TimeClustering;->mClusterSplitTime:J

    const-wide/16 v2, 0x2

    .line 77
    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zui/gallery/data/TimeClustering;->mLargeClusterSplitTime:J

    const/16 v0, 0xb

    .line 79
    iput v0, p0, Lcom/zui/gallery/data/TimeClustering;->mMinClusterSize:I

    const/16 v0, 0x23

    .line 80
    iput v0, p0, Lcom/zui/gallery/data/TimeClustering;->mMaxClusterSize:I

    .line 94
    iput-object p1, p0, Lcom/zui/gallery/data/TimeClustering;->mContext:Landroid/content/Context;

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    .line 96
    new-instance p1, Lcom/zui/gallery/data/Cluster;

    invoke-direct {p1}, Lcom/zui/gallery/data/Cluster;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    return-void
.end method

.method private compute(Lcom/zui/gallery/data/SmallItem;)V
    .locals 8

    if-eqz p1, :cond_6

    .line 194
    iget-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    invoke-virtual {v1}, Lcom/zui/gallery/data/Cluster;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/Cluster;->addItem(Lcom/zui/gallery/data/SmallItem;)V

    goto/16 :goto_3

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    invoke-virtual {v2}, Lcom/zui/gallery/data/Cluster;->getLastItem()Lcom/zui/gallery/data/SmallItem;

    move-result-object v2

    .line 205
    invoke-static {v2, p1}, Lcom/zui/gallery/data/TimeClustering;->isGeographicallySeparated(Lcom/zui/gallery/data/SmallItem;Lcom/zui/gallery/data/SmallItem;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 206
    iget-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v5

    goto :goto_1

    .line 208
    :cond_1
    iget v3, p0, Lcom/zui/gallery/data/TimeClustering;->mMaxClusterSize:I

    if-le v1, v3, :cond_2

    .line 209
    invoke-direct {p0}, Lcom/zui/gallery/data/TimeClustering;->splitAndAddCurrentCluster()V

    goto :goto_0

    .line 210
    :cond_2
    invoke-static {v2, p1}, Lcom/zui/gallery/data/TimeClustering;->timeDistance(Lcom/zui/gallery/data/SmallItem;Lcom/zui/gallery/data/SmallItem;)J

    move-result-wide v2

    iget-wide v6, p0, Lcom/zui/gallery/data/TimeClustering;->mClusterSplitTime:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_3

    .line 211
    iget-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/Cluster;->addItem(Lcom/zui/gallery/data/SmallItem;)V

    move v0, v4

    move v4, v5

    goto :goto_1

    :cond_3
    if-lez v0, :cond_4

    .line 213
    iget v0, p0, Lcom/zui/gallery/data/TimeClustering;->mMinClusterSize:I

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    iget-boolean v0, v0, Lcom/zui/gallery/data/Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    if-nez v0, :cond_4

    .line 215
    invoke-direct {p0}, Lcom/zui/gallery/data/TimeClustering;->mergeAndAddCurrentCluster()V

    goto :goto_0

    .line 217
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    move v0, v4

    :goto_1
    if-nez v4, :cond_9

    .line 222
    new-instance v1, Lcom/zui/gallery/data/Cluster;

    invoke-direct {v1}, Lcom/zui/gallery/data/Cluster;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    if-eqz v0, :cond_5

    .line 224
    iput-boolean v5, v1, Lcom/zui/gallery/data/Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/Cluster;->addItem(Lcom/zui/gallery/data/SmallItem;)V

    goto :goto_3

    .line 230
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    invoke-virtual {p1}, Lcom/zui/gallery/data/Cluster;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 231
    iget-object p1, p0, Lcom/zui/gallery/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 232
    iget-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    invoke-virtual {v0}, Lcom/zui/gallery/data/Cluster;->size()I

    move-result v0

    .line 235
    iget v1, p0, Lcom/zui/gallery/data/TimeClustering;->mMaxClusterSize:I

    if-le v0, v1, :cond_7

    .line 236
    invoke-direct {p0}, Lcom/zui/gallery/data/TimeClustering;->splitAndAddCurrentCluster()V

    goto :goto_2

    :cond_7
    if-lez p1, :cond_8

    .line 237
    iget p1, p0, Lcom/zui/gallery/data/TimeClustering;->mMinClusterSize:I

    if-ge v0, p1, :cond_8

    iget-object p1, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    iget-boolean p1, p1, Lcom/zui/gallery/data/Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    if-nez p1, :cond_8

    .line 239
    invoke-direct {p0}, Lcom/zui/gallery/data/TimeClustering;->mergeAndAddCurrentCluster()V

    goto :goto_2

    .line 241
    :cond_8
    iget-object p1, p0, Lcom/zui/gallery/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :goto_2
    new-instance p1, Lcom/zui/gallery/data/Cluster;

    invoke-direct {p1}, Lcom/zui/gallery/data/Cluster;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    :cond_9
    :goto_3
    return-void
.end method

.method private getPartitionIndexForCurrentCluster()I
    .locals 20

    move-object/from16 v0, p0

    .line 271
    iget-object v1, v0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    invoke-virtual {v1}, Lcom/zui/gallery/data/Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 272
    iget-object v2, v0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    invoke-virtual {v2}, Lcom/zui/gallery/data/Cluster;->size()I

    move-result v2

    .line 273
    iget v3, v0, Lcom/zui/gallery/data/TimeClustering;->mMinClusterSize:I

    add-int/lit8 v4, v3, 0x1

    const/4 v5, -0x1

    if-le v2, v4, :cond_3

    const/high16 v4, 0x40000000    # 2.0f

    move v6, v3

    :goto_0
    sub-int v7, v2, v3

    if-ge v6, v7, :cond_3

    add-int/lit8 v7, v6, -0x1

    .line 278
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/gallery/data/SmallItem;

    .line 279
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zui/gallery/data/SmallItem;

    add-int/lit8 v9, v6, 0x1

    .line 280
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zui/gallery/data/SmallItem;

    .line 282
    iget-wide v11, v10, Lcom/zui/gallery/data/SmallItem;->dateInMs:J

    .line 283
    iget-wide v13, v8, Lcom/zui/gallery/data/SmallItem;->dateInMs:J

    move-object v15, v1

    move/from16 v16, v2

    .line 284
    iget-wide v1, v7, Lcom/zui/gallery/data/SmallItem;->dateInMs:J

    const-wide/16 v17, 0x0

    cmp-long v19, v11, v17

    if-eqz v19, :cond_2

    cmp-long v19, v13, v17

    if-eqz v19, :cond_2

    cmp-long v17, v1, v17

    if-nez v17, :cond_0

    goto :goto_1

    :cond_0
    sub-long/2addr v11, v13

    .line 288
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    sub-long/2addr v13, v1

    .line 289
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    long-to-float v11, v11

    long-to-float v1, v1

    const v2, 0x3c23d70a    # 0.01f

    add-float v12, v1, v2

    div-float v12, v11, v12

    add-float/2addr v11, v2

    div-float/2addr v1, v11

    .line 291
    invoke-static {v12, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    cmpl-float v2, v1, v4

    if-lez v2, :cond_2

    .line 293
    invoke-static {v8, v7}, Lcom/zui/gallery/data/TimeClustering;->timeDistance(Lcom/zui/gallery/data/SmallItem;Lcom/zui/gallery/data/SmallItem;)J

    move-result-wide v11

    iget-wide v13, v0, Lcom/zui/gallery/data/TimeClustering;->mLargeClusterSplitTime:J

    cmp-long v2, v11, v13

    if-lez v2, :cond_1

    move v4, v1

    move v5, v6

    goto :goto_1

    .line 296
    :cond_1
    invoke-static {v10, v8}, Lcom/zui/gallery/data/TimeClustering;->timeDistance(Lcom/zui/gallery/data/SmallItem;Lcom/zui/gallery/data/SmallItem;)J

    move-result-wide v6

    iget-wide v10, v0, Lcom/zui/gallery/data/TimeClustering;->mLargeClusterSplitTime:J

    cmp-long v2, v6, v10

    if-lez v2, :cond_2

    move v4, v1

    move v5, v9

    :cond_2
    :goto_1
    move v6, v9

    move-object v1, v15

    move/from16 v2, v16

    goto :goto_0

    :cond_3
    return v5
.end method

.method private static isGeographicallySeparated(Lcom/zui/gallery/data/SmallItem;Lcom/zui/gallery/data/SmallItem;)Z
    .locals 12

    .line 323
    iget-wide v0, p0, Lcom/zui/gallery/data/SmallItem;->lat:D

    iget-wide v2, p0, Lcom/zui/gallery/data/SmallItem;->lng:D

    invoke-static {v0, v1, v2, v3}, Lcom/zui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v2, p1, Lcom/zui/gallery/data/SmallItem;->lat:D

    iget-wide v4, p1, Lcom/zui/gallery/data/SmallItem;->lng:D

    .line 324
    invoke-static {v2, v3, v4, v5}, Lcom/zui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    iget-wide v2, p0, Lcom/zui/gallery/data/SmallItem;->lat:D

    .line 329
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    iget-wide v2, p0, Lcom/zui/gallery/data/SmallItem;->lng:D

    .line 330
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    iget-wide v2, p1, Lcom/zui/gallery/data/SmallItem;->lat:D

    .line 331
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    iget-wide p0, p1, Lcom/zui/gallery/data/SmallItem;->lng:D

    .line 332
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 328
    invoke-static/range {v4 .. v11}, Lcom/zui/gallery/util/GalleryUtils;->fastDistanceMeters(DDDD)D

    move-result-wide p0

    .line 333
    invoke-static {p0, p1}, Lcom/zui/gallery/util/GalleryUtils;->toMile(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double p0, p0, v2

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private mergeAndAddCurrentCluster()V
    .locals 6

    .line 307
    iget-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 308
    iget-object v1, p0, Lcom/zui/gallery/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/Cluster;

    .line 309
    iget-object v2, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    invoke-virtual {v2}, Lcom/zui/gallery/data/Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 310
    iget-object v3, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    invoke-virtual {v3}, Lcom/zui/gallery/data/Cluster;->size()I

    move-result v3

    .line 311
    invoke-virtual {v1}, Lcom/zui/gallery/data/Cluster;->size()I

    move-result v4

    iget v5, p0, Lcom/zui/gallery/data/TimeClustering;->mMinClusterSize:I

    if-ge v4, v5, :cond_1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 313
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/SmallItem;

    invoke-virtual {v1, v5}, Lcom/zui/gallery/data/Cluster;->addItem(Lcom/zui/gallery/data/SmallItem;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method private setTimeRange(JI)V
    .locals 6

    if-eqz p3, :cond_0

    .line 179
    div-int/lit8 v0, p3, 0x9

    .line 182
    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/zui/gallery/data/TimeClustering;->mMinClusterSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 183
    iput v0, p0, Lcom/zui/gallery/data/TimeClustering;->mMaxClusterSize:I

    int-to-long v0, p3

    .line 184
    div-long/2addr p1, v0

    sget p3, Lcom/zui/gallery/data/TimeClustering;->CLUSTER_SPLIT_MULTIPLIER:I

    int-to-long v0, p3

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lcom/zui/gallery/data/TimeClustering;->mClusterSplitTime:J

    .line 186
    :cond_0
    iget-wide v0, p0, Lcom/zui/gallery/data/TimeClustering;->mClusterSplitTime:J

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0x6ddd00

    invoke-static/range {v0 .. v5}, Lcom/zui/gallery/common/Utils;->clamp(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zui/gallery/data/TimeClustering;->mClusterSplitTime:J

    const-wide/16 v0, 0x2

    .line 187
    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/zui/gallery/data/TimeClustering;->mLargeClusterSplitTime:J

    .line 188
    iget p1, p0, Lcom/zui/gallery/data/TimeClustering;->mMinClusterSize:I

    const/16 p2, 0x8

    const/16 p3, 0xf

    invoke-static {p1, p2, p3}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/data/TimeClustering;->mMinClusterSize:I

    .line 189
    iget p1, p0, Lcom/zui/gallery/data/TimeClustering;->mMaxClusterSize:I

    const/16 p2, 0x14

    const/16 p3, 0x32

    invoke-static {p1, p2, p3}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/data/TimeClustering;->mMaxClusterSize:I

    return-void
.end method

.method private splitAndAddCurrentCluster()V
    .locals 6

    .line 249
    iget-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    invoke-virtual {v0}, Lcom/zui/gallery/data/Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    invoke-virtual {v1}, Lcom/zui/gallery/data/Cluster;->size()I

    move-result v1

    .line 251
    invoke-direct {p0}, Lcom/zui/gallery/data/TimeClustering;->getPartitionIndexForCurrentCluster()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 253
    new-instance v3, Lcom/zui/gallery/data/Cluster;

    invoke-direct {v3}, Lcom/zui/gallery/data/Cluster;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 255
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/SmallItem;

    invoke-virtual {v3, v5}, Lcom/zui/gallery/data/Cluster;->addItem(Lcom/zui/gallery/data/SmallItem;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 257
    :cond_0
    iget-object v4, p0, Lcom/zui/gallery/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v3, Lcom/zui/gallery/data/Cluster;

    invoke-direct {v3}, Lcom/zui/gallery/data/Cluster;-><init>()V

    :goto_1
    if-ge v2, v1, :cond_1

    .line 260
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/SmallItem;

    invoke-virtual {v3, v4}, Lcom/zui/gallery/data/Cluster;->addItem(Lcom/zui/gallery/data/SmallItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zui/gallery/data/TimeClustering;->mCurrCluster:Lcom/zui/gallery/data/Cluster;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method private static timeDistance(Lcom/zui/gallery/data/SmallItem;Lcom/zui/gallery/data/SmallItem;)J
    .locals 2

    .line 338
    iget-wide v0, p0, Lcom/zui/gallery/data/SmallItem;->dateInMs:J

    iget-wide p0, p1, Lcom/zui/gallery/data/SmallItem;->dateInMs:J

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/Cluster;

    invoke-virtual {p1}, Lcom/zui/gallery/data/Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object p1

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 167
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/SmallItem;

    iget-object v3, v3, Lcom/zui/gallery/data/SmallItem;->path:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mNames:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getNumberOfClusters()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run(Lcom/zui/gallery/data/MediaSet;)V
    .locals 12

    .line 101
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    .line 102
    new-array v1, v0, [Lcom/zui/gallery/data/SmallItem;

    const/4 v2, 0x2

    new-array v2, v2, [D

    .line 105
    new-instance v3, Lcom/zui/gallery/data/TimeClustering$1;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/zui/gallery/data/TimeClustering$1;-><init>(Lcom/zui/gallery/data/TimeClustering;I[D[Lcom/zui/gallery/data/SmallItem;)V

    invoke-virtual {p1, v3}, Lcom/zui/gallery/data/MediaSet;->enumerateTotalMediaItems(Lcom/zui/gallery/data/MediaSet$ItemConsumer;)V

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 121
    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 122
    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_1
    sget-object v0, Lcom/zui/gallery/data/TimeClustering;->sDateComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 128
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v3, 0x0

    move v1, v2

    move-wide v5, v3

    move-wide v7, v5

    :goto_1
    if-ge v1, v0, :cond_4

    .line 132
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zui/gallery/data/SmallItem;

    iget-wide v9, v9, Lcom/zui/gallery/data/SmallItem;->dateInMs:J

    cmp-long v11, v9, v3

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    cmp-long v11, v7, v3

    if-nez v11, :cond_3

    move-wide v5, v9

    move-wide v7, v5

    goto :goto_2

    .line 137
    :cond_3
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 138
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    sub-long/2addr v5, v7

    .line 142
    invoke-direct {p0, v5, v6, v0}, Lcom/zui/gallery/data/TimeClustering;->setTimeRange(JI)V

    move v1, v2

    :goto_3
    if-ge v1, v0, :cond_5

    .line 145
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/SmallItem;

    invoke-direct {p0, v3}, Lcom/zui/gallery/data/TimeClustering;->compute(Lcom/zui/gallery/data/SmallItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 148
    invoke-direct {p0, p1}, Lcom/zui/gallery/data/TimeClustering;->compute(Lcom/zui/gallery/data/SmallItem;)V

    .line 150
    iget-object p1, p0, Lcom/zui/gallery/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 151
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mNames:[Ljava/lang/String;

    :goto_4
    if-ge v2, p1, :cond_6

    .line 153
    iget-object v0, p0, Lcom/zui/gallery/data/TimeClustering;->mNames:[Ljava/lang/String;

    iget-object v1, p0, Lcom/zui/gallery/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/Cluster;

    iget-object v3, p0, Lcom/zui/gallery/data/TimeClustering;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/zui/gallery/data/Cluster;->generateCaption(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method
