.class Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;
.super Ljava/lang/Object;
.source "UploadedTexture.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/glrenderer/UploadedTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BorderKey"
.end annotation


# instance fields
.field public config:Landroid/graphics/Bitmap$Config;

.field public length:I

.field public vertical:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/glrenderer/UploadedTexture$1;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;
    .locals 2

    .line 109
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;->clone()Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 100
    instance-of v0, p1, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 101
    :cond_0
    check-cast p1, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;

    .line 102
    iget-boolean v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;->vertical:Z

    iget-boolean v2, p1, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;->vertical:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;->length:I

    iget p1, p1, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;->length:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;->length:I

    xor-int/2addr v0, v1

    .line 95
    iget-boolean v1, p0, Lcom/zui/gallery/glrenderer/UploadedTexture$BorderKey;->vertical:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    return v0
.end method
