.class Lcom/zui/gallery/ui/PhotoView$FullPicture;
.super Lcom/zui/gallery/ui/PhotoView$PictureDecorator;
.source "PhotoView.java"

# interfaces
.implements Lcom/zui/gallery/ui/PhotoView$Picture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullPicture"
.end annotation


# instance fields
.field private isHdrPhoto:Z

.field private mCameraVideoHDR:Z

.field private mContinuousCount:I

.field private mIsCamera:Z

.field private mIsContinuousShot:Z

.field private mIsDeletable:Z

.field private mIsDepthImage:Z

.field private mIsPanoramaPhoto:Z

.field private mIsPanoramaVideo:Z

.field private mIsSlowVideo:Z

.field private mIsStaticCamera:Z

.field private mIsVideo:Z

.field private mLoadingState:I

.field private mMicroViewImage:Z

.field private mMult:I

.field private mRotation:I

.field private mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

.field private mScreenNailSize:Lcom/zui/gallery/ui/PhotoView$Size;

.field private mSize:Lcom/zui/gallery/ui/PhotoView$Size;

.field final synthetic this$0:Lcom/zui/gallery/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/PhotoView;)V
    .locals 0

    .line 925
    iput-object p1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PhotoView$PictureDecorator;-><init>(Lcom/zui/gallery/ui/PhotoView;)V

    const/4 p1, 0x0

    .line 935
    iput p1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mLoadingState:I

    .line 936
    new-instance p1, Lcom/zui/gallery/ui/PhotoView$Size;

    invoke-direct {p1}, Lcom/zui/gallery/ui/PhotoView$Size;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mSize:Lcom/zui/gallery/ui/PhotoView$Size;

    .line 937
    new-instance p1, Lcom/zui/gallery/ui/PhotoView$Size;

    invoke-direct {p1}, Lcom/zui/gallery/ui/PhotoView$Size;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNailSize:Lcom/zui/gallery/ui/PhotoView$Size;

    return-void
.end method

.method static synthetic access$4700(Lcom/zui/gallery/ui/PhotoView$FullPicture;)Lcom/zui/gallery/ui/PhotoView$Size;
    .locals 0

    .line 925
    iget-object p0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNailSize:Lcom/zui/gallery/ui/PhotoView$Size;

    return-object p0
.end method

.method private drawTileView(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 8

    .line 1134
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$300(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->getImageScale()F

    move-result v6

    .line 1135
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PhotoView;->getWidth()I

    move-result v4

    .line 1136
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PhotoView;->getHeight()I

    move-result v5

    .line 1138
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    .line 1139
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float p2, p2

    const/4 v7, 0x3

    .line 1141
    invoke-interface {p1, v7}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    move-object v1, p0

    move v2, v0

    move v3, p2

    .line 1144
    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->setTileViewPosition(FFIIF)V

    .line 1145
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$2000(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/TileImageView;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/zui/gallery/ui/PhotoView;->renderChild(Lcom/zui/gallery/glrenderer/GLCanvas;Lcom/zui/gallery/ui/GLView;)V

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v2, v0, v1

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v1, p2

    float-to-int v1, v1

    int-to-float v1, v1

    .line 1148
    invoke-interface {p1, v2, v1}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 1149
    iget v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mLoadingState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1150
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1, p1}, Lcom/zui/gallery/ui/PhotoView;->access$3000(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 1153
    :cond_0
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    .line 1154
    invoke-interface {p1, v7}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 1155
    iget-boolean v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsContinuousShot:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/PhotoView;->isContinuousShotMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/PhotoView;->ismFullScreenBrowse()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1156
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1, p1}, Lcom/zui/gallery/ui/PhotoView;->access$3100(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 1157
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    float-to-int v0, v0

    float-to-int p2, p2

    invoke-static {v1, p1, v0, p2}, Lcom/zui/gallery/ui/PhotoView;->access$3200(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 1159
    :cond_1
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method private setTileViewPosition(FFIIF)V
    .locals 4

    .line 1166
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$300(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->getImageWidth()I

    move-result v0

    .line 1167
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$300(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PositionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/PositionController;->getImageHeight()I

    move-result v1

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float p3, p3

    div-float/2addr p3, v3

    sub-float/2addr p3, p1

    div-float/2addr p3, p5

    add-float/2addr v2, p3

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v2, p1

    float-to-int p3, v2

    int-to-float v2, v1

    div-float/2addr v2, v3

    int-to-float p4, p4

    div-float/2addr p4, v3

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    add-float/2addr v2, p4

    add-float/2addr v2, p1

    float-to-int p1, v2

    sub-int/2addr v0, p3

    sub-int/2addr v1, p1

    .line 1174
    iget p2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mRotation:I

    if-eqz p2, :cond_3

    const/16 p4, 0x5a

    if-eq p2, p4, :cond_2

    const/16 p1, 0xb4

    if-eq p2, p1, :cond_1

    const/16 p1, 0x10e

    if-ne p2, p1, :cond_0

    move p1, p3

    move p3, v1

    goto :goto_0

    .line 1192
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    iget p2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mRotation:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move p3, v0

    move p1, v1

    goto :goto_0

    :cond_2
    move p3, p1

    move p1, v0

    .line 1194
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p2}, Lcom/zui/gallery/ui/PhotoView;->access$2000(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/TileImageView;

    move-result-object p2

    iget p4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mRotation:I

    invoke-virtual {p2, p3, p1, p5, p4}, Lcom/zui/gallery/ui/TileImageView;->setPosition(IIFI)Z

    return-void
.end method

.method private updateSize()V
    .locals 4

    .line 1003
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsStaticCamera:Z

    if-nez v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$2200(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mRotation:I

    goto :goto_0

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mRotation:I

    .line 1009
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$2000(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/TileImageView;

    move-result-object v0

    iget v0, v0, Lcom/zui/gallery/ui/TileImageView;->mImageWidth:I

    .line 1010
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$2000(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/TileImageView;

    move-result-object v1

    iget v1, v1, Lcom/zui/gallery/ui/TileImageView;->mImageHeight:I

    .line 1011
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mSize:Lcom/zui/gallery/ui/PhotoView$Size;

    iget v3, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mRotation:I

    invoke-static {v3, v0, v1}, Lcom/zui/gallery/ui/PhotoView;->access$2300(III)I

    move-result v3

    iput v3, v2, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    .line 1012
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mSize:Lcom/zui/gallery/ui/PhotoView$Size;

    iget v3, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mRotation:I

    invoke-static {v3, v1, v0}, Lcom/zui/gallery/ui/PhotoView;->access$2300(III)I

    move-result v0

    iput v0, v2, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    .line 1013
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    if-eqz v0, :cond_3

    .line 1014
    iget v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mRotation:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 1019
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNailSize:Lcom/zui/gallery/ui/PhotoView$Size;

    invoke-interface {v0}, Lcom/zui/gallery/ui/ScreenNail;->getWidth()I

    move-result v0

    iput v0, v1, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    .line 1020
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNailSize:Lcom/zui/gallery/ui/PhotoView$Size;

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    invoke-interface {v1}, Lcom/zui/gallery/ui/ScreenNail;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    goto :goto_2

    .line 1016
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNailSize:Lcom/zui/gallery/ui/PhotoView$Size;

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    invoke-interface {v1}, Lcom/zui/gallery/ui/ScreenNail;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    .line 1017
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNailSize:Lcom/zui/gallery/ui/PhotoView$Size;

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    invoke-interface {v1}, Lcom/zui/gallery/ui/ScreenNail;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 8

    .line 1028
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 1029
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 1030
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v2}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/zui/gallery/ui/PhotoView$Model;->isSelected(I)Z

    move-result v2

    .line 1031
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->drawTileView(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    .line 1033
    iget-boolean v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsVideo:Z

    if-eqz v4, :cond_1

    .line 1035
    iget-boolean v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mCameraVideoHDR:Z

    if-eqz v4, :cond_0

    .line 1036
    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v4, p1}, Lcom/zui/gallery/ui/PhotoView;->access$2400(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 1039
    :cond_0
    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v4, p1, v0, v1}, Lcom/zui/gallery/ui/PhotoView;->access$2500(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 1046
    :cond_1
    iget-boolean v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsVideo:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->isHdrPhoto:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/PhotoView;->ismFullScreenBrowse()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mMicroViewImage:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsContinuousShot:Z

    if-nez v4, :cond_2

    .line 1047
    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v4, p1}, Lcom/zui/gallery/ui/PhotoView;->access$2600(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 1050
    :cond_2
    iget-boolean v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsPanoramaPhoto:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsPanoramaVideo:Z

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/PhotoView;->ismFullScreenBrowse()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1051
    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v4, p1, v0, v1}, Lcom/zui/gallery/ui/PhotoView;->access$2700(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 1054
    :cond_4
    iget-boolean v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsDepthImage:Z

    if-eqz v4, :cond_5

    .line 1055
    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v4, p1, v0, v1}, Lcom/zui/gallery/ui/PhotoView;->access$2800(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 1057
    :cond_5
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/PhotoView;->isContinuousShotMode()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    .line 1059
    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNailSize:Lcom/zui/gallery/ui/PhotoView$Size;

    const/4 v5, 0x2

    if-eqz v4, :cond_9

    iget v4, v4, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNailSize:Lcom/zui/gallery/ui/PhotoView$Size;

    iget v4, v4, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    if-eqz v4, :cond_9

    .line 1060
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNailSize:Lcom/zui/gallery/ui/PhotoView$Size;

    iget v1, v1, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNailSize:Lcom/zui/gallery/ui/PhotoView$Size;

    iget v4, v4, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    if-le v1, v4, :cond_6

    .line 1061
    sget v1, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_SIZE:I

    goto :goto_0

    .line 1062
    :cond_6
    sget v1, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_SIZE:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNailSize:Lcom/zui/gallery/ui/PhotoView$Size;

    iget v4, v4, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNailSize:Lcom/zui/gallery/ui/PhotoView$Size;

    iget v4, v4, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-int v1, v1

    .line 1063
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1064
    iget-object v6, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v6}, Lcom/zui/gallery/ui/PhotoView;->access$1500(Lcom/zui/gallery/ui/PhotoView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iget-object v7, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v7}, Lcom/zui/gallery/ui/PhotoView;->access$1500(Lcom/zui/gallery/ui/PhotoView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    if-ne v6, v5, :cond_8

    .line 1065
    iput v3, v4, Landroid/graphics/Rect;->left:I

    .line 1066
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenHeight()I

    move-result v6

    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 1067
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenHeight()I

    move-result v6

    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 1068
    iget-object v6, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v6}, Lcom/zui/gallery/ui/PhotoView;->access$1500(Lcom/zui/gallery/ui/PhotoView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1069
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    sget v1, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_BOTTOM_PADDING:I

    mul-int/2addr v1, v5

    sub-int/2addr v6, v1

    iput v6, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 1072
    :cond_7
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    sget v1, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_BOTTOM_PADDING:I

    mul-int/2addr v1, v5

    sub-int/2addr v6, v1

    iput v6, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 1076
    :cond_8
    iput v3, v4, Landroid/graphics/Rect;->left:I

    .line 1077
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenHeight()I

    move-result v6

    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 1078
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenHeight()I

    move-result v6

    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 1079
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    sget v1, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_BOTTOM_PADDING:I

    mul-int/2addr v1, v5

    sub-int/2addr v6, v1

    iput v6, v4, Landroid/graphics/Rect;->top:I

    :goto_1
    move-object v1, v4

    :cond_9
    if-eqz v1, :cond_d

    .line 1089
    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v4}, Lcom/zui/gallery/ui/PhotoView;->access$1800(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result v4

    if-ne v4, v5, :cond_a

    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    .line 1090
    invoke-static {v4}, Lcom/zui/gallery/ui/PhotoView;->access$1500(Lcom/zui/gallery/ui/PhotoView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isNavigationShowing(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mRotation:I

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    goto :goto_2

    :cond_a
    move v4, v3

    .line 1092
    :goto_2
    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, p2

    div-int/2addr v6, v5

    add-int/2addr v0, v6

    iget p2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->SELECT_BUTTON_GAP:I

    sub-int/2addr v0, p2

    if-eqz v4, :cond_b

    iget-object p2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p2}, Lcom/zui/gallery/ui/PhotoView;->access$1500(Lcom/zui/gallery/ui/PhotoView;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    :cond_b
    sub-int/2addr v0, v3

    .line 1093
    iget-object p2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p2}, Lcom/zui/gallery/ui/PhotoView;->access$1500(Lcom/zui/gallery/ui/PhotoView;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1094
    iget p2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->drawButton(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)V

    goto :goto_3

    .line 1096
    :cond_c
    iget p2, v1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->SELECT_BUTTON_GAP:I

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->drawButton(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)V

    .line 1108
    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1}, Lcom/zui/gallery/ui/PhotoView;->access$100(Lcom/zui/gallery/ui/PhotoView;)I

    move-result p1

    and-int/lit8 p1, p1, -0x2

    if-eqz p1, :cond_e

    return-void

    .line 1111
    :cond_e
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1}, Lcom/zui/gallery/ui/PhotoView;->access$2900(Lcom/zui/gallery/ui/PhotoView;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1}, Lcom/zui/gallery/ui/PhotoView;->access$300(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PositionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/PositionController;->isCenter()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1112
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1}, Lcom/zui/gallery/ui/PhotoView;->access$700(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Listener;

    move-result-object p1

    iget-boolean p2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsCamera:Z

    invoke-interface {p1, p2}, Lcom/zui/gallery/ui/PhotoView$Listener;->onPictureCenter(Z)V

    :cond_f
    return-void
.end method

.method public drawThumbnail(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 13

    .line 1200
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 1204
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 1205
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    const/4 v2, 0x3

    .line 1207
    invoke-interface {p1, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    int-to-float v2, v0

    int-to-float v3, v1

    .line 1208
    invoke-interface {p1, v2, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 1209
    iget v2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mRotation:I

    if-eqz v2, :cond_1

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1210
    invoke-interface {p1, v2, v4, v4, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 1213
    :cond_1
    iget v2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mRotation:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/zui/gallery/ui/PhotoView;->access$2300(III)I

    move-result v9

    .line 1214
    iget v2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mRotation:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/zui/gallery/ui/PhotoView;->access$2300(III)I

    move-result v10

    .line 1216
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v2}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/zui/gallery/ui/PhotoView$Model;->getScreenNail(I)Lcom/zui/gallery/ui/ScreenNail;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 1217
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    instance-of v2, v2, Lcom/zui/gallery/ui/TiledScreenNail;

    if-eqz v2, :cond_3

    .line 1218
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v2}, Lcom/zui/gallery/ui/PhotoView;->access$1700(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v2

    if-ne v4, v2, :cond_2

    .line 1219
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    move-object v5, v2

    check-cast v5, Lcom/zui/gallery/ui/TiledScreenNail;

    neg-int v2, v9

    div-int/lit8 v7, v2, 0x2

    neg-int v2, v10

    div-int/lit8 v8, v2, 0x2

    iget v11, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mRotation:I

    iget-object v12, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNailSize:Lcom/zui/gallery/ui/PhotoView$Size;

    move-object v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/zui/gallery/ui/TiledScreenNail;->drawThumbNail(Lcom/zui/gallery/glrenderer/GLCanvas;IIIIILcom/zui/gallery/ui/PhotoView$Size;)V

    goto :goto_0

    .line 1223
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    move-object v5, v2

    check-cast v5, Lcom/zui/gallery/ui/TiledScreenNail;

    neg-int v2, v9

    div-int/lit8 v7, v2, 0x2

    neg-int v2, v10

    div-int/lit8 v8, v2, 0x2

    iget v11, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mRotation:I

    iget-object v12, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNailSize:Lcom/zui/gallery/ui/PhotoView$Size;

    move-object v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/zui/gallery/ui/TiledScreenNail;->drawThumbNail(Lcom/zui/gallery/glrenderer/GLCanvas;IIIIILcom/zui/gallery/ui/PhotoView$Size;)V

    .line 1229
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    .line 1230
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/PhotoView;->isContinuousShotMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1231
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v2}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/zui/gallery/ui/PhotoView$Model;->isSelected(I)Z

    move-result v11

    .line 1232
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v2}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/zui/gallery/ui/PhotoView$Model;->isBestChoice(I)Z

    move-result v2

    .line 1234
    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v3}, Lcom/zui/gallery/ui/PhotoView;->access$1700(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v3

    if-ne v4, v3, :cond_4

    .line 1235
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v7, v0, v3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v8, v1, v3

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int v9, v3, v4

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int v10, v3, p2

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v11}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->drawMaskTexture(Lcom/zui/gallery/glrenderer/GLCanvas;IIIIZ)V

    goto :goto_1

    .line 1241
    :cond_4
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v7, v0, v3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v8, v1, v3

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int v9, v3, v4

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int v10, v3, p2

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v11}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->drawMaskTexture(Lcom/zui/gallery/glrenderer/GLCanvas;IIIIZ)V

    :goto_1
    if-eqz v2, :cond_5

    .line 1249
    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->drawBestChoiceTexture(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    :cond_5
    :goto_2
    return-void
.end method

.method public forceSize()V
    .locals 3

    .line 993
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->updateSize()V

    .line 994
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$300(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PositionController;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mSize:Lcom/zui/gallery/ui/PhotoView$Size;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/ui/PositionController;->forceImageSize(ILcom/zui/gallery/ui/PhotoView$Size;)V

    return-void
.end method

.method public getSize()Lcom/zui/gallery/ui/PhotoView$Size;
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mSize:Lcom/zui/gallery/ui/PhotoView$Size;

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    .line 1124
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsCamera:Z

    return v0
.end method

.method public isDeletable()Z
    .locals 1

    .line 1129
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsDeletable:Z

    return v0
.end method

.method public reload()V
    .locals 4

    .line 949
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsCamera:Z

    .line 950
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isPanorama(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsPanoramaPhoto:Z

    .line 951
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isPanoVideo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsPanoramaVideo:Z

    .line 952
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isStaticCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsStaticCamera:Z

    .line 953
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isVideo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsVideo:Z

    .line 954
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isCameraVideoHDR(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mCameraVideoHDR:Z

    .line 955
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isMicoVideoImage(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mMicroViewImage:Z

    .line 956
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isDeletable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsDeletable:Z

    .line 957
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->getLoadingState(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mLoadingState:I

    .line 958
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->getContinuousCount(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mContinuousCount:I

    .line 960
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isContinuousShot(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsContinuousShot:Z

    .line 962
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isSlowVideo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsSlowVideo:Z

    .line 963
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsContinuousShot:Z

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    iget v2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mContinuousCount:I

    invoke-static {v0, v2}, Lcom/zui/gallery/ui/PhotoView;->access$1900(Lcom/zui/gallery/ui/PhotoView;I)V

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->getScreenNail(I)Lcom/zui/gallery/ui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->setScreenNail(Lcom/zui/gallery/ui/ScreenNail;)V

    .line 968
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$2000(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/TileImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/TileImageView;->notifyModelInvalidated()V

    .line 969
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->updateSize()V

    .line 971
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PhotoView;->isContinuousShotMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mInitButton:Z

    if-nez v0, :cond_1

    .line 972
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->initButton()V

    const/4 v0, 0x1

    .line 973
    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mInitButton:Z

    .line 974
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 975
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->setSelected(ZI)V

    .line 978
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->getMult(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mMult:I

    .line 979
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isHdrPhoto(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->isHdrPhoto:Z

    .line 980
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isDepthImage(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsDepthImage:Z

    .line 983
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    iget-boolean v1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mIsVideo:Z

    iget-boolean v2, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->isHdrPhoto:Z

    iget-boolean v3, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mCameraVideoHDR:Z

    invoke-static {v0, v1, v2, v3}, Lcom/zui/gallery/ui/PhotoView;->access$2100(Lcom/zui/gallery/ui/PhotoView;ZZZ)V

    return-void
.end method

.method public setScreenNail(Lcom/zui/gallery/ui/ScreenNail;)V
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$2000(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/TileImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/TileImageView;->setScreenNail(Lcom/zui/gallery/ui/ScreenNail;)V

    .line 1119
    iput-object p1, p0, Lcom/zui/gallery/ui/PhotoView$FullPicture;->mScreenNail:Lcom/zui/gallery/ui/ScreenNail;

    return-void
.end method
