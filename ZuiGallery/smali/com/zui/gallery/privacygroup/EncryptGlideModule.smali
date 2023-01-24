.class public Lcom/zui/gallery/privacygroup/EncryptGlideModule;
.super Ljava/lang/Object;
.source "EncryptGlideModule.java"

# interfaces
.implements Lcom/bumptech/glide/module/GlideModule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 0

    return-void
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;)V
    .locals 2

    .line 37
    const-class p1, Lcom/zui/gallery/privacygroup/DecryptFile;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/privacygroup/EncryptGlideModule$1;-><init>(Lcom/zui/gallery/privacygroup/EncryptGlideModule;)V

    invoke-virtual {p2, p1, v0, v1}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    return-void
.end method
