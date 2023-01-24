.class Lcom/zui/gallery/app/AlbumSetDataLoader$MySourceListener;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"

# interfaces
.implements Lcom/zui/gallery/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/AlbumSetDataLoader;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$MySourceListener;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/AlbumSetDataLoader;Lcom/zui/gallery/app/AlbumSetDataLoader$1;)V
    .locals 0

    .line 286
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader$MySourceListener;-><init>(Lcom/zui/gallery/app/AlbumSetDataLoader;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 3

    .line 289
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedSwitch"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$MySourceListener;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$300(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$MySourceListener;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$300(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->notifyDirty()V

    :cond_0
    return-void
.end method
