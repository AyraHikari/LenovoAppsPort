.class public interface abstract Lcom/zui/gallery/ui/PhotoView$Model;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/zui/gallery/ui/TileImageView$TileSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# static fields
.field public static final FOCUS_HINT_NEXT:I = 0x0

.field public static final FOCUS_HINT_PREVIOUS:I = 0x1

.field public static final LOADING_COMPLETE:I = 0x1

.field public static final LOADING_FAIL:I = 0x2

.field public static final LOADING_INIT:I


# virtual methods
.method public abstract cleanSelectedItem()V
.end method

.method public abstract getContinuousCount(I)I
.end method

.method public abstract getCurrentIndex()I
.end method

.method public abstract getImageRotation(I)I
.end method

.method public abstract getImageSize(ILcom/zui/gallery/ui/PhotoView$Size;)V
.end method

.method public abstract getLoadingState(I)I
.end method

.method public abstract getMediaItem(I)Lcom/zui/gallery/data/MediaItem;
.end method

.method public abstract getMult(I)I
.end method

.method public abstract getScreenNail(I)Lcom/zui/gallery/ui/ScreenNail;
.end method

.method public abstract isBestChoice(I)Z
.end method

.method public abstract isCamera(I)Z
.end method

.method public abstract isCameraVideoHDR(I)Z
.end method

.method public abstract isContinuousShot(I)Z
.end method

.method public abstract isDeletable(I)Z
.end method

.method public abstract isDepthImage(I)Z
.end method

.method public abstract isHdrPhoto(I)Z
.end method

.method public abstract isMicoVideoImage(I)Z
.end method

.method public abstract isPanoAlbum()Z
.end method

.method public abstract isPanoVideo(I)Z
.end method

.method public abstract isPanorama(I)Z
.end method

.method public abstract isSelected(I)Z
.end method

.method public abstract isSelfAlbum()Z
.end method

.method public abstract isSlowVideo(I)Z
.end method

.method public abstract isStaticCamera(I)Z
.end method

.method public abstract isVideo(I)Z
.end method

.method public abstract moveTo(I)V
.end method

.method public abstract setBestChoice(ZI)V
.end method

.method public abstract setFocusHintDirection(I)V
.end method

.method public abstract setFocusHintPath(Lcom/zui/gallery/data/Path;)V
.end method

.method public abstract setNeedFullImage(Z)V
.end method

.method public abstract setSelected(ZI)V
.end method
