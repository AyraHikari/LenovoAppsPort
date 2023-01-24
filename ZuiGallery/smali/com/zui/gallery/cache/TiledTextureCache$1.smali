.class Lcom/zui/gallery/cache/TiledTextureCache$1;
.super Landroid/util/LruCache;
.source "TiledTextureCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/cache/TiledTextureCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/Long;",
        "Lcom/zui/gallery/glrenderer/TiledTexture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/cache/TiledTextureCache;


# direct methods
.method constructor <init>(Lcom/zui/gallery/cache/TiledTextureCache;I)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/zui/gallery/cache/TiledTextureCache$1;->this$0:Lcom/zui/gallery/cache/TiledTextureCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Long;Lcom/zui/gallery/glrenderer/TiledTexture;Lcom/zui/gallery/glrenderer/TiledTexture;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Ljava/lang/Long;

    check-cast p3, Lcom/zui/gallery/glrenderer/TiledTexture;

    check-cast p4, Lcom/zui/gallery/glrenderer/TiledTexture;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zui/gallery/cache/TiledTextureCache$1;->entryRemoved(ZLjava/lang/Long;Lcom/zui/gallery/glrenderer/TiledTexture;Lcom/zui/gallery/glrenderer/TiledTexture;)V

    return-void
.end method

.method protected sizeOf(Ljava/lang/Long;Lcom/zui/gallery/glrenderer/TiledTexture;)I
    .locals 0

    const/16 p1, 0x400

    return p1
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Lcom/zui/gallery/glrenderer/TiledTexture;

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/cache/TiledTextureCache$1;->sizeOf(Ljava/lang/Long;Lcom/zui/gallery/glrenderer/TiledTexture;)I

    move-result p1

    return p1
.end method
