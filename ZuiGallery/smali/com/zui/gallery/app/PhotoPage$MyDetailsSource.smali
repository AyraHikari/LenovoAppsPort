.class Lcom/zui/gallery/app/PhotoPage$MyDetailsSource;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 3175
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$MyDetailsSource;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/app/PhotoPage$1;)V
    .locals 0

    .line 3175
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage$MyDetailsSource;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    return-void
.end method


# virtual methods
.method public getDetails()Lcom/zui/gallery/data/MediaDetails;
    .locals 2

    .line 3179
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$MyDetailsSource;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$1800(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/PhotoPage$Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getDetails()Lcom/zui/gallery/data/MediaDetails;

    move-result-object v0

    return-object v0
.end method

.method public setIndex()I
    .locals 1

    .line 3189
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$MyDetailsSource;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$1800(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/PhotoPage$Model;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 3184
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$MyDetailsSource;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$1600(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/FilterDeleteSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$MyDetailsSource;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$1600(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/FilterDeleteSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
