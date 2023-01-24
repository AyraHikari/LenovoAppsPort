.class Lcom/zui/gallery/app/PhotoPage$3$1;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/PhotoPage$3;->onPhotoChanged(ILcom/zui/gallery/data/Path;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/PhotoPage$3;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PhotoPage$3;)V
    .locals 0

    .line 786
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$3$1;->this$1:Lcom/zui/gallery/app/PhotoPage$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "here photoid is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage$3$1;->this$1:Lcom/zui/gallery/app/PhotoPage$3;

    iget-object v1, v1, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " & cloudPhotoId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage$3$1;->this$1:Lcom/zui/gallery/app/PhotoPage$3;

    iget-object v1, v1, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoPage;->access$2900(Lcom/zui/gallery/app/PhotoPage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangcancloud"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$3$1;->this$1:Lcom/zui/gallery/app/PhotoPage$3;

    iget-object v0, v0, Lcom/zui/gallery/app/PhotoPage$3;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$3000(Lcom/zui/gallery/app/PhotoPage;)V

    return-void
.end method
