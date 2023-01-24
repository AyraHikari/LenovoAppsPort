.class public Lcom/zui/gallery/app/SlideshowPage$Slide;
.super Ljava/lang/Object;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Slide"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public index:I

.field public item:Lcom/zui/gallery/data/MediaItem;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/MediaItem;ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p3, p0, Lcom/zui/gallery/app/SlideshowPage$Slide;->bitmap:Landroid/graphics/Bitmap;

    .line 75
    iput-object p1, p0, Lcom/zui/gallery/app/SlideshowPage$Slide;->item:Lcom/zui/gallery/data/MediaItem;

    .line 76
    iput p2, p0, Lcom/zui/gallery/app/SlideshowPage$Slide;->index:I

    return-void
.end method
