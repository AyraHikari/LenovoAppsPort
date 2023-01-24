.class Lcom/zui/gallery/data/LocationClustering;
.super Lcom/zui/gallery/data/Clustering;
.source "LocationClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/LocationClustering$SmallItem;,
        Lcom/zui/gallery/data/LocationClustering$Point;
    }
.end annotation


# static fields
.field private static final MAX_GROUPS:I = 0x14

.field private static final MAX_ITERATIONS:I = 0x1e

.field private static final MIN_GROUPS:I = 0x1

.field private static final STOP_CHANGE_RATIO:F = 0.01f

.field private static final TAG:Ljava/lang/String; = "LocationClustering"


# instance fields
.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/LocationClustering$SmallItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoLocationString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/zui/gallery/data/Clustering;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/zui/gallery/data/LocationClustering;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1001c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    .line 66
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/zui/gallery/data/LocationClustering;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/data/LocationClustering;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/zui/gallery/data/LocationClustering;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private static generateName(Ljava/util/ArrayList;Lcom/zui/gallery/util/ReverseGeocoder;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/LocationClustering$SmallItem;",
            ">;",
            "Lcom/zui/gallery/util/ReverseGeocoder;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/zui/gallery/util/ReverseGeocoder$SetLatLong;

    invoke-direct {v0}, Lcom/zui/gallery/util/ReverseGeocoder$SetLatLong;-><init>()V

    .line 157
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 159
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/LocationClustering$SmallItem;

    .line 160
    iget-wide v4, v3, Lcom/zui/gallery/data/LocationClustering$SmallItem;->lat:D

    .line 161
    iget-wide v6, v3, Lcom/zui/gallery/data/LocationClustering$SmallItem;->lng:D

    .line 163
    iget-wide v8, v0, Lcom/zui/gallery/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    cmpl-double v3, v8, v4

    if-lez v3, :cond_0

    .line 164
    iput-wide v4, v0, Lcom/zui/gallery/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    .line 165
    iput-wide v6, v0, Lcom/zui/gallery/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    .line 167
    :cond_0
    iget-wide v8, v0, Lcom/zui/gallery/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    cmpg-double v3, v8, v4

    if-gez v3, :cond_1

    .line 168
    iput-wide v4, v0, Lcom/zui/gallery/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    .line 169
    iput-wide v6, v0, Lcom/zui/gallery/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    .line 171
    :cond_1
    iget-wide v8, v0, Lcom/zui/gallery/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    cmpl-double v3, v8, v6

    if-lez v3, :cond_2

    .line 172
    iput-wide v4, v0, Lcom/zui/gallery/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    .line 173
    iput-wide v6, v0, Lcom/zui/gallery/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    .line 175
    :cond_2
    iget-wide v8, v0, Lcom/zui/gallery/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    cmpg-double v3, v8, v6

    if-gez v3, :cond_3

    .line 176
    iput-wide v4, v0, Lcom/zui/gallery/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    .line 177
    iput-wide v6, v0, Lcom/zui/gallery/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_4
    invoke-virtual {p1, v0}, Lcom/zui/gallery/util/ReverseGeocoder;->computeAddress(Lcom/zui/gallery/util/ReverseGeocoder$SetLatLong;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static kMeans([Lcom/zui/gallery/data/LocationClustering$Point;[I)[I
    .locals 34

    move-object/from16 v0, p0

    .line 208
    array-length v1, v0

    const/4 v2, 0x1

    .line 211
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0x14

    .line 212
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 214
    new-array v5, v4, [Lcom/zui/gallery/data/LocationClustering$Point;

    .line 215
    new-array v6, v4, [Lcom/zui/gallery/data/LocationClustering$Point;

    .line 216
    new-array v7, v4, [I

    .line 217
    new-array v8, v1, [I

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v4, :cond_0

    .line 220
    new-instance v11, Lcom/zui/gallery/data/LocationClustering$Point;

    invoke-direct {v11}, Lcom/zui/gallery/data/LocationClustering$Point;-><init>()V

    aput-object v11, v5, v10

    .line 221
    new-instance v11, Lcom/zui/gallery/data/LocationClustering$Point;

    invoke-direct {v11}, Lcom/zui/gallery/data/LocationClustering$Point;-><init>()V

    aput-object v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 228
    :cond_0
    new-array v10, v1, [I

    .line 230
    aput v2, p1, v9

    const/4 v13, 0x0

    const v14, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v15, 0x0

    :goto_1
    if-gt v3, v4, :cond_11

    .line 237
    div-int v16, v1, v3

    move v11, v9

    :goto_2
    if-ge v11, v3, :cond_1

    mul-int v17, v11, v16

    .line 239
    aget-object v12, v0, v17

    .line 240
    aget-object v2, v5, v11

    move-object/from16 v18, v10

    iget-wide v9, v12, Lcom/zui/gallery/data/LocationClustering$Point;->latRad:D

    iput-wide v9, v2, Lcom/zui/gallery/data/LocationClustering$Point;->latRad:D

    .line 241
    aget-object v2, v5, v11

    iget-wide v9, v12, Lcom/zui/gallery/data/LocationClustering$Point;->lngRad:D

    iput-wide v9, v2, Lcom/zui/gallery/data/LocationClustering$Point;->lngRad:D

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v10, v18

    const/4 v2, 0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    move-object/from16 v18, v10

    const/4 v2, 0x0

    :goto_3
    const/16 v9, 0x1e

    if-ge v2, v9, :cond_a

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v3, :cond_2

    .line 247
    aget-object v10, v6, v9

    const-wide/16 v11, 0x0

    iput-wide v11, v10, Lcom/zui/gallery/data/LocationClustering$Point;->latRad:D

    .line 248
    aget-object v10, v6, v9

    iput-wide v11, v10, Lcom/zui/gallery/data/LocationClustering$Point;->lngRad:D

    const/4 v10, 0x0

    .line 249
    aput v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_2
    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_5
    if-ge v10, v1, :cond_6

    .line 254
    aget-object v9, v0, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v16, 0x7f7fffff    # Float.MAX_VALUE

    :goto_6
    if-ge v11, v3, :cond_5

    move/from16 v27, v1

    .line 258
    iget-wide v0, v9, Lcom/zui/gallery/data/LocationClustering$Point;->latRad:D

    move/from16 v29, v13

    move/from16 v28, v14

    iget-wide v13, v9, Lcom/zui/gallery/data/LocationClustering$Point;->lngRad:D

    move/from16 v30, v4

    aget-object v4, v5, v11

    move/from16 v32, v2

    move/from16 v31, v3

    iget-wide v2, v4, Lcom/zui/gallery/data/LocationClustering$Point;->latRad:D

    aget-object v4, v5, v11

    move-object/from16 v33, v5

    iget-wide v4, v4, Lcom/zui/gallery/data/LocationClustering$Point;->lngRad:D

    move-wide/from16 v19, v0

    move-wide/from16 v21, v13

    move-wide/from16 v23, v2

    move-wide/from16 v25, v4

    invoke-static/range {v19 .. v26}, Lcom/zui/gallery/util/GalleryUtils;->fastDistanceMeters(DDDD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    cmpg-float v1, v0, v16

    if-gez v1, :cond_4

    move/from16 v16, v0

    move v12, v11

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v14, v28

    move/from16 v13, v29

    move/from16 v4, v30

    move/from16 v3, v31

    move/from16 v2, v32

    move-object/from16 v5, v33

    goto :goto_6

    :cond_5
    move/from16 v27, v1

    move/from16 v32, v2

    move/from16 v31, v3

    move/from16 v30, v4

    move-object/from16 v33, v5

    move/from16 v29, v13

    move/from16 v28, v14

    .line 271
    aput v12, v8, v10

    .line 272
    aget v0, v7, v12

    const/4 v1, 0x1

    add-int/2addr v0, v1

    aput v0, v7, v12

    .line 273
    aget-object v0, v6, v12

    iget-wide v2, v0, Lcom/zui/gallery/data/LocationClustering$Point;->latRad:D

    iget-wide v4, v9, Lcom/zui/gallery/data/LocationClustering$Point;->latRad:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/zui/gallery/data/LocationClustering$Point;->latRad:D

    .line 274
    aget-object v0, v6, v12

    iget-wide v2, v0, Lcom/zui/gallery/data/LocationClustering$Point;->lngRad:D

    iget-wide v4, v9, Lcom/zui/gallery/data/LocationClustering$Point;->lngRad:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/zui/gallery/data/LocationClustering$Point;->lngRad:D

    add-float v15, v15, v16

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v4, v30

    move/from16 v3, v31

    move/from16 v2, v32

    move-object/from16 v5, v33

    goto/16 :goto_5

    :cond_6
    move/from16 v27, v1

    move/from16 v32, v2

    move/from16 v30, v4

    move-object/from16 v33, v5

    move/from16 v29, v13

    move/from16 v28, v14

    const/4 v1, 0x1

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v3, :cond_8

    .line 280
    aget v0, v7, v10

    if-lez v0, :cond_7

    .line 281
    aget-object v0, v33, v10

    aget-object v2, v6, v10

    iget-wide v4, v2, Lcom/zui/gallery/data/LocationClustering$Point;->latRad:D

    aget v2, v7, v10

    int-to-double v11, v2

    div-double/2addr v4, v11

    iput-wide v4, v0, Lcom/zui/gallery/data/LocationClustering$Point;->latRad:D

    .line 282
    aget-object v0, v33, v10

    aget-object v2, v6, v10

    iget-wide v4, v2, Lcom/zui/gallery/data/LocationClustering$Point;->lngRad:D

    aget v2, v7, v10

    int-to-double v11, v2

    div-double/2addr v4, v11

    iput-wide v4, v0, Lcom/zui/gallery/data/LocationClustering$Point;->lngRad:D

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    cmpl-float v2, v15, v0

    if-eqz v2, :cond_b

    sub-float v13, v29, v15

    .line 286
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v15

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v2, v32, 0x1

    move-object/from16 v0, p0

    move v13, v15

    move/from16 v1, v27

    move/from16 v14, v28

    move/from16 v4, v30

    move-object/from16 v5, v33

    goto/16 :goto_3

    :cond_a
    move/from16 v27, v1

    move/from16 v30, v4

    move-object/from16 v33, v5

    move/from16 v29, v13

    move/from16 v28, v14

    const/4 v1, 0x1

    .line 294
    :cond_b
    :goto_8
    new-array v0, v3, [I

    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v3, :cond_d

    .line 297
    aget v4, v7, v10

    if-lez v4, :cond_c

    add-int/lit8 v4, v2, 0x1

    .line 298
    aput v2, v0, v10

    move v2, v4

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_d
    int-to-double v4, v2

    .line 303
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v15

    cmpg-float v5, v4, v28

    if-gez v5, :cond_10

    const/4 v10, 0x0

    .line 307
    aput v2, p1, v10

    move v2, v10

    move/from16 v5, v27

    :goto_a
    if-ge v2, v5, :cond_e

    .line 309
    aget v9, v8, v2

    aget v9, v0, v9

    aput v9, v18, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_e
    const/4 v2, 0x0

    cmpl-float v0, v4, v2

    if-nez v0, :cond_f

    goto :goto_c

    :cond_f
    move v14, v4

    goto :goto_b

    :cond_10
    move/from16 v5, v27

    const/4 v2, 0x0

    const/4 v10, 0x0

    move/from16 v14, v28

    :goto_b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move v2, v1

    move v1, v5

    move v9, v10

    move-object/from16 v10, v18

    move/from16 v13, v29

    move/from16 v4, v30

    move-object/from16 v5, v33

    goto/16 :goto_1

    :cond_11
    move-object/from16 v18, v10

    :goto_c
    return-object v18
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

    .line 191
    iget-object v0, p0, Lcom/zui/gallery/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 194
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/LocationClustering$SmallItem;

    iget-object v3, v3, Lcom/zui/gallery/data/LocationClustering$SmallItem;->path:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/zui/gallery/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNumberOfClusters()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/zui/gallery/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run(Lcom/zui/gallery/data/MediaSet;)V
    .locals 12

    .line 71
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    .line 72
    new-array v1, v0, [Lcom/zui/gallery/data/LocationClustering$SmallItem;

    const/4 v2, 0x2

    new-array v2, v2, [D

    .line 75
    new-instance v3, Lcom/zui/gallery/data/LocationClustering$1;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/zui/gallery/data/LocationClustering$1;-><init>(Lcom/zui/gallery/data/LocationClustering;I[D[Lcom/zui/gallery/data/LocationClustering$SmallItem;)V

    invoke-virtual {p1, v3}, Lcom/zui/gallery/data/MediaSet;->enumerateTotalMediaItems(Lcom/zui/gallery/data/MediaSet$ItemConsumer;)V

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_2

    .line 92
    aget-object v6, v1, v5

    if-nez v6, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    iget-wide v7, v6, Lcom/zui/gallery/data/LocationClustering$SmallItem;->lat:D

    iget-wide v9, v6, Lcom/zui/gallery/data/LocationClustering$SmallItem;->lng:D

    invoke-static {v7, v8, v9, v10}, Lcom/zui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 95
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v7, Lcom/zui/gallery/data/LocationClustering$Point;

    iget-wide v8, v6, Lcom/zui/gallery/data/LocationClustering$SmallItem;->lat:D

    iget-wide v10, v6, Lcom/zui/gallery/data/LocationClustering$SmallItem;->lng:D

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/zui/gallery/data/LocationClustering$Point;-><init>(DD)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 102
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x1

    if-lez v1, :cond_4

    .line 107
    new-array v6, v1, [Lcom/zui/gallery/data/LocationClustering$Point;

    .line 108
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/zui/gallery/data/LocationClustering$Point;

    new-array v6, v5, [I

    .line 110
    invoke-static {v3, v6}, Lcom/zui/gallery/data/LocationClustering;->kMeans([Lcom/zui/gallery/data/LocationClustering$Point;[I)[I

    move-result-object v3

    move v7, v4

    .line 112
    :goto_2
    aget v8, v6, v4

    if-ge v7, v8, :cond_3

    .line 113
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_3
    if-ge v6, v1, :cond_4

    .line 117
    aget v7, v3, v6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zui/gallery/data/LocationClustering$SmallItem;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 121
    :cond_4
    new-instance p1, Lcom/zui/gallery/util/ReverseGeocoder;

    iget-object v1, p0, Lcom/zui/gallery/data/LocationClustering;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/zui/gallery/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 126
    invoke-static {v1, p1}, Lcom/zui/gallery/data/LocationClustering;->generateName(Ljava/util/ArrayList;Lcom/zui/gallery/util/ReverseGeocoder;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 128
    iget-object v6, p0, Lcom/zui/gallery/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v3, p0, Lcom/zui/gallery/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 132
    :cond_5
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v4, v5

    goto :goto_4

    .line 137
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 138
    iget-object p1, p0, Lcom/zui/gallery/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zui/gallery/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object p1, p0, Lcom/zui/gallery/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v4, :cond_8

    .line 143
    iget-object p1, p0, Lcom/zui/gallery/data/LocationClustering;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/zui/gallery/data/LocationClustering$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/data/LocationClustering$2;-><init>(Lcom/zui/gallery/data/LocationClustering;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method
