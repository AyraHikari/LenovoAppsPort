.class public Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;
.super Ljava/lang/Object;
.source "CacheProcessing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "CacheProcessing"

.field private static final NO_CACHING:Z = false


# instance fields
.field private mSteps:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->mSteps:Ljava/util/Vector;

    return-void
.end method

.method private displayFilters(Ljava/util/Vector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CacheProcessing"

    const-string v1, "------>>> Filters received"

    .line 288
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 289
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 290
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "<<<------"

    .line 293
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private displayNbBitmapsInCache()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 311
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->mSteps:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 312
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->mSteps:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;

    .line 313
    iget-object v2, v2, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->cache:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nb bitmaps in cache: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->mSteps:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CacheProcessing"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private displaySteps(Ljava/util/Vector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CacheProcessing"

    const-string v1, "------>>>"

    .line 297
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 298
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 299
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;

    .line 300
    iget-object v3, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->mSteps:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;

    .line 301
    invoke-virtual {v3, v2}, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->equals(Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;)Z

    move-result v2

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " similar rep ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    const-string v2, "YES"

    goto :goto_1

    :cond_0
    const-string v2, "NO"

    .line 303
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -- bitmap: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "<<<------"

    .line 306
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public contains(Landroid/graphics/Bitmap;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 279
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->mSteps:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->mSteps:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;

    iget-object v2, v2, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->cache:Landroid/graphics/Bitmap;

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public process(Landroid/graphics/Bitmap;Ljava/util/Vector;Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;",
            "Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 149
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 p2, 0xb

    .line 150
    invoke-virtual {p3, p1, p2}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getBitmapCopy(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 153
    :cond_0
    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getBimapCache()Lcom/zui/gallery/filtershow/cache/BitmapCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->setCacheProcessing(Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;)V

    .line 158
    invoke-static {p2}, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->buildSteps(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object p2

    .line 160
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->mSteps:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 161
    iput-object p2, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->mSteps:Ljava/util/Vector;

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    move v3, v0

    move v5, v1

    move v4, v2

    .line 172
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 173
    invoke-virtual {p2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;

    .line 174
    iget-object v7, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->mSteps:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;

    if-eqz v5, :cond_2

    .line 176
    invoke-virtual {v6, v7}, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->equals(Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;)Z

    move-result v5

    :cond_2
    if-eqz v5, :cond_3

    move v4, v3

    goto :goto_1

    .line 181
    :cond_3
    iget-object v8, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->mSteps:Ljava/util/Vector;

    invoke-virtual {v8, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 182
    iget-object v8, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->mSteps:Ljava/util/Vector;

    invoke-virtual {v8, v6, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 183
    iget-object v6, v7, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v6}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->cache(Landroid/graphics/Bitmap;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    if-le v4, v2, :cond_6

    move v3, v4

    :goto_2
    if-lez v3, :cond_5

    .line 194
    iget-object v5, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->mSteps:Ljava/util/Vector;

    .line 195
    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;

    iget-object v5, v5, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->cache:Landroid/graphics/Bitmap;

    if-nez v5, :cond_5

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 198
    :cond_5
    iget-object v5, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->mSteps:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;

    iget-object v5, v5, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->cache:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_6
    move-object v5, p2

    move v3, v4

    :goto_3
    move-object v6, p2

    move v7, v2

    .line 222
    :goto_4
    iget-object v8, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->mSteps:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v3, v8, :cond_a

    if-eq v3, v2, :cond_7

    if-nez v5, :cond_8

    :cond_7
    const/16 v5, 0xc

    .line 224
    invoke-virtual {p3, p1, v5}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getBitmapCopy(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v6, v5

    if-ne v3, v2, :cond_8

    goto :goto_5

    .line 237
    :cond_8
    iget-object v8, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->mSteps:Ljava/util/Vector;

    invoke-virtual {v8, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;

    .line 238
    iget-object v9, v8, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->cache:Landroid/graphics/Bitmap;

    if-nez v9, :cond_9

    .line 243
    invoke-virtual {p3, v5, v1}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getBitmapCopy(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 244
    invoke-virtual {v8, p3, v5}, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->apply(Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 245
    iput-object v5, v8, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->cache:Landroid/graphics/Bitmap;

    move v7, v3

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 249
    :cond_a
    invoke-virtual {p3, v6}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->cache(Landroid/graphics/Bitmap;)V

    :goto_6
    if-ge v0, v4, :cond_b

    .line 258
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->mSteps:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;

    .line 259
    iget-object v1, p1, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->cache:Landroid/graphics/Bitmap;

    .line 260
    iput-object p2, p1, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->cache:Landroid/graphics/Bitmap;

    .line 261
    invoke-virtual {p3, v1}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->cache(Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    if-eq v7, v2, :cond_c

    .line 270
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->mSteps:Ljava/util/Vector;

    invoke-virtual {p1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;

    iput-object p2, p1, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing$CacheStep;->cache:Landroid/graphics/Bitmap;

    .line 272
    :cond_c
    invoke-virtual {p0, v5}, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->contains(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/16 p1, 0xd

    .line 273
    invoke-virtual {p3, v5, p1}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getBitmapCopy(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_d
    return-object v5
.end method
