.class public Lcom/zui/gallery/filtershow/cache/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/cache/BitmapCache$BitmapTracking;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FILTERS:I = 0x4

.field public static final GEOMETRY:I = 0x5

.field public static final HIGHRES:I = 0x6

.field public static final ICON:I = 0x3

.field private static final LOGTAG:Ljava/lang/String; = "BitmapCache"

.field public static final NEW_LOOK:I = 0x2

.field public static final PREVIEW_CACHE:I = 0x1

.field public static final PREVIEW_CACHE_NO_APPLY:I = 0xd

.field public static final PREVIEW_CACHE_NO_FILTERS:I = 0xb

.field public static final PREVIEW_CACHE_NO_ROOT:I = 0xc

.field public static final REGION:I = 0x9

.field public static final RENDERING_REQUEST:I = 0x8

.field public static final TINY_PLANET:I = 0xa

.field public static final TRACKING_COUNT:I = 0xe

.field public static final UTIL_GEOMETRY:I = 0x7


# instance fields
.field private mBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mBitmapTracking:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/cache/BitmapCache$BitmapTracking;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheProcessing:Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;

.field private final mMaxItemsPerKey:I

.field private mTracking:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mBitmapCache:Ljava/util/HashMap;

    const/4 v0, 0x4

    .line 40
    iput v0, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mMaxItemsPerKey:I

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 59
    iput-object v0, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mTracking:[I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mBitmapTracking:Ljava/util/ArrayList;

    return-void
.end method

.method private calcKey(JJ)Ljava/lang/Long;
    .locals 1

    const/16 v0, 0x20

    shl-long/2addr p1, v0

    or-long/2addr p1, p3

    .line 239
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private track(Landroid/graphics/Bitmap;I)V
    .locals 3

    const/4 v0, 0x0

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mBitmapTracking:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mBitmapTracking:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/cache/BitmapCache$BitmapTracking;

    .line 71
    iget-object v1, v1, Lcom/zui/gallery/filtershow/cache/BitmapCache$BitmapTracking;->bitmap:Landroid/graphics/Bitmap;

    if-ne v1, p1, :cond_0

    const-string v1, "BitmapCache"

    const-string v2, "giving a bitmap already given!!!"

    .line 72
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Lcom/zui/gallery/filtershow/cache/BitmapCache$BitmapTracking;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/cache/BitmapCache$BitmapTracking;-><init>(Lcom/zui/gallery/filtershow/cache/BitmapCache;)V

    .line 76
    iput-object p1, v0, Lcom/zui/gallery/filtershow/cache/BitmapCache$BitmapTracking;->bitmap:Landroid/graphics/Bitmap;

    .line 77
    iput p2, v0, Lcom/zui/gallery/filtershow/cache/BitmapCache$BitmapTracking;->type:I

    .line 78
    iget-object p1, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mBitmapTracking:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object p1, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mTracking:[I

    iget p2, v0, Lcom/zui/gallery/filtershow/cache/BitmapCache$BitmapTracking;->type:I

    aget v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, p2

    return-void
.end method

.method private untrack(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x0

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mBitmapTracking:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mBitmapTracking:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/cache/BitmapCache$BitmapTracking;

    .line 85
    iget-object v2, v1, Lcom/zui/gallery/filtershow/cache/BitmapCache$BitmapTracking;->bitmap:Landroid/graphics/Bitmap;

    if-ne v2, p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mTracking:[I

    iget v1, v1, Lcom/zui/gallery/filtershow/cache/BitmapCache$BitmapTracking;->type:I

    aget v2, p1, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v1

    .line 87
    iget-object p1, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mBitmapTracking:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public cache(Lcom/zui/gallery/filtershow/pipeline/Buffer;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/Buffer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->cache(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method public declared-synchronized cache(Landroid/graphics/Bitmap;)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 138
    monitor-exit p0

    return v0

    .line 140
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mCacheProcessing:Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mCacheProcessing:Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->contains(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "BitmapCache"

    const-string v0, "Trying to cache a bitmap still used in the pipeline"

    .line 141
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return v2

    .line 147
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "BitmapCache"

    const-string v1, "Trying to cache a non mutable bitmap"

    .line 148
    invoke-static {p1, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    monitor-exit p0

    return v0

    .line 151
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-long v5, v1

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->calcKey(JJ)Ljava/lang/Long;

    move-result-object v1

    .line 152
    iget-object v3, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 155
    iget-object v4, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v1, v2

    .line 158
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 159
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    .line 160
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move v1, v2

    .line 165
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 166
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    .line 167
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 170
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x4

    if-ge v1, v4, :cond_a

    .line 171
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    .line 172
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 173
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v1, p1, :cond_8

    .line 174
    monitor-exit p0

    return v0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 177
    :cond_9
    :try_start_3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    :cond_a
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBitmap(III)Landroid/graphics/Bitmap;
    .locals 4

    monitor-enter p0

    int-to-long v0, p1

    int-to-long v2, p2

    .line 183
    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->calcKey(JJ)Ljava/lang/Long;

    move-result-object p3

    .line 185
    iget-object v0, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 187
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 188
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 194
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Landroid/graphics/Bitmap;

    :cond_2
    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    if-ne p3, p1, :cond_3

    .line 198
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    if-eq p3, p2, :cond_4

    .line 199
    :cond_3
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 201
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->showBitmapCounts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBitmapCopy(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3

    monitor-enter p0

    .line 231
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 232
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 233
    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTrackingName(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "UNKNOWN"

    return-object p1

    :pswitch_0
    const-string p1, "PREVIEW_CACHE_NO_APPLY"

    return-object p1

    :pswitch_1
    const-string p1, "PREVIEW_CACHE_NO_ROOT"

    return-object p1

    :pswitch_2
    const-string p1, "PREVIEW_CACHE_NO_FILTERS"

    return-object p1

    :pswitch_3
    const-string p1, "TINY_PLANET"

    return-object p1

    :pswitch_4
    const-string p1, "REGION"

    return-object p1

    :pswitch_5
    const-string p1, "RENDERING_REQUEST"

    return-object p1

    :pswitch_6
    const-string p1, "UTIL_GEOMETRY"

    return-object p1

    :pswitch_7
    const-string p1, "HIGHRES"

    return-object p1

    :pswitch_8
    const-string p1, "GEOMETRY"

    return-object p1

    :pswitch_9
    const-string p1, "FILTERS"

    return-object p1

    :pswitch_a
    const-string p1, "ICON"

    return-object p1

    :pswitch_b
    const-string p1, "NEW_LOOK"

    return-object p1

    :pswitch_c
    const-string p1, "PREVIEW_CACHE"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCacheProcessing(Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/zui/gallery/filtershow/cache/BitmapCache;->mCacheProcessing:Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;

    return-void
.end method

.method public showBitmapCounts()V
    .locals 0

    return-void
.end method
