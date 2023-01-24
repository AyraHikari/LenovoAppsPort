.class Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEntry"
.end annotation


# instance fields
.field public failToLoad:Z

.field public fullImage:Landroid/graphics/BitmapRegionDecoder;

.field public fullImageTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field public requestedFullImage:J

.field public requestedScreenNail:J

.field public screenNail:Lcom/zui/gallery/ui/ScreenNail;

.field public screenNailTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Lcom/zui/gallery/ui/ScreenNail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 1161
    iput-wide v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 1162
    iput-wide v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    const/4 v0, 0x0

    .line 1163
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/PhotoDataAdapter$1;)V
    .locals 0

    .line 1156
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;-><init>()V

    return-void
.end method
