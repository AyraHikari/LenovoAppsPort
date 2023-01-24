.class public Lcom/zui/gallery/ui/PhotoFallbackEffect$Entry;
.super Ljava/lang/Object;
.source "PhotoFallbackEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/PhotoFallbackEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public dest:Landroid/graphics/Rect;

.field public index:I

.field public path:Lcom/zui/gallery/data/Path;

.field public source:Landroid/graphics/Rect;

.field public texture:Lcom/zui/gallery/glrenderer/RawTexture;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;Landroid/graphics/Rect;Lcom/zui/gallery/glrenderer/RawTexture;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/zui/gallery/ui/PhotoFallbackEffect$Entry;->path:Lcom/zui/gallery/data/Path;

    .line 46
    iput-object p2, p0, Lcom/zui/gallery/ui/PhotoFallbackEffect$Entry;->source:Landroid/graphics/Rect;

    .line 47
    iput-object p3, p0, Lcom/zui/gallery/ui/PhotoFallbackEffect$Entry;->texture:Lcom/zui/gallery/glrenderer/RawTexture;

    return-void
.end method
