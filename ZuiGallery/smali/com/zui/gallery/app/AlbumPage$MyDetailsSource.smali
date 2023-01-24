.class Lcom/zui/gallery/app/AlbumPage$MyDetailsSource;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/zui/gallery/app/AlbumPage;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/AlbumPage;)V
    .locals 0

    .line 1220
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$MyDetailsSource;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetails()Lcom/zui/gallery/data/MediaDetails;
    .locals 3

    .line 1238
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$MyDetailsSource;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$100(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/app/AlbumDataLoader;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/app/AlbumPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AlbumDataLoader;->get(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1240
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage$MyDetailsSource;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/AlbumPage;->access$300(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/AlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaObject;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/zui/gallery/data/Path;)V

    .line 1241
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaObject;->getDetails()Lcom/zui/gallery/data/MediaDetails;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIndex()I
    .locals 2

    .line 1230
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$MyDetailsSource;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/Path;

    .line 1231
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage$MyDetailsSource;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/AlbumPage;->access$100(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/app/AlbumDataLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/gallery/app/AlbumDataLoader;->findItem(Lcom/zui/gallery/data/Path;)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/AlbumPage$MyDetailsSource;->mIndex:I

    return v0
.end method

.method public size()I
    .locals 1

    .line 1225
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$MyDetailsSource;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$100(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/app/AlbumDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumDataLoader;->size()I

    move-result v0

    return v0
.end method
