.class public Lcom/zui/gallery/data/SizeClustering;
.super Lcom/zui/gallery/data/Clustering;
.source "SizeClustering.java"


# static fields
.field private static final GIGA_BYTES:J = 0x40000000L

.field private static final MEGA_BYTES:J = 0x100000L

.field private static final SIZE_LEVELS:[J

.field private static final TAG:Ljava/lang/String; = "SizeClustering"


# instance fields
.field private mClusters:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMinSizes:[J

.field private mNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [J

    .line 38
    fill-array-data v0, :array_0

    sput-object v0, Lcom/zui/gallery/data/SizeClustering;->SIZE_LEVELS:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x100000
        0xa00000
        0x6400000
        0x40000000
        0x80000000L
        0x100000000L
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/zui/gallery/data/Clustering;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/zui/gallery/data/SizeClustering;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()[J
    .locals 1

    .line 26
    sget-object v0, Lcom/zui/gallery/data/SizeClustering;->SIZE_LEVELS:[J

    return-object v0
.end method

.method private getSizeString(I)Ljava/lang/String;
    .locals 4

    .line 115
    sget-object v0, Lcom/zui/gallery/data/SizeClustering;->SIZE_LEVELS:[J

    aget-wide v0, v0, p1

    const-wide/32 v2, 0x40000000

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "GB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "MB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/zui/gallery/data/SizeClustering;->mClusters:[Ljava/util/ArrayList;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/zui/gallery/data/SizeClustering;->mNames:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getMinSize(I)J
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/zui/gallery/data/SizeClustering;->mMinSizes:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/zui/gallery/data/SizeClustering;->mClusters:[Ljava/util/ArrayList;

    array-length v0, v0

    return v0
.end method

.method public run(Lcom/zui/gallery/data/MediaSet;)V
    .locals 11

    .line 56
    sget-object v0, Lcom/zui/gallery/data/SizeClustering;->SIZE_LEVELS:[J

    array-length v0, v0

    new-array v1, v0, [Ljava/util/ArrayList;

    .line 57
    new-instance v2, Lcom/zui/gallery/data/SizeClustering$1;

    invoke-direct {v2, p0, v1}, Lcom/zui/gallery/data/SizeClustering$1;-><init>(Lcom/zui/gallery/data/SizeClustering;[Ljava/util/ArrayList;)V

    invoke-virtual {p1, v2}, Lcom/zui/gallery/data/MediaSet;->enumerateTotalMediaItems(Lcom/zui/gallery/data/MediaSet$ItemConsumer;)V

    const/4 p1, 0x0

    move v2, p1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 80
    aget-object v4, v1, v2

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_1
    new-array v2, v3, [Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/zui/gallery/data/SizeClustering;->mClusters:[Ljava/util/ArrayList;

    .line 86
    new-array v2, v3, [Ljava/lang/String;

    iput-object v2, p0, Lcom/zui/gallery/data/SizeClustering;->mNames:[Ljava/lang/String;

    .line 87
    new-array v2, v3, [J

    iput-object v2, p0, Lcom/zui/gallery/data/SizeClustering;->mMinSizes:[J

    .line 89
    iget-object v2, p0, Lcom/zui/gallery/data/SizeClustering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    move v5, p1

    move v4, v0

    :goto_1
    if-ltz v4, :cond_5

    .line 94
    aget-object v6, v1, v4

    if-nez v6, :cond_2

    goto :goto_3

    .line 96
    :cond_2
    iget-object v6, p0, Lcom/zui/gallery/data/SizeClustering;->mClusters:[Ljava/util/ArrayList;

    aget-object v7, v1, v4

    aput-object v7, v6, v5

    if-nez v4, :cond_3

    .line 98
    iget-object v6, p0, Lcom/zui/gallery/data/SizeClustering;->mNames:[Ljava/lang/String;

    const v7, 0x7f100265

    .line 99
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    add-int/lit8 v9, v4, 0x1

    invoke-direct {p0, v9}, Lcom/zui/gallery/data/SizeClustering;->getSizeString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, p1

    .line 98
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    goto :goto_2

    :cond_3
    if-ne v4, v0, :cond_4

    .line 101
    iget-object v6, p0, Lcom/zui/gallery/data/SizeClustering;->mNames:[Ljava/lang/String;

    const v7, 0x7f100264

    .line 102
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/zui/gallery/data/SizeClustering;->getSizeString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, p1

    .line 101
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    goto :goto_2

    .line 104
    :cond_4
    invoke-direct {p0, v4}, Lcom/zui/gallery/data/SizeClustering;->getSizeString(I)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    .line 105
    invoke-direct {p0, v7}, Lcom/zui/gallery/data/SizeClustering;->getSizeString(I)Ljava/lang/String;

    move-result-object v7

    .line 106
    iget-object v8, p0, Lcom/zui/gallery/data/SizeClustering;->mNames:[Ljava/lang/String;

    const v9, 0x7f100266

    .line 107
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, p1

    aput-object v7, v10, v3

    .line 106
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    .line 109
    :goto_2
    iget-object v6, p0, Lcom/zui/gallery/data/SizeClustering;->mMinSizes:[J

    sget-object v7, Lcom/zui/gallery/data/SizeClustering;->SIZE_LEVELS:[J

    aget-wide v7, v7, v4

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_5
    return-void
.end method
