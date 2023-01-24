.class Lcom/zui/gallery/privacygroup/EncryptGlideModule$1;
.super Ljava/lang/Object;
.source "EncryptGlideModule.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/privacygroup/EncryptGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Lcom/zui/gallery/privacygroup/DecryptFile;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/privacygroup/EncryptGlideModule;


# direct methods
.method constructor <init>(Lcom/zui/gallery/privacygroup/EncryptGlideModule;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1;->this$0:Lcom/zui/gallery/privacygroup/EncryptGlideModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/GenericLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/zui/gallery/privacygroup/DecryptFile;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance p1, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1;

    invoke-direct {p1, p0}, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1$1;-><init>(Lcom/zui/gallery/privacygroup/EncryptGlideModule$1;)V

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
