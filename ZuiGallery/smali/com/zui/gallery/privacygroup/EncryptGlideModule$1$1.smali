.class Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1;
.super Ljava/lang/Object;
.source "EncryptGlideModule.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/privacygroup/EncryptGlideModule$1;->build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/stream/StreamModelLoader<",
        "Lcom/zui/gallery/privacygroup/DecryptFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/privacygroup/EncryptGlideModule$1;


# direct methods
.method constructor <init>(Lcom/zui/gallery/privacygroup/EncryptGlideModule$1;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1;->this$1:Lcom/zui/gallery/privacygroup/EncryptGlideModule$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResourceFetcher(Lcom/zui/gallery/privacygroup/DecryptFile;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/privacygroup/DecryptFile;",
            "II)",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance p2, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1$1;

    invoke-direct {p2, p0, p1}, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1$1;-><init>(Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1;Lcom/zui/gallery/privacygroup/DecryptFile;)V

    return-object p2
.end method

.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 0

    .line 40
    check-cast p1, Lcom/zui/gallery/privacygroup/DecryptFile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1;->getResourceFetcher(Lcom/zui/gallery/privacygroup/DecryptFile;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object p1

    return-object p1
.end method
