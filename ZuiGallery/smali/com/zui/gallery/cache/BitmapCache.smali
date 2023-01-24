.class public Lcom/zui/gallery/cache/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# static fields
.field private static final SOFT_CACHE_SIZE:I = 0x1e


# instance fields
.field private mBitmapLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/zui/gallery/cache/BitmapCache$1;

    invoke-direct {v0, p0, p1}, Lcom/zui/gallery/cache/BitmapCache$1;-><init>(Lcom/zui/gallery/cache/BitmapCache;I)V

    iput-object v0, p0, Lcom/zui/gallery/cache/BitmapCache;->mBitmapLruCache:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/zui/gallery/cache/BitmapCache;->mBitmapLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public getBitmap(J)Landroid/graphics/Bitmap;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/zui/gallery/cache/BitmapCache;->mBitmapLruCache:Landroid/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public putBitmap(JLandroid/graphics/Bitmap;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/zui/gallery/cache/BitmapCache;->mBitmapLruCache:Landroid/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
