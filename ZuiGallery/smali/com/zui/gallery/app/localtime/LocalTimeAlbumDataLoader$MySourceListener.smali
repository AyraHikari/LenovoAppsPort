.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$MySourceListener;
.super Ljava/lang/Object;
.source "LocalTimeAlbumDataLoader.java"

# interfaces
.implements Lcom/zui/gallery/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$MySourceListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$1;)V
    .locals 0

    .line 334
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$MySourceListener;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$MySourceListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$MySourceListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$402(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;I)I

    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$MySourceListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$MySourceListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->notifyDirty()V

    :cond_1
    return-void
.end method
