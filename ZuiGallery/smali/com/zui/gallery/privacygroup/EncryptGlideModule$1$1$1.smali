.class Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1$1;
.super Ljava/lang/Object;
.source "EncryptGlideModule.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1;->getResourceFetcher(Lcom/zui/gallery/privacygroup/DecryptFile;II)Lcom/bumptech/glide/load/data/DataFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private stream:Ljava/io/InputStream;

.field final synthetic this$2:Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1;

.field final synthetic val$model:Lcom/zui/gallery/privacygroup/DecryptFile;


# direct methods
.method constructor <init>(Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1;Lcom/zui/gallery/privacygroup/DecryptFile;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1$1;->this$2:Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1;

    iput-object p2, p0, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1$1;->val$model:Lcom/zui/gallery/privacygroup/DecryptFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1$1;->stream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1$1;->stream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1$1;->cancel()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1$1;->val$model:Lcom/zui/gallery/privacygroup/DecryptFile;

    iget-object v0, v0, Lcom/zui/gallery/privacygroup/DecryptFile;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "model.filePath is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1$1;->val$model:Lcom/zui/gallery/privacygroup/DecryptFile;

    iget-object v0, v0, Lcom/zui/gallery/privacygroup/DecryptFile;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "wangcanglide"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p1, p0, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1$1;->val$model:Lcom/zui/gallery/privacygroup/DecryptFile;

    iget-boolean p1, p1, Lcom/zui/gallery/privacygroup/DecryptFile;->isVideo:Z

    if-eqz p1, :cond_0

    .line 51
    new-instance p1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 52
    new-instance v0, Lcom/zui/gallery/banner/NewVideoDataSource;

    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1$1;->val$model:Lcom/zui/gallery/privacygroup/DecryptFile;

    iget-object v2, v2, Lcom/zui/gallery/privacygroup/DecryptFile;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->decrptFileTostream(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/gallery/banner/NewVideoDataSource;-><init>(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtIndex(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 55
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 57
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1$1;->stream:Ljava/io/InputStream;

    .line 58
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 59
    iget-object p1, p0, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1$1;->stream:Ljava/io/InputStream;

    return-object p1

    .line 61
    :cond_0
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1$1;->val$model:Lcom/zui/gallery/privacygroup/DecryptFile;

    iget-object v0, v0, Lcom/zui/gallery/privacygroup/DecryptFile;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->decrptFileToStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1$1;->loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
