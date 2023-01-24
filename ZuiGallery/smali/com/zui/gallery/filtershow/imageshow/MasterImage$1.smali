.class Lcom/zui/gallery/filtershow/imageshow/MasterImage$1;
.super Ljava/lang/Object;
.source "MasterImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/imageshow/MasterImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/imageshow/MasterImage;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoadListeners.size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->access$000(Lcom/zui/gallery/filtershow/imageshow/MasterImage;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wwww_oom"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 276
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->access$000(Lcom/zui/gallery/filtershow/imageshow/MasterImage;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->access$000(Lcom/zui/gallery/filtershow/imageshow/MasterImage;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    .line 278
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->imageLoaded()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/MasterImage$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->invalidatePreview()V

    return-void
.end method
