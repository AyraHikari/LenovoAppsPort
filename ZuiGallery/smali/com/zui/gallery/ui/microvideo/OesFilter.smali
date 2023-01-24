.class Lcom/zui/gallery/ui/microvideo/OesFilter;
.super Lcom/zui/gallery/ui/microvideo/AFilter;
.source "VideoView.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 299
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/microvideo/AFilter;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected onBindTexture()V
    .locals 2

    .line 309
    invoke-virtual {p0}, Lcom/zui/gallery/ui/microvideo/OesFilter;->getTextureType()I

    move-result v0

    const v1, 0x84c0

    add-int/2addr v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 310
    invoke-virtual {p0}, Lcom/zui/gallery/ui/microvideo/OesFilter;->getTextureId()I

    move-result v0

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 311
    iget v0, p0, Lcom/zui/gallery/ui/microvideo/OesFilter;->mHTexture:I

    invoke-virtual {p0}, Lcom/zui/gallery/ui/microvideo/OesFilter;->getTextureType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method protected onClear()V
    .locals 0

    return-void
.end method

.method protected onCreate()V
    .locals 2

    const-string/jumbo v0, "shader/oes_base_vertex.sh"

    const-string/jumbo v1, "shader/oes_base_fragment.sh"

    .line 304
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/ui/microvideo/OesFilter;->createProgramByAssetsFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSizeChanged(II)V
    .locals 0

    return-void
.end method
