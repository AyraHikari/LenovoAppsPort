.class Lcom/zui/gallery/ui/AlbumSlidingWindow$PanoSupportListener;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoSupportListener"
.end annotation


# instance fields
.field public final mEntry:Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

.field final synthetic this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/AlbumSlidingWindow;Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$PanoSupportListener;->this$0:Lcom/zui/gallery/ui/AlbumSlidingWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$PanoSupportListener;->mEntry:Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    return-void
.end method


# virtual methods
.method public panoramaInfoAvailable(Lcom/zui/gallery/data/MediaObject;ZZ)V
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow$PanoSupportListener;->mEntry:Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    if-eqz p1, :cond_0

    .line 131
    iput-boolean p2, p1, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->isPanorama:Z

    :cond_0
    return-void
.end method
