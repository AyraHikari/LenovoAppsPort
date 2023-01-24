.class Lcom/zui/gallery/app/AlbumDataLoader$MySourceListener;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"

# interfaces
.implements Lcom/zui/gallery/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumDataLoader;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/AlbumDataLoader;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumDataLoader$MySourceListener;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/AlbumDataLoader;Lcom/zui/gallery/app/AlbumDataLoader$1;)V
    .locals 0

    .line 278
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumDataLoader$MySourceListener;-><init>(Lcom/zui/gallery/app/AlbumDataLoader;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader$MySourceListener;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumDataLoader;->access$400(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader$MySourceListener;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/zui/gallery/app/AlbumDataLoader;->access$402(Lcom/zui/gallery/app/AlbumDataLoader;I)I

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader$MySourceListener;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumDataLoader;->access$500(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader$MySourceListener;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumDataLoader;->access$500(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->notifyDirty()V

    :cond_1
    return-void
.end method
