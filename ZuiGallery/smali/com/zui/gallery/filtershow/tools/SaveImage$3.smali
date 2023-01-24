.class Lcom/zui/gallery/filtershow/tools/SaveImage$3;
.super Ljava/lang/Object;
.source "SaveImage.java"

# interfaces
.implements Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListnerForSave;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/tools/SaveImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/tools/SaveImage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/tools/SaveImage;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/zui/gallery/filtershow/tools/SaveImage$3;->this$0:Lcom/zui/gallery/filtershow/tools/SaveImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecryptSccess()V
    .locals 0

    return-void
.end method

.method public onEncryptFail()V
    .locals 2

    const-string/jumbo v0, "wcccc"

    const-string v1, "onEncryptFail is called"

    .line 604
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEncryptSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onEncryptSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 592
    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/SaveImage$3;->this$0:Lcom/zui/gallery/filtershow/tools/SaveImage;

    invoke-static {v0, p1, p2}, Lcom/zui/gallery/filtershow/tools/SaveImage;->access$000(Lcom/zui/gallery/filtershow/tools/SaveImage;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/zui/gallery/filtershow/tools/SaveImage$3;->this$0:Lcom/zui/gallery/filtershow/tools/SaveImage;

    invoke-static {p2}, Lcom/zui/gallery/filtershow/tools/SaveImage;->access$100(Lcom/zui/gallery/filtershow/tools/SaveImage;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 595
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "after encryp, filepath is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/tools/SaveImage$3;->this$0:Lcom/zui/gallery/filtershow/tools/SaveImage;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/tools/SaveImage;->access$100(Lcom/zui/gallery/filtershow/tools/SaveImage;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " & exists is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "wcccc"

    invoke-static {v0, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 597
    iget-object p2, p0, Lcom/zui/gallery/filtershow/tools/SaveImage$3;->this$0:Lcom/zui/gallery/filtershow/tools/SaveImage;

    invoke-static {p2}, Lcom/zui/gallery/filtershow/tools/SaveImage;->access$200(Lcom/zui/gallery/filtershow/tools/SaveImage;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file.exists is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " & deleteResult is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
